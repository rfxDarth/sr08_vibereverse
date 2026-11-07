#!/usr/bin/env python3
"""Compile one V204 multi-range decompiler function at its firmware address.

This is an exploratory compiler/source-shape probe. DAT_* literal words are
materialized as C constants using manually checked pointer/scalar types; a
result is not an original-source or full-image reconstruction.
"""

from __future__ import annotations

import argparse
import csv
import re
import struct
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent
BASE = 0x07FC0000
ADDRESS_SYMBOL = re.compile(r"\b(?:DAT|PTR|UNK)_([0-9a-fA-F]{8})\b")
FUNCTION_SYMBOL = re.compile(r"\bFUN_([0-9a-fA-F]{8})\b")
ROM_SYMBOL = re.compile(r"\bfunc_0x([0-9a-fA-F]{8})\b")
COMMENT = re.compile(r"/\*.*?\*/|//[^\n]*", re.S)

PREAMBLE = """#include <stdint.h>
#include <stdbool.h>
typedef uint32_t uint;
typedef uint8_t undefined1;
typedef uint16_t undefined2;
typedef uint32_t undefined4;
typedef uint64_t undefined8;
typedef uint8_t byte;
typedef uint16_t ushort;
typedef unsigned long ulong;
typedef unsigned long long ulonglong;
typedef long long longlong;
extern uint64_t __aeabi_uidivmod(uint32_t, uint32_t);
extern int64_t __aeabi_idivmod(int32_t, int32_t);
#define UDIVREM(a, b) ((uint32_t)((uint64_t)__aeabi_uidivmod((a), (b)) >> 32))
#define IDIVREM(a, b) ((int32_t)((uint64_t)__aeabi_idivmod((a), (b)) >> 32))
"""

# The declarations follow pointer arithmetic and use sites in this function's
# Ghidra output. Unlisted values are emitted as 32-bit scalar constants.
POINTER_TYPES = {
    "07fce17c": "char *",
    "07fce180": "int *",
    "07fce190": "char *",
}


def restore_eabi_remainders(source: str, mode: str) -> str:
    """Replace Ghidra's extraout_r1 after EABI divmod calls with C remainder."""
    replacements = [
        ("      func_0x07f1dfb8(*(uint *)(iVar25 + 4),0x19);\n"
         "      if (extraout_r1_01 == 0) {",
         "      if ((*(uint *)(iVar25 + 4) % 0x19) == 0) {"),
        ("(func_0x07f1dfb8(*(uint *)(iVar26 + 4),0x19), extraout_r1_02 == 0)",
         "((*(uint *)(iVar26 + 4) % 0x19) == 0)"),
        ("  func_0x07f1dfb8(uVar11,0x19);\n"
         "  if (((extraout_r1_03 == 0) &&",
         "  if ((((uVar11 % 0x19) == 0) &&"),
        ("  func_0x07f1dfb8(uVar11,0x19);\n"
         "  if (extraout_r1_04 != 0) goto LAB_07fcebb6;",
         "  if ((uVar11 % 0x19) != 0) goto LAB_07fcebb6;"),
        ("    func_0x07f1dfb8(uVar11,0x96);\n"
         "    if (extraout_r1_05 == 0) {",
         "    if ((uVar11 % 0x96) == 0) {"),
        ("    if (extraout_r1_05 != 0) {",
         "    if ((uVar11 % 0x96) != 0) {"),
        ("          func_0x07f1dfe4(param_1,3);\n"
         "          *(char *)(iVar25 + 8) = extraout_r1_00 + 'c';",
         "          *(char *)(iVar25 + 8) = (param_1 % 3) + 'c';"),
        ("        func_0x07f1dfe4(param_1,3);\n"
         "        *(char *)(iVar25 + 8) = 'c' - extraout_r1;",
         "        *(char *)(iVar25 + 8) = 'c' - (param_1 % 3);"),
    ]
    for before, after in replacements:
        if before not in source:
            raise ValueError(f"could not locate divmod sequence: {before!r}")
        source = source.replace(before, after, 1)
    if mode == "eabi-call":
        for before, after in (
                ("(*(uint *)(iVar25 + 4) % 0x19)",
                 "UDIVREM(*(uint *)(iVar25 + 4),0x19)"),
                ("(*(uint *)(iVar26 + 4) % 0x19)",
                 "UDIVREM(*(uint *)(iVar26 + 4),0x19)"),
                ("(uVar11 % 0x19)", "UDIVREM(uVar11,0x19)"),
                ("(uVar11 % 0x96)", "UDIVREM(uVar11,0x96)"),
                ("(param_1 % 3)", "IDIVREM(param_1,3)")):
            source = source.replace(before, after)
    source = re.sub(r"^\s*(?:char|int)\s+extraout_r1(?:_[0-9]+)?;\s*$",
                    "", source, flags=re.M)
    leftovers = sorted(set(re.findall(r"extraout_r1(?:_[0-9]+)?", source)))
    if leftovers:
        raise ValueError(f"unresolved division outputs: {leftovers}")
    return source


