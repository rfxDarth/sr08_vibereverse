#!/usr/bin/env python3
"""Link recovered V204 data declarations at original VMAs and compare bytes."""
from __future__ import annotations

import argparse
import re
import subprocess
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
DATA_DIR = Path(__file__).resolve().parent
SOURCES = (DATA_DIR / "V204_tables.c", DATA_DIR / "V204_auto_data.c")
LINKER_SCRIPT = DATA_DIR / "V204_data_sections.ld"
PAYLOAD = ROOT / "decompiled" / "V204.payload.bin"
BASE = 0x7FC0000
SECTION_LINE = re.compile(r"^\s*\d+\s+(\.v204\.(?:data|auto)\.[0-9a-fA-F]+)\s+"
                          r"([0-9a-fA-F]+)\s+([0-9a-fA-F]+)\s", re.M)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--cc", default="arm-none-eabi-gcc")
    parser.add_argument("--objcopy", default="arm-none-eabi-objcopy")
    parser.add_argument("--ld", default="arm-none-eabi-ld")
    parser.add_argument("--objdump", default="arm-none-eabi-objdump")
    args = parser.parse_args()
    payload = PAYLOAD.read_bytes()

    with tempfile.TemporaryDirectory(prefix="v204-data-verify-") as directory:
        temp = Path(directory)
        objects = []
        for i, source in enumerate(SOURCES):
            obj = temp / f"data_{i}.o"
            subprocess.run([args.cc, "-mcpu=cortex-m0", "-mthumb", "-std=c99",
                            "-ffreestanding", "-fno-builtin", "-c", str(source),
                            "-o", str(obj)], check=True)
            objects.append(str(obj))
        elf = temp / "V204_data.elf"
        subprocess.run([args.ld, "-T", str(LINKER_SCRIPT), *objects, "-o",
                        str(elf)], check=True)
        headers = subprocess.run([args.objdump, "-h", str(elf)], check=True,
                                 capture_output=True, text=True).stdout
        sections = SECTION_LINE.findall(headers)
        if not sections:
            raise SystemExit("no recovered data sections found in linked ELF")
        for name, size_hex, vma_hex in sections:
            address, size, vma = int(name.rsplit(".", 1)[1], 16), \
                                 int(size_hex, 16), int(vma_hex, 16)
            if vma != address:
                raise SystemExit(f"{name}: VMA is 0x{vma:x}, expected 0x{address:x}")
            if address < BASE or address + size > BASE + len(payload):
                raise SystemExit(f"{name}: outside payload address range")
            output = temp / f"{address:08x}.bin"
            subprocess.run([args.objcopy, "-O", "binary", "-j", name,
                            str(elf), str(output)], check=True)
            actual = output.read_bytes()
            expected = payload[address - BASE:address - BASE + size]
            if actual != expected:
                raise SystemExit(f"{name}: byte mismatch ({len(actual)} bytes)")
        print(f"{len(sections)} sections exact at original VMAs; "
              f"{sum(int(size, 16) for _, size, _ in sections)} bytes")


if __name__ == "__main__":
    main()
