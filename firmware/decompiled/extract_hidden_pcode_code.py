#!/usr/bin/env python3
"""Export valid Thumb instructions omitted from Ghidra function ranges."""

from __future__ import annotations

import csv
import re
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent
BASE = 0x7FC0000
PAYLOAD = (ROOT / "V204.payload.bin").read_bytes()
FUNCTION_RANGES = ROOT / "V204_functions/thumb_full/function_ranges.csv"
PCODE = ROOT / "V204_pcode_addresses.tsv"
ASSEMBLY = ROOT / "V204.thumb.asm"
INSTRUCTIONS_OUT = ROOT / "V204_hidden_pcode_instructions.tsv"
SPANS_OUT = ROOT / "V204_hidden_pcode_spans.tsv"


def load_function_ranges() -> list[tuple[int, int]]:
    with FUNCTION_RANGES.open(newline="") as source:
        return [(int(row["start"], 16), int(row["end"], 16))
                for row in csv.DictReader(source)]


def parse_assembly() -> dict[int, tuple[list[str], str]]:
    parsed = {}
    pattern = re.compile(r"\s*([0-9a-f]+):\s+((?:[0-9a-f]{4}\s+)+)\s*(.*)")
    with ASSEMBLY.open() as source:
        for line in source:
            match = pattern.match(line)
            if match:
                parsed[int(match.group(1), 16)] = (match.group(2).split(), match.group(3).strip())
    return parsed


def is_covered(address: int, ranges: list[tuple[int, int]]) -> bool:
    return any(first <= address <= last for first, last in ranges)


def main() -> None:
    ranges = load_function_ranges()
    instructions = parse_assembly()
    addresses: dict[int, set[str]] = defaultdict(set)
    with PCODE.open(newline="") as source:
        for row in csv.DictReader(source, delimiter="\t"):
            address = int(row["address"], 16)
            if not is_covered(address, ranges):
                addresses[address].add(row["function"])

    records = []
    for address, owners in sorted(addresses.items()):
        if len(owners) != 1:
            raise ValueError(f"ambiguous function ownership at 0x{address:08x}: {owners}")
        encoded, assembly = instructions[address]
        if "<UNDEFINED>" in assembly or "<UNPREDICTABLE>" in assembly:
            raise ValueError(f"non-instruction p-code address 0x{address:08x}: {assembly}")
        raw = b"".join(int(word, 16).to_bytes(2, "little") for word in encoded)
        offset = address - BASE
        if PAYLOAD[offset:offset + len(raw)] != raw:
            raise ValueError(f"objdump bytes disagree with payload at 0x{address:08x}")
        records.append((address, next(iter(owners)), raw, assembly))

    with INSTRUCTIONS_OUT.open("w", newline="") as destination:
        writer = csv.writer(destination, delimiter="\t")
        writer.writerow(("address", "function", "size", "bytes", "thumb_disassembly"))
        for address, owner, raw, assembly in records:
            writer.writerow((f"0x{address:08x}", owner, len(raw), raw.hex(), assembly))

    spans = []
    for address, owner, raw, assembly in records:
        end = address + len(raw) - 1
        if spans and spans[-1][1] + 1 == address and spans[-1][2] == owner:
            first, _, function, size, body = spans[-1]
            spans[-1] = (first, end, function, size + len(raw), body + raw)
        else:
            spans.append((address, end, owner, len(raw), raw))
    with SPANS_OUT.open("w", newline="") as destination:
        writer = csv.writer(destination, delimiter="\t")
        writer.writerow(("start", "end", "function", "size", "bytes_sha256"))
        import hashlib
        for first, last, owner, size, raw in spans:
            writer.writerow((f"0x{first:08x}", f"0x{last:08x}", owner, size,
                             hashlib.sha256(raw).hexdigest()))

    print(f"Exported {len(records)} valid Thumb instructions ({sum(len(r[2]) for r in records)} bytes) "
          f"in {len(spans)} contiguous spans.")


if __name__ == "__main__":
    main()
