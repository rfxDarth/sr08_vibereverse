#!/usr/bin/env python3
"""Audit literal values hidden by V202/V204 Thumb PC-relative normalization."""

from __future__ import annotations

import csv
import struct
from pathlib import Path

ROOT = Path(__file__).resolve().parent
BASE = 0x07FC0000
RAM_END = 0x07FD8000  # DA14585/586 SDK RAM blocks from sdk_defs.h.


def read_code(version: str) -> bytes:
    return (ROOT / f"{version}.payload.bin").read_bytes()


def literals(code: bytes, start: int, image: bytes) -> list[tuple[int, int | None]]:
    found = []
    offset = 0
    while offset + 1 < len(code):
        first = struct.unpack_from("<H", code, offset)[0]
        is_32bit = (first & 0xF800) in (0xE800, 0xF000, 0xF800)
        if not is_32bit and (first & 0xF800) == 0x4800:
            pc = (start + offset + 4) & ~3
            target = pc + ((first & 0xFF) << 2)
            file_offset = target - BASE
            value = (struct.unpack_from("<I", image, file_offset)[0]
                     if 0 <= file_offset <= len(image) - 4 else None)
            found.append((target, value))
        offset += 4 if is_32bit and offset + 3 < len(code) else 2
    return found


def main() -> None:
    images = {v: read_code(v) for v in ("V202", "V204")}
    src = ROOT / "V202_V204_thumb_normalized_matches.csv"
    dst = ROOT / "V202_V204_normalized_literal_audit.csv"
    rows = []
    with src.open(newline="") as stream:
        for pair in csv.DictReader(stream):
            starts = {v: int(pair[f"{v.lower()}_start"], 16)
                      for v in ("V202", "V204")}
            size = int(pair["v204_size"])
            refs = {}
            for version in ("V202", "V204"):
                begin = starts[version] - BASE
                body = images[version][begin:begin + size]
                refs[version] = literals(body, starts[version], images[version])
            left, right = refs["V202"], refs["V204"]
            same = relocated = ram_ptr = unresolved = unreadable = 0
            details = []
            if len(left) != len(right):
                details.append(f"literal-count:{len(left)}!={len(right)}")
            for index, (old_ref, new_ref) in enumerate(zip(left, right)):
                old_addr, old_val = old_ref
                new_addr, new_val = new_ref
                if old_val is None or new_val is None:
                    unreadable += 1
                    details.append(f"{index}:unreadable@{old_addr:08x}/{new_addr:08x}")
                elif old_val == new_val:
                    same += 1
                elif (BASE <= old_val < BASE + len(images["V202"]) and
                      BASE <= new_val < BASE + len(images["V204"])):
                    old_data = images["V202"][old_val - BASE:old_val - BASE + 4]
                    new_data = images["V204"][new_val - BASE:new_val - BASE + 4]
                    if old_data == new_data and len(old_data) == 4:
                        relocated += 1
                    else:
                        details.append(f"{index}:ptr@{old_val:08x}->{new_val:08x} "
                                       f"data={old_data.hex()}/{new_data.hex()}")
                elif (BASE <= old_val < RAM_END and BASE <= new_val < RAM_END):
                    ram_ptr += 1
                    details.append(f"{index}:ram-pointer={old_val:08x}->{new_val:08x}")
                else:
                    unresolved += 1
                    details.append(f"{index}:value={old_val:08x}->{new_val:08x}")
            rows.append((pair["v204_entry"], pair["v202_entry"], size,
                         len(left), len(right), same, relocated, unresolved,
                         ram_ptr, unreadable, " | ".join(details)))

    with dst.open("w", newline="") as stream:
        writer = csv.writer(stream)
        writer.writerow(("v204_entry", "v202_entry", "size", "v202_literal_count",
                         "v204_literal_count", "same_value_count",
                         "relocated_pointer_same_4bytes_count",
                         "unresolved_changed_value_count",
                         "relocated_ram_pointer_count", "unreadable_count",
                         "differences"))
        writer.writerows(rows)
    print(f"Audited {len(rows)} normalized function pairs; wrote {dst.name}.")
    print("Counts are literal references in indexed ranges, not a proof that all "
          "compiler literal pools are included in those ranges.")


if __name__ == "__main__":
    main()
