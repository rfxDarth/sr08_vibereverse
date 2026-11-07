#!/usr/bin/env python3
"""Find V202/V204 function bodies equal after masking Thumb PC displacements.

This is a candidate finder, not a semantic equivalence proof. It preserves
instruction opcodes, registers and short branch displacements while masking
Thumb BL, literal-load, and ADR displacements that can change when code/data
moves between firmware builds.
"""

from __future__ import annotations

import csv
import hashlib
import struct
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent
BASE = 0x07FC0000
MIN_SIZE = 12


def parse_ranges(value: str) -> list[tuple[int, int]]:
    result = []
    for item in filter(None, value.split(",")):
        first, last = item.split("-")
        result.append((int(first, 16), int(last, 16)))
    return result


def normalize(code: bytes) -> tuple[bytes, int]:
    """Mask PC-relative fields in Cortex-M0 Thumb instructions."""
    out = bytearray()
    masked = 0
    offset = 0
    while offset + 1 < len(code):
        first = struct.unpack_from("<H", code, offset)[0]
        is_32bit = (first & 0xF800) in (0xE800, 0xF000, 0xF800)
        if is_32bit and offset + 3 < len(code):
            second = struct.unpack_from("<H", code, offset + 2)[0]
            # Thumb-1 BL: preserve both instruction prefixes, clear S/J/imm.
            if (first & 0xF800) == 0xF000 and (second & 0xF800) == 0xF800:
                out.extend(struct.pack("<HH", first & 0xF800,
                                       second & 0xF800))
                masked += 1
            else:
                out.extend(code[offset:offset + 4])
            offset += 4
            continue

        canonical = first
        # Keep short-branch displacements intact: unlike BL, these targets are
        # normally within the function and their exact offsets are a strong CFG
        # check. Only mask address-bearing literal/ADR fields below.
        if (first & 0xF800) == 0x4800:            # LDR Rt, [PC, #imm]
            canonical = first & 0xFF00
        elif (first & 0xF800) == 0xA000:          # ADR Rd, <label>
            canonical = first & 0xFF00
        if canonical != first:
            masked += 1
        out.extend(struct.pack("<H", canonical))
        offset += 2

    # Preserve any trailing byte; malformed/truncated bodies should not collide
    # with a valid instruction sequence that simply omits it.
    if offset < len(code):
        out.extend(code[offset:])
    return bytes(out), masked


def load_functions(version: str) -> list[tuple[str, str, int, int, bytes, int]]:
    payload = (ROOT / f"{version}.payload.bin").read_bytes()
    index = ROOT / f"{version}_functions/thumb_full/index.tsv"
    result = []
    with index.open(newline="") as stream:
        for row in csv.DictReader(stream, delimiter="\t"):
            spans = parse_ranges(row["ranges"])
            if len(spans) != 1:
                continue
            start, end = spans[0]
            size = end - start + 1
            if size < MIN_SIZE:
                continue
            body = payload[start - BASE:end - BASE + 1]
            signature, masked = normalize(body)
            result.append((row["address"], row["name"], start, end,
                           signature, masked))
    return result


def main() -> None:
    left = load_functions("V202")
    right = load_functions("V204")
    left_by_sig: dict[bytes, list[tuple[str, str, int, int, bytes, int]]] = defaultdict(list)
    for item in left:
        left_by_sig[item[4]].append(item)

    out_path = ROOT / "V202_V204_thumb_normalized_matches.csv"
    rows = []
    for item in right:
        matches = left_by_sig.get(item[4], [])
        if not matches:
            continue
        for other in matches:
            rows.append((item[0], item[1], f"0x{item[2]:08x}",
                         item[3] - item[2] + 1, item[5], other[0], other[1],
                         f"0x{other[2]:08x}", other[3] - other[2] + 1,
                         other[5], hashlib.sha256(item[4]).hexdigest()))

    with out_path.open("w", newline="") as stream:
        writer = csv.writer(stream)
        writer.writerow(("v204_entry", "v204_name", "v204_start", "v204_size",
                         "v204_masked_pcrel_count", "v202_entry", "v202_name",
                         "v202_start", "v202_size", "v202_masked_pcrel_count",
                         "normalized_sha256"))
        writer.writerows(rows)

    unique_v204 = len({row[0] for row in rows})
    unique_pairs = len({(row[0], row[5]) for row in rows})
    print(f"{unique_pairs} normalized exact pairs across {unique_v204} V204 functions; "
          f"{len(rows)} rows including duplicate signatures. Results: {out_path.name}")


if __name__ == "__main__":
    main()
