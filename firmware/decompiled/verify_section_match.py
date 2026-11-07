#!/usr/bin/env python3
"""Compare a linked section binary with the same-address V204 payload bytes."""

import argparse
from pathlib import Path
import sys


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("section_bin", type=Path)
    parser.add_argument("--address", type=lambda s: int(s, 0), required=True)
    parser.add_argument("--payload", type=Path,
                        default=Path(__file__).with_name("V204.payload.bin"))
    args = parser.parse_args()

    base = 0x07FC0000
    offset = args.address - base
    emitted = args.section_bin.read_bytes()
    payload = args.payload.read_bytes()
    if offset < 0 or offset + len(emitted) > len(payload):
        parser.error("section range falls outside the V204 payload")
    expected = payload[offset:offset + len(emitted)]
    diffs = [(i, got, want) for i, (got, want) in
             enumerate(zip(emitted, expected)) if got != want]
    print(f"address=0x{args.address:08x} size={len(emitted)} "
          f"matches={len(emitted) - len(diffs)}/{len(emitted)}")
    if diffs:
        print("first differences (offset, emitted, target):")
        for i, got, want in diffs[:16]:
            print(f"  +0x{i:04x}: {got:02x} != {want:02x}")
        return 1
    print("exact match")
    return 0


if __name__ == "__main__":
    sys.exit(main())
