#!/usr/bin/env python3
"""Find V204 Thumb function ranges that occur byte-for-byte in V202."""

from __future__ import annotations

import csv
import hashlib
from pathlib import Path

ROOT = Path(__file__).resolve().parent
BASE = 0x7FC0000
MIN_SIZE = 8


def ranges(row: dict[str, str]) -> list[tuple[int, int]]:
    parsed = []
    for item in filter(None, row["ranges"].split(",")):
        first, last = item.split("-")
        parsed.append((int(first, 16), int(last, 16)))
    return parsed


def main() -> None:
    v204 = (ROOT / "V204.payload.bin").read_bytes()
    v202 = (ROOT / "V202.payload.bin").read_bytes()
    index = ROOT / "V204_functions/thumb_full/index.tsv"
    v202_index = ROOT / "V202_functions/thumb_full/index.tsv"
    output = ROOT / "V202_V204_thumb_exact_matches.csv"
    results = []
    v202_ranges: dict[tuple[int, str], list[str]] = {}

    with v202_index.open(newline="") as source:
        for row in csv.DictReader(source, delimiter="\t"):
            body_ranges = ranges(row)
            if len(body_ranges) != 1:
                continue
            first, last = body_ranges[0]
            size = last - first + 1
            if size < MIN_SIZE:
                continue
            body = v202[first - BASE:last - BASE + 1]
            key = (size, hashlib.sha256(body).hexdigest())
            v202_ranges.setdefault(key, []).append(row["address"])

    with index.open(newline="") as source:
        for row in csv.DictReader(source, delimiter="\t"):
            body_ranges = ranges(row)
            if len(body_ranges) != 1:
                continue
            first, last = body_ranges[0]
            size = last - first + 1
            if size < MIN_SIZE:
                continue
            body = v204[first - BASE:last - BASE + 1]
            positions = []
            cursor = 0
            while True:
                cursor = v202.find(body, cursor)
                if cursor < 0:
                    break
                positions.append(BASE + cursor)
                cursor += 1
            if positions:
                hash_value = hashlib.sha256(body).hexdigest()
                results.append((row["address"], row["name"], f"0x{first:08x}",
                                size, len(positions),
                                ";".join(f"0x{address:08x}" for address in positions),
                                ";".join(v202_ranges.get((size, hash_value), [])),
                                hash_value))

    with output.open("w", newline="") as destination:
        writer = csv.writer(destination)
        writer.writerow(("v204_entry", "name", "v204_start", "size",
                         "v202_match_count", "v202_addresses",
                         "v202_exact_function_entries", "sha256"))
        writer.writerows(results)

    unique = sum(row[4] == 1 for row in results)
    print(f"{len(results)} V204 ranges occur exactly in V202; "
          f"{unique} have one byte-match location. Output: {output.name}")


if __name__ == "__main__":
    main()
