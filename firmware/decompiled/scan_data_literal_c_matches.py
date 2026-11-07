#!/usr/bin/env python3
"""Try compile/link matches for C functions using payload-backed DAT literals."""

from __future__ import annotations

import argparse
import csv
import itertools
import re
import subprocess
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent
BASE = 0x7FC0000
SOURCES = ROOT / "V204_functions/thumb_full/functions"
INDEX = ROOT / "V204_functions/thumb_full/index.tsv"
PAYLOAD_FILE = ROOT / "V204.payload.bin"
ROM_SYMBOLS = ROOT / "V204_ROM_SYMBOLS.csv"
OUTPUT = ROOT / "V204_data_literal_c_scan.csv"
FLAGS = ["-mcpu=cortex-m0", "-mthumb", "-std=gnu89",
         "-ffreestanding", "-fno-builtin", "-ffunction-sections",
         "-fdata-sections", "-w"]
PREAMBLE = """#include <stdint.h>
#include <stdbool.h>
typedef uint32_t uint;
typedef uint8_t undefined1;
typedef uint16_t undefined2;
typedef uint32_t undefined4;
typedef uint64_t undefined8;
typedef void code();
typedef uint8_t byte;
typedef uint16_t ushort;
typedef unsigned long ulong;
typedef unsigned long long ulonglong;
typedef long long longlong;
#define CONCAT44(high, low) ((((uint64_t)(high)) << 32) | (uint32_t)(low))
#define DataSynchronizationBarrier(x) __asm__ volatile ("dsb sy" ::: "memory")
#define InstructionSynchronizationBarrier(x) __asm__ volatile ("isb sy" ::: "memory")
#define enableIRQinterrupts() __asm__ volatile ("cpsie i" ::: "memory")
"""
DATA_SYMBOL = re.compile(r"\b(_?DAT)_([0-9a-fA-F]{8})\b")
STRING_SYMBOL = re.compile(r"\b(s_[A-Za-z0-9_]*?_(0[0-9a-fA-F]{7}))\b")
PC_RAM_SYMBOL = re.compile(r"\bpcRam_?([0-9a-fA-F]{8})\b")
POINTER_DEREFERENCE = re.compile(r"\*\s*(_?DAT_[0-9a-fA-F]{8})\b")
POINTER_LOCAL_DECLARATION = re.compile(
    r"\b(undefined[124]|u?char|u?short|u?int|byte|ushort|uint|int)\s*\*\s*(\w+)\b")
