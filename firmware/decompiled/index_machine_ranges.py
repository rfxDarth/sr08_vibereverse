#!/usr/bin/env python3
"""Hash each Ghidra Thumb function range and each unclaimed payload gap."""

from __future__ import annotations

import csv
import hashlib
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent
VERSION = sys.argv[1] if len(sys.argv) > 1 else "V204"
PAYLOAD = ROOT / f"{VERSION}.payload.bin"
INDEX = ROOT / f"{VERSION}_functions/thumb_full/index.tsv"
FUNCTION_RANGES = ROOT / f"{VERSION}_functions/thumb_full/function_ranges.csv"
UNCLAIMED_RANGES = ROOT / f"{VERSION}_functions/thumb_full/unclaimed_ranges.csv"
BASE = 0x7FC0000


def parse_ranges() -> list[tuple[int, int, str, str]]:
    records = []
    with INDEX.open() as source:
        next(source)
        for row in csv.reader(source, delimiter="\t"):
            address, name, ranges, status = row[:4]
            for one_range in filter(None, ranges.split(",")):
                first, last = one_range.split("-")
                records.append((int(first, 16), int(last, 16), address, name))
    return records


def hash_range(payload: bytes, first: int, last: int) -> str:
    offset = first - BASE
    return hashlib.sha256(payload[offset:offset + last - first + 1]).hexdigest()


def main() -> None:
    payload = PAYLOAD.read_bytes()
    records = sorted(parse_ranges())
    with FUNCTION_RANGES.open("w", newline="") as out:
        writer = csv.writer(out)
        writer.writerow(("entry", "name", "start", "end", "size", "sha256"))
        for first, last, entry, name in records:
            writer.writerow((entry, name, f"0x{first:08x}", f"0x{last:08x}",
                             last - first + 1, hash_range(payload, first, last)))

    merged = []
    for first, last, _, _ in records:
        if merged and first <= merged[-1][1] + 1:
            merged[-1] = (merged[-1][0], max(merged[-1][1], last))
        else:
            merged.append((first, last))
    end = BASE + len(payload) - 1
    gaps = []
    cursor = BASE
    for first, last in merged:
        if cursor < first:
            gaps.append((cursor, first - 1))
        cursor = max(cursor, last + 1)
    if cursor <= end:
        gaps.append((cursor, end))
    with UNCLAIMED_RANGES.open("w", newline="") as out:
        writer = csv.writer(out)
        writer.writerow(("start", "end", "size", "sha256"))
        for first, last in gaps:
            writer.writerow((f"0x{first:08x}", f"0x{last:08x}", last - first + 1,
                             hash_range(payload, first, last)))
    print(f"Hashed {len(records)} function ranges and {len(gaps)} unclaimed ranges from {len(payload)} payload bytes.")


if __name__ == "__main__":
    main()
