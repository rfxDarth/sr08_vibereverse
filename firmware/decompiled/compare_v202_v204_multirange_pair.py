#!/usr/bin/env python3
"""Verify a selected multi-range V202/V204 function pair instruction by instruction."""

from __future__ import annotations

import argparse
import csv
import struct
from pathlib import Path

ROOT = Path(__file__).resolve().parent
BASE = 0x07FC0000


def function_ranges(version: str, entry: str) -> list[tuple[int, int]]:
    index = ROOT / f"{version}_functions/thumb_full/index.tsv"
    with index.open(newline="") as stream:
        for row in csv.DictReader(stream, delimiter="\t"):
            if row["address"].lower() != entry.lower().removeprefix("0x"):
                continue
            result = []
            for item in filter(None, row["ranges"].split(",")):
                first, last = item.split("-")
                result.append((int(first, 16), int(last, 16)))
            return result
    raise ValueError(f"function {entry} is absent from {version} index")


def thumb_bl_target(address: int, first: int, second: int) -> int:
    displacement = ((first & 0x7FF) << 12) | ((second & 0x7FF) << 1)
    if displacement & (1 << 22):
        displacement -= 1 << 23
    return (address + 4 + displacement) & 0xFFFFFFFF


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("v202_entry", nargs="?", default="07fccc60")
    parser.add_argument("v204_entry", nargs="?", default="07fcdd68")
    args = parser.parse_args()

    ranges = {
        "V202": function_ranges("V202", args.v202_entry),
        "V204": function_ranges("V204", args.v204_entry),
    }
    if len(ranges["V202"]) != len(ranges["V204"]):
        raise SystemExit("range count differs; pair needs manual range alignment")
    images = {version: (ROOT / f"{version}.payload.bin").read_bytes()
              for version in ranges}

    rows = []
    function_offset = 0
    total_raw_diff_bytes = total_raw_diff_bits = total_bl = total_bl_same = 0
    total_other_diff_bytes = total_gap_diff_bytes = 0
    for number, (old_range, new_range) in enumerate(
            zip(ranges["V202"], ranges["V204"])):
        old_start, old_end = old_range
        new_start, new_end = new_range
        old_size, new_size = old_end - old_start + 1, new_end - new_start + 1
        if old_size != new_size:
            raise SystemExit(f"range {number} size differs: {old_size} vs {new_size}")
        old_offset, new_offset = old_start - BASE, new_start - BASE
        old_code = images["V202"][old_offset:old_offset + old_size]
        new_code = images["V204"][new_offset:new_offset + new_size]
        if len(old_code) != old_size or len(new_code) != new_size:
            raise SystemExit(f"range {number} extends outside a payload")

        allowed_diff = set()
        bl_count = bl_same = other_diff_instruction_count = 0
        cursor = 0
        while cursor + 1 < old_size:
            first_old = struct.unpack_from("<H", old_code, cursor)[0]
            first_new = struct.unpack_from("<H", new_code, cursor)[0]
            is_32bit = (first_old & 0xF800) in (0xE800, 0xF000, 0xF800)
            width = 4 if is_32bit and cursor + 3 < old_size else 2
            old_insn, new_insn = old_code[cursor:cursor + width], new_code[cursor:cursor + width]
            is_bl = False
            if width == 4:
                second_old = struct.unpack_from("<H", old_code, cursor + 2)[0]
                second_new = struct.unpack_from("<H", new_code, cursor + 2)[0]
                is_bl = ((first_old & 0xF800) == 0xF000 and
                         (second_old & 0xF800) == 0xF800 and
                         (first_new & 0xF800) == 0xF000 and
                         (second_new & 0xF800) == 0xF800)
            if is_bl:
                bl_count += 1
                old_target = thumb_bl_target(old_start + cursor, first_old, second_old)
                new_target = thumb_bl_target(new_start + cursor, first_new, second_new)
                if old_target == new_target:
                    bl_same += 1
                if old_insn != new_insn:
                    allowed_diff.update(range(cursor, cursor + width))
                rows.append(("bl_target", number,
                             f"0x{old_start + cursor:08x}",
                             f"0x{new_start + cursor:08x}", width,
                             sum(a != b for a, b in zip(old_insn, new_insn)),
                             sum((a ^ b).bit_count() for a, b in zip(old_insn, new_insn)),
                             1, int(old_target == new_target), 0, 0,
                             f"0x{old_target:08x}", f"0x{new_target:08x}", "", ""))
            elif old_insn != new_insn:
                other_diff_instruction_count += 1
            cursor += width

        differing = {i for i, (a, b) in enumerate(zip(old_code, new_code)) if a != b}
        total_raw_diff_bytes += len(differing)
        total_raw_diff_bits += sum((a ^ b).bit_count() for a, b in zip(old_code, new_code))
        other_offsets = differing - allowed_diff
        total_other_diff_bytes += len(other_offsets)
        rows.append(("function_range", number, f"0x{old_start:08x}",
                     f"0x{new_start:08x}", old_size, len(differing),
                     sum((a ^ b).bit_count() for a, b in zip(old_code, new_code)),
                     bl_count, bl_same, len(other_offsets),
                     other_diff_instruction_count, "", "", "", ""))
        total_bl += bl_count
        total_bl_same += bl_same
        function_offset += old_size

        if number + 1 < len(ranges["V202"]):
            next_old = ranges["V202"][number + 1][0]
            next_new = ranges["V204"][number + 1][0]
            old_gap = images["V202"][old_end - BASE + 1:next_old - BASE]
            new_gap = images["V204"][new_end - BASE + 1:next_new - BASE]
            if len(old_gap) != len(new_gap):
                raise SystemExit(f"gap after range {number} has different lengths")
            gap_diff = sum(a != b for a, b in zip(old_gap, new_gap))
            total_gap_diff_bytes += gap_diff
            rows.append(("inter_range_gap", number, f"0x{old_end + 1:08x}",
                         f"0x{new_end + 1:08x}", len(old_gap), gap_diff,
                         sum((a ^ b).bit_count() for a, b in zip(old_gap, new_gap)),
                         0, 0, gap_diff, 0, "", "",
                         old_gap.hex(), new_gap.hex()))

    output = ROOT / f"{args.v202_entry.removeprefix('0x')}_{args.v204_entry.removeprefix('0x')}_multirange_compare.csv"
    with output.open("w", newline="") as stream:
        writer = csv.writer(stream)
        writer.writerow(("record_type", "range_number", "v202_start",
                         "v204_start", "size_bytes", "raw_diff_bytes",
                         "raw_diff_bits", "bl_count", "same_bl_target_count",
                         "diff_bytes_outside_bl", "non_bl_diff_instruction_count",
                         "v202_bl_target", "v204_bl_target",
                         "v202_gap_hex", "v204_gap_hex"))
        writer.writerows(rows)

    print(f"Ranges: {len(ranges['V202'])}; body bytes: {function_offset}; "
          f"raw differing bytes: {total_raw_diff_bytes} ({total_raw_diff_bits} bits); "
          f"BLs: {total_bl}, same target: {total_bl_same}; "
          f"differences outside BL instructions: {total_other_diff_bytes}; "
          f"inter-range gap differences: {total_gap_diff_bytes}.")
    print(f"Details: {output.name}")


if __name__ == "__main__":
    main()