def index_rows(version: str):
    path = ROOT / f"{version}_functions/thumb_full/index.tsv"
    with path.open(newline="") as stream:
        return list(csv.DictReader(stream, delimiter="\t"))


def ranges_for(row: dict[str, str]) -> list[tuple[int, int]]:
    return [tuple(int(value, 16) for value in item.split("-"))
            for item in row["ranges"].split(",") if item]


def overlap_metrics(emitted: bytes, target: bytes) -> tuple[int, int, int]:
    overlap = min(len(emitted), len(target))
    equal = 0
    bits = 0
    longest = current = 0
    for left, right in zip(emitted[:overlap], target[:overlap]):
        if left == right:
            equal += 1
            current += 1
            longest = max(longest, current)
        else:
            current = 0
            bits += (left ^ right).bit_count()
    return equal, bits, longest


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--compiler", choices=("gcc", "gcc49", "clang-14", "clang-18"),
                        action="append", default=[])
    parser.add_argument("--optimization", choices=("0", "1", "2", "3", "s", "z"),
                        default="s")
    parser.add_argument("--division-mode", choices=("percent", "eabi-call"),
                        default="percent")
    parser.add_argument("--function", default="07fcdd68")
    args = parser.parse_args()
    compilers = args.compiler or ["gcc", "clang-18"]

    entry = args.function.lower().removeprefix("0x")
    rows = index_rows("V204")
    row = next(item for item in rows if item["address"].lower() == entry)
    spans = ranges_for(row)
    start = spans[0][0]
    end = spans[-1][1]
    payload = (ROOT / "V204.payload.bin").read_bytes()
    # Ghidra reports this function in disjoint code ranges. Exclude the 82
    # inter-range bytes, which belong to adjacent data/code, when scoring the
    # candidate function body.
    target = b"".join(payload[left - BASE:right - BASE + 1]
                     for left, right in spans)

    source = COMMENT.sub("", (ROOT / f"V204_functions/thumb_full/functions/{entry}.c")
                         .read_text(errors="replace"))
    if entry == "07fcdd68":
        source = restore_eabi_remainders(source, args.division_mode)
        source = source.replace("  int local_3c;\n",
                                "  int local_3c;\n  undefined4 stack0x0000000c;\n")
    dat_values: dict[str, int] = {}
    for match in sorted(set(ADDRESS_SYMBOL.findall(source))):
        address = int(match, 16)
        offset = address - BASE
        if not 0 <= offset <= len(payload) - 4:
            raise SystemExit(f"DAT symbol 0x{address:08x} is outside the payload")
        dat_values[match.lower()] = struct.unpack_from("<I", payload, offset)[0]
    defines = []
    for symbol, value in dat_values.items():
        c_name = f"DAT_{symbol}"
        c_type = POINTER_TYPES.get(symbol)
        if c_type:
            defines.append(f"#define {c_name} (({c_type})(uintptr_t)0x{value:08x}u)")
        else:
            defines.append(f"#define {c_name} ((uint32_t)0x{value:08x}u)")

    generated = PREAMBLE + "\n".join(defines) + "\n" + source
    out_dir = ROOT / "compiler_probes" / f"multirange_{entry}"
    out_dir.mkdir(parents=True, exist_ok=True)
    (out_dir / f"{entry}_generated_{args.division_mode}.c").write_text(generated)
    (out_dir / f"{entry}_target.bin").write_bytes(target)

    function_addresses = {item["name"]: int(item["address"], 16) for item in rows}
    callees = {f"FUN_{address.lower()}" for address in FUNCTION_SYMBOL.findall(source)}
    callees.discard(row["name"])
    rom = {f"func_0x{address.lower()}" for address in ROM_SYMBOL.findall(source)}

    with __import__("tempfile").TemporaryDirectory(prefix="v204-multirange-probe-") as temp_name:
        temp = Path(temp_name)
        c_file = temp / f"{entry}.c"
        obj = temp / f"{entry}.o"
        elf = temp / f"{entry}.elf"
        c_file.write_text(generated)
        result_rows = []
        for compiler in compilers:
            old_toolchain = Path("/tmp/sr08-gcc49/gcc-arm-none-eabi-4_9-2015q1/bin")
            if compiler == "gcc49":
                compiler_cmd = [str(old_toolchain / "arm-none-eabi-gcc")]
                linker = str(old_toolchain / "arm-none-eabi-ld")
                objcopy = str(old_toolchain / "arm-none-eabi-objcopy")
            else:
                compiler_cmd = (["arm-none-eabi-gcc"] if compiler == "gcc"
                                else [compiler, "--target=arm-none-eabi"])
                linker = "arm-none-eabi-ld"
                objcopy = "arm-none-eabi-objcopy"
            build_cmd = [*compiler_cmd, "-mcpu=cortex-m0", "-mthumb",
                         "-std=gnu89", f"-O{args.optimization}",
                         "-ffreestanding", "-fno-builtin",
                         "-w", "-c", str(c_file), "-o", str(obj)]
            build = subprocess.run(build_cmd, capture_output=True, text=True)
            if build.returncode:
                first_error = next((line.strip() for line in build.stderr.splitlines()
                                    if "error:" in line), build.stderr.strip()[:500])
                print(f"{compiler}: compile error: {first_error}")
                result_rows.append((compiler, "compile-error", 0, len(target), -1,
                                    0, 0, first_error))
                continue

            defs = [f"--defsym={name}=0x{function_addresses[name]:x}"
                    for name in sorted(callees) if name in function_addresses]
            defs.extend(f"--defsym={name}=0x{int(address, 16):x}"
                        for name in sorted(rom)
                        for address in re.findall(r"[0-9a-f]{8}", name))
            with (ROOT / "V204_ROM_SYMBOLS.csv").open(newline="") as symbol_stream:
                for symbol_row in csv.DictReader(symbol_stream):
                    aliases = [symbol_row["symbol"], *symbol_row["aliases"].split(",")]
                    for alias in aliases:
                        if alias in ("__aeabi_uidivmod", "__aeabi_idivmod"):
                            defs.append(f"--defsym={alias}={symbol_row['address']}")
            link = subprocess.run([linker, f"-Ttext=0x{start:x}",
                                   f"--entry={row['name']}", *defs,
                                   str(obj), "-o", str(elf)],
                                  capture_output=True, text=True)
            if link.returncode:
                detail = link.stderr.strip().replace("\n", " | ")[:500]
                print(f"{compiler}: link error: {detail}")
                result_rows.append((compiler, "link-error", 0, len(target), -1,
                                    0, 0, detail))
                continue

            binary = out_dir / (f"{entry}_{compiler}_O{args.optimization}_"
                                f"{args.division_mode}.bin")
            extract = subprocess.run([objcopy, "-O", "binary",
                                      "-j", ".text", str(elf), str(binary)],
                                     capture_output=True, text=True)
            if extract.returncode:
                detail = extract.stderr.strip()[:500]
                print(f"{compiler}: extraction error: {detail}")
                result_rows.append((compiler, "extract-error", 0, len(target), -1,
                                    0, 0, detail))
                continue

            emitted = binary.read_bytes()
            equal, distance, longest = overlap_metrics(emitted, target)
            status = ("exact" if emitted == target else
                      "mismatch" if len(emitted) == len(target) else
                      "length-mismatch")
            print(f"{compiler}: {status}, emitted {len(emitted)}, target {len(target)}, "
                  f"equal bytes in overlap {equal}, differing overlap bits {distance}, "
                  f"longest exact run {longest}")
            result_rows.append((compiler, status, len(emitted), len(target), distance,
                                equal, longest, binary.name))

        for compiler_name in dict.fromkeys(result[0] for result in result_rows):
            with (out_dir / (f"results_{compiler_name}_O{args.optimization}_"
                             f"{args.division_mode}.csv")).open(
                    "w", newline="") as stream:
                writer = csv.writer(stream)
                writer.writerow(("compiler", "status", "emitted_bytes", "target_bytes",
                                 "overlap_diff_bits", "overlap_equal_bytes",
                                 "longest_exact_run", "artifact_or_diagnostic"))
                writer.writerows(result for result in result_rows
                                 if result[0] == compiler_name)
    print(f"Artifacts: {out_dir.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
