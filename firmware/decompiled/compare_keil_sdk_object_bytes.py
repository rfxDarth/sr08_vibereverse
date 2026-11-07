#!/usr/bin/env python3
"""Find exact V204 matches for named DA14585 Keil SDK object functions."""

from __future__ import annotations

import csv
import re
import subprocess
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent
BASE = 0x7FC0000
PAYLOAD = ROOT / "V204.payload.bin"
OBJECTS = (ROOT.parent.parent /
           "ATC_SR08_Ring_source/Firmware_src/sdk/platform/system_library/output/Keil_5/da14585_586")
OUTPUT = ROOT / "V204_keil_sdk_object_matches.csv"
SYMBOL = re.compile(
    r"^([0-9a-fA-F]+)\s+.*?\bF\s+\.text\s+([0-9a-fA-F]+)\s+(\S+)\s*$",
    re.M,
)


def main() -> None:
    payload = PAYLOAD.read_bytes()
    rows = []
    with tempfile.TemporaryDirectory(prefix="v204-keil-objects-") as directory:
        temp = Path(directory)
        for obj in sorted(OBJECTS.glob("*.o")):
            section = temp / f"{obj.stem}.text.bin"
            extracted = subprocess.run(
                ["arm-none-eabi-objcopy", "-O", "binary", "-j", ".text",
                 str(obj), str(section)], capture_output=True, text=True)
            if extracted.returncode or not section.exists():
                continue
            text = section.read_bytes()
            table = subprocess.run(["arm-none-eabi-objdump", "-t", str(obj)],
                                   capture_output=True, text=True, check=True).stdout
            relocations = subprocess.run(["arm-none-eabi-objdump", "-r", str(obj)],
                                         capture_output=True, text=True, check=True).stdout
            relocation_offsets = set()
            in_text = False
            for line in relocations.splitlines():
                if line.strip() == "RELOCATION RECORDS FOR [.text]:":
                    in_text = True
                    continue
                if line.startswith("RELOCATION RECORDS FOR "):
                    in_text = False
                if in_text:
                    match = re.match(r"\s*([0-9a-fA-F]+)\s+R_", line)
                    if match:
                        relocation_offsets.add(int(match.group(1), 16))

            for match in SYMBOL.finditer(table):
                offset, size = int(match.group(1), 16), int(match.group(2), 16)
                name = match.group(3)
                if size == 0 or offset + size > len(text):
                    continue
                code = text[offset:offset + size]
                has_relocations = any(offset <= place < offset + size
                                      for place in relocation_offsets)
                locations = []
                cursor = 0
                while not has_relocations and code:
                    found = payload.find(code, cursor)
                    if found < 0:
                        break
                    locations.append(BASE + found)
                    cursor = found + 1
                rows.append((obj.name, name, f"0x{offset:x}", size,
                             has_relocations, ",".join(f"0x{x:08x}" for x in locations),
                             code.hex()))

    with OUTPUT.open("w", newline="") as stream:
        writer = csv.writer(stream)
        writer.writerow(("object", "symbol", "object_offset", "size",
                         "has_text_relocation", "v204_addresses", "object_hex"))
        writer.writerows(rows)
    exact = [row for row in rows if row[5]]
    print(f"Checked {len(rows)} named .text symbols; {len(exact)} exact matches.")
    for row in exact:
        print(f"{row[0]}:{row[1]} ({row[3]} bytes) -> {row[5]}")
    print(f"Details: {OUTPUT.name}")


if __name__ == "__main__":
    main()