FUNCTION_SYMBOL = re.compile(r"\bFUN_([0-9a-fA-F]{8})\b")
ROM_FUNCTION_SYMBOL = re.compile(r"\bfunc_0x([0-9a-fA-F]{8})\b")
IDENTIFIER = re.compile(r"\b[A-Za-z_][A-Za-z0-9_]*\b")
COMMENT = re.compile(r"/\*.*?\*/|//[^\n]*", re.S)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--compiler", choices=("gcc", "clang-14", "clang-18"),
                        default="gcc")
    parser.add_argument("--toolchain-dir", type=Path,
                        help="directory containing arm-none-eabi-gcc/ld/objcopy")
    parser.add_argument("--optimization", default="s",
                        help="compiler optimization level (default: s)")
    parser.add_argument("--omit-frame-pointer", action="store_true")
    parser.add_argument("--output", type=Path, default=OUTPUT)
    parser.add_argument("--only", action="append", default=[])
    parser.add_argument("--max-pointer-globals", type=int, default=2)
    parser.add_argument("--clobber-register", action="append", default=[])
    parser.add_argument("--infer-pointer-widths", action="store_true",
                        help="infer byte pointers, scalar constants, and pointer loads")
    parser.add_argument("--include-scalar-globals", action="store_true",
                        help="also test scalar-literal replacements for _DAT globals")
    parser.add_argument("--pointer-width", action="append", default=[],
                        metavar="SYMBOL=WIDTH",
                        help="override one inferred pointer width (scalar, 1, 2, or 4)")
    parser.add_argument("--cast-pointer-stores", action="store_true",
                        help="cast Ghidra pointer-to-uint32 stores through uintptr_t")
    parser.add_argument("--payload-globals-as-storage", action="store_true",
                        help="model payload DAT symbols as typed read-only objects at their image addresses")
    parser.add_argument("--capture-r1-after-call", action="append", default=[],
                        metavar="FUNCTION",
                        help="bind extraout_r1 to r1 and capture it after this nonstandard ABI call")
    parser.add_argument("--preserve-generated-c-to", type=Path,
                        help="save generated C for exact matches in this directory")
    parser.add_argument("--preserve-best-candidates-to", type=Path,
                        help="save best C and binary, including non-exact results")
    args = parser.parse_args()
    width_overrides = {}
    for item in args.pointer_width:
        symbol, separator, raw_width = item.partition("=")
        if not separator or not symbol:
            parser.error(f"invalid --pointer-width {item!r}; expected SYMBOL=WIDTH")
        try:
            width_overrides[symbol] = {"scalar": 0, "1": 1, "2": 2, "4": 4}[raw_width]
        except KeyError:
            parser.error(f"invalid pointer width {raw_width!r}; use scalar, 1, 2, or 4")
    tool = lambda name: str(args.toolchain_dir / f"arm-none-eabi-{name}") \
        if args.toolchain_dir else f"arm-none-eabi-{name}"
    compiler = (tool("gcc") if args.compiler == "gcc" else args.compiler)
    linker = tool("ld")
    objcopy = tool("objcopy")
    compiler_prefix = ([] if args.compiler == "gcc"
                       else ["--target=arm-none-eabi"])
    compile_flags = [*FLAGS, f"-O{args.optimization}"]
    if args.omit_frame_pointer:
        compile_flags.append("-fomit-frame-pointer")
    payload = PAYLOAD_FILE.read_bytes()
    with INDEX.open(newline="") as stream:
        rows = list(csv.DictReader(stream, delimiter="\t"))
    function_addresses = {row["name"]: int(row["address"], 16) for row in rows}
    with ROM_SYMBOLS.open(newline="") as stream:
        rom_rows = list(csv.DictReader(stream))
    rom_addresses = {row["symbol"]: int(row["address"], 16)
                     for row in rom_rows if row["symbol"]}

    candidates = []
    for row in rows:
        if args.only and row["address"].lower() not in {
                value.lower().removeprefix("0x") for value in args.only}:
            continue
        ranges = row["ranges"].split(",")
        if len(ranges) != 1:
            continue
        start, end = (int(value, 16) for value in ranges[0].split("-"))
        source = SOURCES / f"{row['address']}.c"
        if not source.exists():
            continue
        code = COMMENT.sub("", source.read_text(errors="replace"))
        # Ghidra models a partial 32-bit stack value as a synthetic struct
        # member; recover the actual high-three-byte/low-byte concatenation.
        code = re.sub(
            r"\bCONCAT31\((\w+)\._1_3_,\s*([^)]+)\)",
            r"((\1 & 0xffffff00u) | (uint8_t)(\2))", code)
        for function in args.capture_r1_after_call:
            if "extraout_r1" not in code:
                continue
            code = re.sub(
                r"\b(?:uint|undefined4|uint32_t)\s+extraout_r1\s*;",
                'register uint extraout_r1 __asm__("r1");', code)
            code, replacements = re.subn(
                rf"(\b{re.escape(function)}\s*\([^;]*\);)",
                r'\1\n  __asm__ volatile ("" : "=r"(extraout_r1));', code,
                count=1)
            if replacements != 1:
                print(f"warning: could not place r1 capture after {function} "
                      f"in {source.name}")
        # Ghidra names strings with their payload address. Turn those names
        # into stable address constants so their callers compile without a
        # separately recovered C declaration.
        for name, address_text in set(STRING_SYMBOL.findall(code)):
            code = re.sub(
                rf"\b{re.escape(name)}\b",
                f"((const char *)(uintptr_t)0x{address_text}u)", code)
        for address_text in set(PC_RAM_SYMBOL.findall(code)):
            code = re.sub(
                rf"\bpcRam_?{address_text}\b",
                f"((code *)(uintptr_t)0x{address_text}u)", code)
        if args.cast_pointer_stores:
            # Ghidra often represents a 32-bit pointer field as `undefined4`
            # and then assigns a `undefined1 *`; make the ABI-width conversion
            # explicit so Clang accepts the recovered operation.
            pointer_words = set(re.findall(r"\bundefined4\s*\*\s*(\w+)\s*;", code))
            pointer_values = set(re.findall(r"\bundefined(?:1|2|4)\s*\*\s*(\w+)\s*;", code))
            for lhs in pointer_words:
                for rhs in pointer_values:
                    code = re.sub(rf"(\*\s*{re.escape(lhs)}\s*=\s*)"
                                  rf"{re.escape(rhs)}\s*;",
                                  rf"\1(undefined4)(uintptr_t){rhs};", code)
        if args.clobber_register:
            opening = re.search(rf"\b{re.escape(row['name'])}\s*\([^)]*\)\s*\{{", code)
            if opening:
                clobbers = ", ".join(f'"{reg}"' for reg in args.clobber_register)
                code = (code[:opening.end()] +
                        f"\n  __asm__ volatile (\"\" : : : {clobbers});\n" +
                        code[opening.end():])
        symbols = sorted(set(DATA_SYMBOL.findall(code)))
        if not symbols:
            continue
        pointer_names = set(POINTER_DEREFERENCE.findall(code))
        pointer_local_widths = {}
        type_width = {"undefined1": 1, "char": 1, "uchar": 1, "byte": 1,
                      "undefined2": 2, "short": 2, "ushort": 2,
                      "undefined4": 4, "int": 4, "uint": 4}
        for local_type, local in POINTER_LOCAL_DECLARATION.findall(code):
            assigned_symbols = re.findall(
                rf"\b{re.escape(local)}\s*=\s*(_?DAT_[0-9a-fA-F]{{8}})\b", code)
            for symbol in assigned_symbols:
                pointer_names.add(symbol)
                width = type_width.get(local_type)
                if width:
                    pointer_local_widths.setdefault(symbol, set()).add(width)
        # Unprefixed DAT names often hold address constants passed directly to
        # helpers or used as array bases. Count those as pointer globals too.
        for kind, address_text in symbols:
            if kind.startswith("_"):
                continue
            global_address = int(address_text, 16)
            offset = global_address - BASE
            if offset < 0 or offset + 4 > len(payload):
                continue
            value = int.from_bytes(payload[offset:offset+4], "little")
            if (0x07F00000 <= value <= 0x07FFFFFF or
                    0x20000000 <= value <= 0x200FFFFF or
                    0x40000000 <= value <= 0x5FFFFFFF or
                    0xE0000000 <= value <= 0xE00FFFFF):
                pointer_names.add(f"{kind}_{address_text}")
        pointer_names.update(f"{kind}_{address}" for kind, address in symbols
                             if kind.startswith("_"))
        if len(pointer_names) > args.max_pointer_globals:
            continue
        pointer_names = sorted(pointer_names)
        callees = {f"FUN_{address.lower()}" for address in FUNCTION_SYMBOL.findall(code)}
        callees.discard(row["name"])
        rom_callees = {f"func_0x{address.lower()}"
                       for address in ROM_FUNCTION_SYMBOL.findall(code)}
        named_rom_callees = set(IDENTIFIER.findall(code)) & rom_addresses.keys()
        candidates.append((row, source, code, start, end, symbols,
            pointer_names, pointer_local_widths, callees, rom_callees,
            named_rom_callees))

    results = []
    with tempfile.TemporaryDirectory(prefix="v204-data-literals-") as directory:
        temp = Path(directory)
        for (row, source, code, start, end, symbols, pointer_names,
             pointer_local_widths, callees, rom_callees,
             named_rom_callees) in candidates:
            value_by_symbol = {}
            direct_mmio = set()
            invalid = None
            for kind, address_text in symbols:
                address = int(address_text, 16)
                offset = address - BASE
                if offset < 0 or offset + 4 > len(payload):
                    # Ghidra names direct memory-mapped registers with their
                    # actual bus address (for example _DAT_50000000). They
                    # are lvalues, not constants stored in the firmware image.
                    if kind.startswith("_") and address & 0xF0000000 in (
                            0x40000000, 0x50000000):
                        symbol = f"{kind}_{address_text}"
                        value_by_symbol[symbol] = address
                        direct_mmio.add(symbol)
                        continue
                    invalid = f"DAT address outside payload: 0x{address:08x}"
                    break
                value_by_symbol[f"{kind}_{address_text}"] = int.from_bytes(
                    payload[offset:offset+4], "little")
            target_range = payload[start-BASE:end-BASE+1]
            if invalid:
                results.append((f"0x{start:08x}", row["name"], len(target_range),
                                0, "invalid-data-address", "", "", "", invalid,
                                source.name))
                continue

            # Taking the address of a Ghidra DAT global means the address of
            # the object in the image, not the address of its loaded value.
            # Replace the common call-argument/initializer forms before the
            # DAT macros below substitute those values. In particular this
            # preserves flash-backed tables passed to ROM helpers.
            for kind, address_text in symbols:
                symbol = f"{kind}_{address_text}"
                code = re.sub(
                    rf"([,(=]\s*)&\s*{re.escape(symbol)}\b",
                    rf"\1((void *)(uintptr_t)0x{address_text}u)", code)

            # DAT globals can contain pointers into peripheral space. Such
            # accesses must remain volatile even though Ghidra's recovered
            # pointer-local declarations omit the qualifier.
            mmio_value_symbols = {
                symbol for symbol, value in value_by_symbol.items()
                if value & 0xF0000000 in (0x40000000, 0x50000000)
            }
            for local_type, local in POINTER_LOCAL_DECLARATION.findall(code):
                assigned = re.findall(
                    rf"\b{re.escape(local)}\s*=\s*(_?DAT_[0-9a-fA-F]{{8}})\b",
                    code)
                if set(assigned) & mmio_value_symbols:
                    code = re.sub(
                        rf"\b{re.escape(local_type)}\s*\*\s*"
                        rf"{re.escape(local)}\b",
                        f"volatile {local_type} *{local}", code)

            best = None
            if args.infer_pointer_widths:
                width_options = []
                for symbol in pointer_names:
                    if symbol in width_overrides:
                        options = (width_overrides[symbol],)
                    elif symbol in direct_mmio:
                        options = (1, 2, 4)
                    elif len(pointer_local_widths.get(symbol, ())) == 1:
                        options = tuple(pointer_local_widths[symbol])
                    elif not symbol.startswith("_"):
                        escaped = re.escape(symbol)
                        is_explicit_load = (
                            re.search(rf"\*\s*{escaped}\b", code) or
                            re.search(rf"\b{escaped}\s*\[", code))
                        # Unprefixed DAT globals are commonly integer address
                        # constants later cast to pointers. Infer a C pointer
                        # only when the expression directly dereferences or
                        # indexes the global, or when the typed-local evidence
                        # above already identified it as a pointer.
                        options = (1, 2, 4) if is_explicit_load else (0,)
                    else:
                        escaped = re.escape(symbol)
                        is_explicit_load = re.search(rf"\*\s*{escaped}\b", code)
                        if is_explicit_load:
                            options = (1, 2, 4)
                        else:
                            # Ghidra emits these global *values* as integers.
                            # Cast the constant at an explicit dereference;
                            # otherwise retain integer arithmetic and let an
                            # enclosing cast provide the access type.
                            options = (0, 1)
                    width_options.append(options)
                width_sets = itertools.product(*width_options)
            else:
                width_options = [
                    ((width_overrides[symbol],) if symbol in width_overrides else
                     (1, 2, 4) if symbol in direct_mmio else
                     (0, 1, 2, 4) if args.include_scalar_globals
                     else (1, 2, 4))
                    for symbol in pointer_names]
                width_sets = itertools.product(*width_options)
            for widths in width_sets:
                width_by_name = dict(zip(pointer_names, widths))
                macros = []
                for symbol, value in value_by_symbol.items():
                    if symbol in width_by_name:
                        width = width_by_name[symbol]
                        if width == 0:
                            if args.payload_globals_as_storage and symbol not in direct_mmio:
                                address = int(symbol.rsplit("_", 1)[1], 16)
                                replacement = (f"(*((const uint32_t *)(uintptr_t)"
                                               f"0x{address:08x}u))")
                            else:
                                replacement = f"(0x{value:08x}u)"
                        else:
                            macro_type = {1: "uint8_t", 2: "uint16_t", 4: "uint32_t"}[
                                width]
                        if width != 0 and symbol in direct_mmio:
                            replacement = (f"(*((volatile {macro_type} *)(uintptr_t)"
                                           f"0x{value:08x}u))")
                        elif width != 0:
                            if args.payload_globals_as_storage:
                                address = int(symbol.rsplit("_", 1)[1], 16)
                                volatile = ("volatile " if
                                    symbol in mmio_value_symbols else "")
                                replacement = (
                                    f"(*(({volatile}{macro_type} * const *)"
                                    f"(uintptr_t)0x{address:08x}u))")
                            else:
                                volatile = ("volatile " if
                                    symbol in mmio_value_symbols else "")
                                replacement = (f"(({volatile}{macro_type}*)"
                                               f"0x{value:08x}u)")
                    else:
                        if args.payload_globals_as_storage and symbol not in direct_mmio:
                            address = int(symbol.rsplit("_", 1)[1], 16)
                            replacement = (f"(*((const uint32_t *)(uintptr_t)"
                                           f"0x{address:08x}u))")
                        else:
                            replacement = f"(0x{value:08x}u)"
                    macros.append(f"#define {symbol} {replacement}")

                stem = row["address"]
                variant = "-".join(str(width_by_name[name])
                                    for name in pointer_names) or "scalar"
                c_file = temp / f"{stem}-{variant}.c"
                obj_file = temp / f"{stem}-{variant}.o"
                elf_file = temp / f"{stem}-{variant}.elf"
                section = temp / f"{stem}-{variant}.bin"
                c_file.write_text(PREAMBLE + "\n".join(macros) + "\n" + code)
                build = subprocess.run([compiler, *compiler_prefix,
                                        *compile_flags, "-c",
                                        str(c_file), "-o", str(obj_file)],
                                       capture_output=True, text=True)
                if build.returncode:
                    diagnostic = next((line.strip() for line in build.stderr.splitlines()
                                       if "error:" in line), "compiler failed")
                    if best is None:
                        best = ("compile-error", "", diagnostic, variant, -1)
                    continue

                defs = [f"--defsym={name}=0x{function_addresses[name]:x}"
                        for name in sorted(callees) if name in function_addresses]
                defs.extend(f"--defsym={name}=0x{int(address, 16):x}"
                            for name in sorted(rom_callees)
                            for address in ROM_FUNCTION_SYMBOL.findall(name))
                defs.extend(f"--defsym={name}=0x{rom_addresses[name]:x}"
                            for name in sorted(named_rom_callees))
                link = subprocess.run([linker, f"-Ttext=0x{start:x}",
                                       f"--entry={row['name']}", *defs,
                                       str(obj_file), "-o", str(elf_file)],
                                      capture_output=True, text=True)
                if link.returncode:
                    diagnostic = link.stderr.strip().replace("\n", " | ")[:500]
                    if best is None:
                        best = ("link-error", "", diagnostic, variant, -1)
                    continue
                extract = subprocess.run([objcopy, "-O", "binary",
                                          "-j", ".text", str(elf_file), str(section)],
                                         capture_output=True)
                if extract.returncode or not section.exists():
                    if best is None:
                        best = ("section-missing", "", "", variant, -1)
                    continue
                emitted = section.read_bytes()
                expected = payload[start-BASE:start-BASE+len(emitted)]
                exact = emitted == expected and len(emitted) >= len(target_range)
                distance = (sum((left ^ right).bit_count()
                                for left, right in zip(emitted, expected))
                            if len(emitted) == len(expected) else -1)
                candidate = ("exact" if exact else "mismatch", emitted.hex(), "",
                             variant, distance)
                if exact:
                    best = candidate
                    if args.preserve_generated_c_to:
                        args.preserve_generated_c_to.mkdir(parents=True, exist_ok=True)
                        (args.preserve_generated_c_to / f"{stem}.c").write_text(
                            c_file.read_text())
                    break
                if (best is None or best[0] in {"compile-error", "link-error",
                                                "section-missing"} or
                        (distance >= 0 and (best[4] < 0 or distance < best[4]))):
                    best = candidate

            status, emitted_hex, diagnostic, variant, distance = best or (
                "not-compiled", "", "no variants", "", -1)
            if args.preserve_best_candidates_to and emitted_hex:
                args.preserve_best_candidates_to.mkdir(parents=True, exist_ok=True)
                stem_path = args.preserve_best_candidates_to / stem
                (stem_path.with_suffix(".c")).write_text(
                    (temp / f"{stem}-{variant}.c").read_text())
                (stem_path.with_suffix(".bin")).write_bytes(
                    bytes.fromhex(emitted_hex))
                (stem_path.with_suffix(".txt")).write_text(
                    f"status={status}\nwidths={variant}\nbit_distance={distance}\n")
            results.append((f"0x{start:08x}", row["name"], len(target_range),
                            len(pointer_names), status, variant, emitted_hex,
                            payload[start-BASE:start-BASE+len(bytes.fromhex(emitted_hex))].hex()
                            if emitted_hex else "", distance, diagnostic, source.name))

    with args.output.open("w", newline="") as stream:
        writer = csv.writer(stream)
        writer.writerow(("address", "function", "range_size", "pointer_globals",
                         "status", "pointer_widths", "compiled_hex", "payload_hex",
                         "bit_distance", "diagnostic", "source_file"))
        writer.writerows(results)
    from collections import Counter
    counts = Counter(row[4] for row in results)
    print(f"Scanned {len(results)} data-referencing functions: {dict(counts)}. "
          f"Details: {args.output.name}")
    for row in results:
        if row[4] == "exact":
            print(f"{row[0]} {row[1]} exact ({row[5] or 'scalar'}, "
                  f"{len(bytes.fromhex(row[6]))} bytes)")


if __name__ == "__main__":
    main()
