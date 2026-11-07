#!/usr/bin/env python3
"""Check whether calls in normalized V202/V204 function candidates map alike."""

from __future__ import annotations

import csv
import struct
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent
BASE = 0x07FC0000


def read_index(version: str):
    rows = []
    path = ROOT / f"{version}_functions/thumb_full/index.tsv"
    with path.open(newline="") as stream:
        for row in csv.DictReader(stream, delimiter="\t"):
            spans = []
            for item in filter(None, row["ranges"].split(",")):
                first, last = item.split("-")
                spans.append((int(first, 16), int(last, 16)))
            rows.append((row["address"], row["name"], spans))
    return rows


def call_targets(body: bytes, start: int) -> list[int]:
    result = []
    offset = 0
    while offset + 1 < len(body):
        first = struct.unpack_from("<H", body, offset)[0]
        is_32bit = (first & 0xF800) in (0xE800, 0xF000, 0xF800)
        if is_32bit and offset + 3 < len(body):
            second = struct.unpack_from("<H", body, offset + 2)[0]
            if (first & 0xF800) == 0xF000 and (second & 0xF800) == 0xF800:
                displacement = ((first & 0x7FF) << 12) | ((second & 0x7FF) << 1)
                if displacement & (1 << 22):
                    displacement -= 1 << 23
                result.append((start + offset + 4 + displacement) & 0xFFFFFFFF)
            offset += 4
        else:
            offset += 2
    return result


def owner(address: int, index: list[tuple[str, str, list[tuple[int, int]]]]) -> str | None:
    for entry, _, spans in index:
        if any(first <= address <= last for first, last in spans):
            return entry
    return None


def main() -> None:
    images = {v: (ROOT / f"{v}.payload.bin").read_bytes()
              for v in ("V202", "V204")}
    indexes = {v: read_index(v) for v in ("V202", "V204")}
    signatures = list(csv.DictReader(open(ROOT / "V202_V204_thumb_normalized_matches.csv")))
    pair_map = {(r["v204_entry"], r["v202_entry"]) for r in signatures}
    for r in csv.DictReader(open(ROOT / "V202_V204_thumb_exact_matches.csv")):
        for old_entry in filter(None, r["v202_exact_function_entries"].split(";")):
            pair_map.add((r["v204_entry"], old_entry))

    # Include every indexed function body so calls to a paired target can be
    # translated by their offset within the body, even when the call lands in
    # a non-entry basic block.
    pair_rows = []
    for row in signatures:
        starts = {v: int(row[f"{v.lower()}_start"], 16) for v in ("V202", "V204")}
        size = int(row["v204_size"])
        targets = {}
        for version in ("V202", "V204"):
            begin = starts[version] - BASE
            body = images[version][begin:begin + size]
            targets[version] = call_targets(body, starts[version])

        same = mapped = unresolved = count_mismatch = 0
        details = []
        if len(targets["V202"]) != len(targets["V204"]):
            count_mismatch = 1
            details.append(f"call-count:{len(targets['V202'])}!={len(targets['V204'])}")
        for ordinal, (old_target, new_target) in enumerate(
                zip(targets["V202"], targets["V204"])):
            if old_target == new_target:
                same += 1
                continue
            old_owner = owner(old_target, indexes["V202"])
            new_owner = owner(new_target, indexes["V204"])
            if old_owner is not None and new_owner is not None and (new_owner, old_owner) in pair_map:
                mapped += 1
            else:
                unresolved += 1
                details.append(f"{ordinal}:0x{old_target:08x}({old_owner}) -> "
                               f"0x{new_target:08x}({new_owner})")
        pair_rows.append((row["v204_entry"], row["v202_entry"], size,
                          len(targets["V202"]), len(targets["V204"]),
                          same, mapped, unresolved, count_mismatch,
                          " | ".join(details)))

    destination = ROOT / "V202_V204_normalized_call_audit.csv"
    with destination.open("w", newline="") as stream:
        writer = csv.writer(stream)
        writer.writerow(("v204_entry", "v202_entry", "size", "v202_call_count",
                         "v204_call_count", "same_target_count",
                         "mapped_paired_function_target_count",
                         "unresolved_target_count", "call_count_mismatch",
                         "unresolved_calls"))
        writer.writerows(pair_rows)
    print(f"Audited calls in {len(pair_rows)} normalized candidate pairs; "
          f"wrote {destination.name}.")


if __name__ == "__main__":
    main()
