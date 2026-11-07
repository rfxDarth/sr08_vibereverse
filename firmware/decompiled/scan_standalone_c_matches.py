#!/usr/bin/env python3
"""Compile single-range V204 exports without address-backed globals; compare bytes."""

from __future__ import annotations

import csv
import re
import subprocess
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent
BASE = 0x7FC0000
SOURCES = ROOT / "V204_functions/thumb_full/functions"
INDEX = ROOT / "V204_functions/thumb_full/index.tsv"
PAYLOAD = ROOT / "V204.payload.bin"
OUTPUT = ROOT / "V204_standalone_c_scan.csv"
FLAGS = ["-mcpu=cortex-m0", "-mthumb", "-std=gnu89", "-Os",
         "-ffreestanding", "-fno-builtin", "-ffunction-sections",
         "-fdata-sections", "-w"]
PREAMBLE = """#include <stdint.h>
#include <stdbool.h>
typedef uint32_t uint;
typedef uint8_t undefined1;
typedef uint16_t undefined2;
typedef uint32_t undefined4;
typedef uint64_t undefined8;
typedef uint8_t byte;
typedef uint16_t ushort;
typedef unsigned long ulong;
typedef unsigned long long ulonglong;
typedef long long longlong;
"""
ADDRESS_SYMBOL = re.compile(r"\b(?:DAT|PTR|UNK)_[0-9a-fA-F]+\b")
COMMENT = re.compile(r"/\*.*?\*/|//[^\n]*", re.S)


def main() -> None:
    payload = PAYLOAD.read_bytes()
    candidates = []
    with INDEX.open(newline="") as stream:
        for row in csv.DictReader(stream, delimiter="\t"):
            ranges = row["ranges"].split(",")
            if len(ranges) != 1:
                continue
            start, end = (int(value, 16) for value in ranges[0].split("-"))
            source = SOURCES / f"{row['address']}.c"
            if not source.exists():
                continue
            code = COMMENT.sub("", source.read_text(errors="replace"))
            if ADDRESS_SYMBOL.search(code):
                continue
            candidates.append((row, source, code, start, end))

    results = []
    with tempfile.TemporaryDirectory(prefix="v204-standalone-scan-") as directory:
        temp = Path(directory)
        for row, source, code, start, end in candidates:
            stem = row["address"]
            c_file, obj_file = temp / f"{stem}.c", temp / f"{stem}.o"
            c_file.write_text(PREAMBLE + code)
            build = subprocess.run(["arm-none-eabi-gcc", *FLAGS, "-c",
                                    str(c_file), "-o", str(obj_file)],
                                   capture_output=True, text=True)
            target = payload[start-BASE:end-BASE+1]
            if build.returncode:
                diagnostic = next((line.strip() for line in build.stderr.splitlines()
                                   if "error:" in line), "compiler failed")
                results.append((f"0x{start:08x}", row["name"], len(target),
                                "compile-error", "", target.hex(), "", diagnostic,
                                source.name))
                continue

            section = temp / f"{stem}.bin"
            extract = subprocess.run(["arm-none-eabi-objcopy", "--dump-section",
                                      f".text.{row['name']}={section}", str(obj_file)],
                                     capture_output=True)
            if extract.returncode or not section.exists():
                results.append((f"0x{start:08x}", row["name"], len(target),
                                "section-missing", "", target.hex(), "", "", source.name))
                continue
            emitted = section.read_bytes()
            exact = emitted == target
            distance = sum((left ^ right).bit_count()
                           for left, right in zip(emitted, target))
            if len(emitted) != len(target):
                distance = -1
            results.append((f"0x{start:08x}", row["name"], len(target),
                            "exact" if exact else "mismatch", emitted.hex(),
                            target.hex(), distance, "", source.name))

    with OUTPUT.open("w", newline="") as stream:
        writer = csv.writer(stream)
        writer.writerow(("address", "function", "target_size", "status",
                         "compiled_hex", "target_hex", "bit_distance",
                         "diagnostic", "source_file"))
        writer.writerows(results)
    counts = {state: sum(row[3] == state for row in results)
              for state in ("exact", "mismatch", "compile-error", "section-missing")}
    print(f"Scanned {len(results)} functions: {counts}. Details: {OUTPUT.name}")
    near = [row for row in results if row[3] == "mismatch" and row[6] >= 0]
    near.sort(key=lambda row: (row[6], row[2]))
    for row in near[:20]:
        print(f"{row[0]} {row[1]}: {row[6]} differing bits, "
              f"{row[2]} target bytes; emitted={row[4]} target={row[5]}")


if __name__ == "__main__":
    main()
