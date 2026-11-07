#!/usr/bin/env python3
"""Compile and link isolated V204 pseudocode functions at original addresses."""

from __future__ import annotations

import csv
import argparse
import re
import subprocess
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent
BASE = 0x7FC0000
SOURCES = ROOT / "V204_functions/thumb_full/functions"
INDEX = ROOT / "V204_functions/thumb_full/index.tsv"
PAYLOAD = ROOT / "V204.payload.bin"
OUTPUT = ROOT / "V204_linked_c_scan.csv"
ROM_SYMBOLS = ROOT / "V204_ROM_SYMBOLS.csv"
CC_FLAGS = ["-mcpu=cortex-m0", "-mthumb", "-std=gnu89",
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
"""
ADDRESS_SYMBOL = re.compile(r"\b(?:_?DAT|PTR|UNK)_[0-9a-fA-F]+\b")
FUNCTION_SYMBOL = re.compile(r"\bFUN_([0-9a-fA-F]{8})\b")
ROM_FUNCTION_SYMBOL = re.compile(r"\bfunc_0x([0-9a-fA-F]{8})\b")
IDENTIFIER = re.compile(r"\b[A-Za-z_][A-Za-z0-9_]*\b")
COMMENT = re.compile(r"/\*.*?\*/|//[^\n]*", re.S)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--compiler", choices=("gcc", "clang-14", "clang-18"),
                        default="gcc", help="C compiler (default: gcc)")
    parser.add_argument("--toolchain-dir", type=Path,
                        help="directory containing arm-none-eabi-gcc/ld/objcopy")
    parser.add_argument("--output", type=Path, default=OUTPUT,
                        help="CSV output path (default: V204_linked_c_scan.csv)")
    parser.add_argument("--only", action="append", default=[],
                        help="scan only this function start address; may be repeated")
    parser.add_argument("--optimization", default="s",
                        help="GCC optimization level (default: s, e.g. 0, 1, 2, 3)")
    parser.add_argument("--omit-frame-pointer", action="store_true",
                        help="compile with -fomit-frame-pointer")
    parser.add_argument("--signed-char", action="store_true",
                        help="compile with -fsigned-char")
    parser.add_argument("--clobber-register", action="append", default=[],
                        help="insert empty asm clobber at function entry (e.g. r7)")
    args = parser.parse_args()
    tool = lambda name: str(args.toolchain_dir / f"arm-none-eabi-{name}") \
        if args.toolchain_dir else f"arm-none-eabi-{name}"
    compiler = (tool("gcc") if args.compiler == "gcc" else
                args.compiler)
    compiler_prefix = ([] if args.compiler == "gcc" else
                       ["--target=arm-none-eabi"])

    payload = PAYLOAD.read_bytes()
    with INDEX.open(newline="") as stream:
        rows = list(csv.DictReader(stream, delimiter="\t"))
    function_addresses = {row["name"]: int(row["address"], 16) for row in rows}
    with ROM_SYMBOLS.open(newline="") as stream:
        rom_rows = list(csv.DictReader(stream))
    rom_addresses = {row["symbol"]: int(row["address"], 16)
                     for row in rom_rows if row["symbol"]}
    candidates = []
    cc_flags = [*CC_FLAGS, f"-O{args.optimization}"]
    if args.omit_frame_pointer:
        cc_flags.append("-fomit-frame-pointer")
    if args.signed_char:
        cc_flags.append("-fsigned-char")
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
        if ADDRESS_SYMBOL.search(code):
            continue
        if args.clobber_register:
            opening = re.search(rf"\b{re.escape(row['name'])}\s*\([^)]*\)\s*\{{", code)
            if opening:
                clobbers = ", ".join(f'"{reg}"' for reg in args.clobber_register)
                code = (code[:opening.end()] +
                        f"\n  __asm__ volatile (\"\" : : : {clobbers});\n" +
                        code[opening.end():])
        callees = {f"FUN_{address.lower()}" for address in FUNCTION_SYMBOL.findall(code)}
        callees.discard(row["name"])
        rom_callees = {f"func_0x{address.lower()}"
                       for address in ROM_FUNCTION_SYMBOL.findall(code)}
        named_rom_callees = set(IDENTIFIER.findall(code)) & rom_addresses.keys()
        candidates.append((row, source, code, start, end, callees,
                           rom_callees, named_rom_callees))

    result_rows = []
    with tempfile.TemporaryDirectory(prefix="v204-linked-scan-") as directory:
        temp = Path(directory)
        for (row, source, code, start, end, callees,
             rom_callees, named_rom_callees) in candidates:
            stem = row["address"]
            c_file, obj_file = temp / f"{stem}.c", temp / f"{stem}.o"
            elf_file = temp / f"{stem}.elf"
            linker_script = temp / f"{stem}.ld"
            c_file.write_text(PREAMBLE + code)
            build = subprocess.run([compiler, *compiler_prefix, *cc_flags, "-c",
                                    str(c_file), "-o", str(obj_file)],
                                   capture_output=True, text=True)
            target = payload[start-BASE:end-BASE+1]
            if build.returncode:
                diagnostic = next((line.strip() for line in build.stderr.splitlines()
                                   if "error:" in line), "compiler failed")
                result_rows.append((f"0x{start:08x}", row["name"], len(target),
                                    "compile-error", "", target.hex(), "", diagnostic,
                                    source.name))
                continue

            defs = [f"--defsym={name}=0x{function_addresses[name]:x}"
                    for name in sorted(callees) if name in function_addresses]
            defs.extend(f"--defsym={name}=0x{int(address, 16):x}"
                        for name in sorted(rom_callees)
                        for address in re.findall(r"[0-9a-f]{8}", name))
            defs.extend(f"--defsym={name}=0x{rom_addresses[name]:x}"
                        for name in sorted(named_rom_callees))
            # The default ARM linker script aligns the output .text section to
            # four bytes. V204 functions can begin at addresses congruent to 2
            # mod 4, so that default inserts a leading halfword and shifts
            # Thumb BL displacements. Discard Clang's empty .text input section
            # (which has 4-byte alignment) and place function sections exactly
            # at their recovered 2-byte addresses.
            linker_script.write_text(
                "SECTIONS {\n"
                f"  . = 0x{start:x};\n"
                "  .text ALIGN(2) : SUBALIGN(2) { *(.text.*) }\n"
                "  /DISCARD/ : { *(.text) }\n"
                "  .ARM.exidx : { *(.ARM.exidx*) }\n"
                "}\n")
            link = subprocess.run([tool("ld"), "-T", str(linker_script),
                                   f"--entry={row['name']}", *defs,
                                   str(obj_file), "-o", str(elf_file)],
                                  capture_output=True, text=True)
            if link.returncode:
                diagnostic = next((line.strip() for line in link.stderr.splitlines()
                                   if "undefined reference" in line),
                                  link.stderr.strip().replace("\n", " | ")[:500]
                                  if link.stderr.strip() else "link failed")
                result_rows.append((f"0x{start:08x}", row["name"], len(target),
                                    "link-error", "", target.hex(), "", diagnostic,
                                    source.name))
                continue

            section = temp / f"{stem}.bin"
            extract = subprocess.run([tool("objcopy"), "-O", "binary", "-j", ".text",
                                      str(elf_file), str(section)],
                                     capture_output=True)
            if extract.returncode or not section.exists():
                sections = subprocess.run([tool("objdump"), "-h", str(elf_file)],
                                           capture_output=True, text=True)
                names = re.findall(r"^\s*\d+\s+(\S+)", sections.stdout,
                                   flags=re.M)
                result_rows.append((f"0x{start:08x}", row["name"], len(target),
                                    "section-missing", "", target.hex(), "",
                                    "output sections: " + ",".join(names), source.name))
                continue
            emitted = section.read_bytes()
            exact = emitted == target
            distance = sum((left ^ right).bit_count()
                           for left, right in zip(emitted, target))
            if len(emitted) != len(target):
                distance = -1
            result_rows.append((f"0x{start:08x}", row["name"], len(target),
                                "exact" if exact else "mismatch", emitted.hex(),
                                target.hex(), distance, "", source.name))

    with args.output.open("w", newline="") as stream:
        writer = csv.writer(stream)
        writer.writerow(("address", "function", "target_size", "status",
                         "compiled_hex", "target_hex", "bit_distance",
                         "diagnostic", "source_file"))
        writer.writerows(result_rows)
    statuses = ("exact", "mismatch", "compile-error", "link-error", "section-missing")
    counts = {state: sum(row[3] == state for row in result_rows) for state in statuses}
    print(f"Scanned {len(result_rows)} functions: {counts}. Details: {args.output.name}")
    near = [row for row in result_rows if row[3] == "mismatch" and row[6] >= 0]
    near.sort(key=lambda row: (row[6], row[2]))
    for row in near[:25]:
        print(f"{row[0]} {row[1]}: {row[6]} differing bits, "
              f"{row[2]} target bytes; emitted={row[4]} target={row[5]}")


if __name__ == "__main__":
    main()
