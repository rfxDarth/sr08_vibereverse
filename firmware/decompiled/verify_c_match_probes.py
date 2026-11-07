#!/usr/bin/env python3
"""Compile two C probes and compare their emitted sections to V204 bytes."""

from __future__ import annotations

import hashlib
import subprocess
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent
BASE = 0x7FC0000
PAYLOAD_SHA256 = "5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570"
FLAGS = [
    "-mcpu=cortex-m0", "-mthumb", "-std=gnu11", "-Os",
    "-ffreestanding", "-fno-builtin", "-ffunction-sections", "-fdata-sections",
]
PROBES = (
    ("07fc017c", ROOT / "V204_functions/thumb_full/functions/07fc017c.c",
     ["-include", "stdbool.h"], 2),
    ("07fc1c0c", ROOT / "probes/07fc1c0c.c", [], 12),
)
LEAF_FUNCTIONS = tuple(
    (address, size) for address, size in (
        ("07fc017c", 2), ("07fc017e", 2), ("07fc0180", 2), ("07fc0182", 2),
        ("07fc16c6", 2), ("07fc1e4c", 2), ("07fc31f4", 2), ("07fc57b4", 2),
        ("07fc5e50", 2), ("07fc5e52", 2), ("07fc5f7c", 2), ("07fc5f7e", 2),
        ("07fc7524", 2), ("07fcb828", 2), ("07fcb8d4", 2), ("07fcb960", 2),
        ("07fcbc28", 2), ("07fcc4ac", 2), ("07fcc4ae", 2),
        ("07fc3028", 4), ("07fc653c", 4), ("07fc6560", 4), ("07fc6564", 4),
        ("07fc65c8", 4), ("07fc65cc", 4), ("07fc671c", 4), ("07fc6720", 4),
        ("07fc6bf0", 4), ("07fca79c", 4), ("07fca844", 4), ("07fca848", 4),
        ("07fcb8d0", 4), ("07fcb97c", 4), ("07fcbc3a", 4),
    )
)


def run(command: list[str]) -> None:
    subprocess.run(command, check=True, stdout=subprocess.DEVNULL)


def main() -> None:
    payload = (ROOT / "V204.payload.bin").read_bytes()
    actual_sha = hashlib.sha256(payload).hexdigest()
    if actual_sha != PAYLOAD_SHA256:
        raise SystemExit(f"wrong payload SHA-256: {actual_sha}")

    with tempfile.TemporaryDirectory(prefix="v204-c-match-") as temporary:
        temp = Path(temporary)
        for address_text, source, extra_flags, size in PROBES:
            address = int(address_text, 16)
            obj = temp / f"{address_text}.o"
            section = temp / f"{address_text}.text"
            run(["arm-none-eabi-gcc", *FLAGS, *extra_flags, "-c", str(source), "-o", str(obj)])
            section_name = f".text.FUN_{address_text}"
            run(["arm-none-eabi-objcopy", "--dump-section", f"{section_name}={section}", str(obj)])
            compiled = section.read_bytes()
            target = payload[address - BASE:address - BASE + size]
            exact = compiled == target
            print(f"0x{address:08x}: emitted={compiled.hex()} target={target.hex()} exact={exact}")
            if not exact:
                raise SystemExit(f"byte mismatch at 0x{address:08x}")

        leaf_object = temp / "leaf_functions.o"
        run(["arm-none-eabi-gcc", *FLAGS, "-c",
             str(ROOT / "probes/leaf_functions.c"), "-o", str(leaf_object)])
        for address_text, size in LEAF_FUNCTIONS:
            address = int(address_text, 16)
            section = temp / f"{address_text}.text"
            run(["arm-none-eabi-objcopy", "--dump-section",
                 f".text.FUN_{address_text}={section}", str(leaf_object)])
            compiled = section.read_bytes()
            target = payload[address - BASE:address - BASE + size]
            exact = compiled == target
            print(f"0x{address:08x}: emitted={compiled.hex()} target={target.hex()} exact={exact}")
            if not exact:
                raise SystemExit(f"byte mismatch at 0x{address:08x}")

    print(f"All {len(PROBES) + len(LEAF_FUNCTIONS)} C probe sections match their V204 payload ranges.")


if __name__ == "__main__":
    main()
