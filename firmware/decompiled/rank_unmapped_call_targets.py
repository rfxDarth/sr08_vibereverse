#!/usr/bin/env python3
"""Rank unresolved V202/V204 call-target pairs by Thumb instruction similarity."""

from __future__ import annotations

import csv
import difflib
import re
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent
BASE = 0x07FC0000
OBJDUMP = "arm-none-eabi-objdump"
LINE = re.compile(
    r"^\s*([0-9a-f]+):\s+((?:[0-9a-f]{4}\s+)+)"
    r"([a-z][a-z0-9_.]*)\s*(.*?)\s*$")
REGISTER = re.compile(r"\b(?:r(?:1[0-2]|[0-9])|sp|lr|pc)\b")
SYMBOL = re.compile(r"\b(?:FUN|DAT|LAB)_07[0-9a-fA-F]+\b")
ROM_SYMBOL = re.compile(r"\bfunc_0x07[0-9a-fA-F]+\b")
CALL = re.compile(r"0x([0-9a-fA-F]+)\(([^)]*)\) -> "
                  r"0x([0-9a-fA-F]+)\(([^)]*)\)")


def index_functions(version: str):
    path = ROOT / f"{version}_functions/thumb_full/index.tsv"
    result = {}
    with path.open(newline="") as stream:
        for row in csv.DictReader(stream, delimiter="\t"):
            spans = []
            for item in filter(None, row["ranges"].split(",")):
                first, last = item.split("-")
                spans.append((int(first, 16), int(last, 16)))
            result[row["address"]] = (row["name"], spans)
    return result


def disassemble(version: str):
    path = ROOT / f"{version}.payload.bin"
    proc = subprocess.run(
        [OBJDUMP, "-D", "-b", "binary", "-m", "arm",
         "--disassembler-options=force-thumb", f"--adjust-vma={BASE:#x}",
         str(path)], capture_output=True, text=True, check=True)
    decoded = {}
    for line in proc.stdout.splitlines():
        match = LINE.match(line)
        if match:
            address = int(match.group(1), 16)
            mnemonic = match.group(3)
            operands = match.group(4)
            regs = tuple(REGISTER.findall(operands))
            decoded[address] = (mnemonic, regs)
    return decoded


def function_tokens(entry: str, functions, decoded):
    name, spans = functions[entry]
    tokens = []
    size = 0
    for index, (first, last) in enumerate(spans):
        if index:
            tokens.append(("<RANGE>", ()))
        size += last - first + 1
        for address in sorted(a for a in decoded if first <= a <= last):
            tokens.append(decoded[address])
    return name, size, tokens


def similarity(left, right) -> float:
    return difflib.SequenceMatcher(None, left, right, autojunk=False).ratio()


def pseudocode_tokens(version: str, entry: str) -> list[str]:
    path = ROOT / f"{version}_functions/thumb_full/functions/{entry}.c"
    source = path.read_text()
    source = re.sub(r"/\*.*?\*/", "", source, flags=re.S)
    source = SYMBOL.sub(lambda match: match.group(0).split("_")[0], source)
    source = ROM_SYMBOL.sub("ROM", source)
    return [line.strip() for line in source.splitlines() if line.strip()]


def main() -> None:
    functions = {v: index_functions(v) for v in ("V202", "V204")}
    decoded = {v: disassemble(v) for v in ("V202", "V204")}
    pairs = set()
    audit = ROOT / "V202_V204_normalized_call_audit.csv"
    with audit.open(newline="") as stream:
        for row in csv.DictReader(stream):
            for match in CALL.finditer(row["unresolved_calls"]):
                old_entry, new_entry = match.group(2), match.group(4)
                if old_entry in functions["V202"] and new_entry in functions["V204"]:
                    pairs.add((old_entry, new_entry))

    rows = []
    for old_entry, new_entry in sorted(pairs):
        old_name, old_size, old_tokens = function_tokens(
            old_entry, functions["V202"], decoded["V202"])
        new_name, new_size, new_tokens = function_tokens(
            new_entry, functions["V204"], decoded["V204"])
        old_ops = [token[0] for token in old_tokens]
        new_ops = [token[0] for token in new_tokens]
        old_c = pseudocode_tokens("V202", old_entry)
        new_c = pseudocode_tokens("V204", new_entry)
        rows.append((old_entry, old_name, old_size, len(old_tokens),
                     new_entry, new_name, new_size, len(new_tokens),
                     f"{similarity(old_ops, new_ops):.4f}",
                     f"{similarity(old_tokens, new_tokens):.4f}",
                     f"{similarity(old_c, new_c):.4f}",
                     sum(line.startswith(("+ ", "- "))
                         for line in difflib.ndiff(old_c, new_c))))
    rows.sort(key=lambda row: (float(row[10]), float(row[8]), float(row[9])),
              reverse=True)

    output = ROOT / "V202_V204_unmapped_call_target_similarity.csv"
    with output.open("w", newline="") as stream:
        writer = csv.writer(stream)
        writer.writerow(("v202_entry", "v202_name", "v202_bytes",
                         "v202_instruction_count", "v204_entry", "v204_name",
                         "v204_bytes", "v204_instruction_count",
                         "mnemonic_sequence_ratio", "mnemonic_register_ratio",
                         "normalized_pseudocode_ratio", "pseudocode_ndiff_lines"))
        writer.writerows(rows)
    print(f"Ranked {len(rows)} unresolved target pairs; output: {output.name}")
    for row in rows[:20]:
        print(f"{row[0]} -> {row[4]}: mnemonic {row[8]}, "
              f"mnemonic+register {row[9]}, pseudocode {row[10]}, "
              f"bytes {row[2]}/{row[6]}")


if __name__ == "__main__":
    main()
