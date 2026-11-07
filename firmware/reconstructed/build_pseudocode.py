#!/usr/bin/env python3
"""Compile REA/Ghidra pseudocode into a relocatable ARM object for experimentation.

This does not rebuild V204.bin. The compatibility header approximates Ghidra's
typed global, string, and ROM-call references so the decompiler output can be
compiled and inspected as a separate object.
"""

from __future__ import annotations

import json
import re
import shutil
import subprocess
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parent
SOURCE_DIR = ROOT / "functions" / "functions"
BUILD_DIR = ROOT / "build"
OBJECT_DIR = BUILD_DIR / "objects"
HEADER = BUILD_DIR / "ghidra_compat.h"
SOURCES = sorted(SOURCE_DIR.glob("*.c"))

DAT_RE = re.compile(r"\bDAT_(0[0-9a-fA-F]{7})\b")
STRING_RE = re.compile(r"\b(s_[A-Za-z0-9_]*?_(0[0-9a-fA-F]{7}))\b")
ROM_RE = re.compile(r"\b(func_(0x[0-9a-fA-F]{8}))\b")


def write_header() -> None:
    text = "\n".join(path.read_text(errors="replace") for path in SOURCES)
    lines = [
        "/* Generated compatibility shim; this is not the vendor SDK. */",
        "#include <stdbool.h>",
        "#include <stdint.h>",
        "typedef uint8_t undefined1;",
        "typedef uint16_t undefined2;",
        "typedef uint32_t undefined3;",
        "typedef uint32_t undefined4;",
        "typedef uint64_t undefined8;",
        "typedef uint8_t byte;",
        "typedef int8_t sbyte;",
        "typedef uint16_t ushort;",
        "typedef uint32_t uint;",
        "typedef uint32_t uint3;",
        "typedef int64_t longlong;",
        "typedef uint64_t ulonglong;",
        "typedef void code(void);",
        "",
    ]
    for address in sorted(set(DAT_RE.findall(text))):
        lines.append(
            f"#define DAT_{address} (*(uint32_t *)(uintptr_t)0x{address})"
        )
    for name, address in sorted(set(STRING_RE.findall(text))):
        lines.append(f"#define {name} ((char *)(uintptr_t)0x{address})")
    for name, address in sorted(set(ROM_RE.findall(text))):
        lines.append(
            f"#define {name} ((intptr_t (* )())(uintptr_t){address})"
        )
    HEADER.parent.mkdir(parents=True, exist_ok=True)
    HEADER.write_text("\n".join(lines) + "\n")


def main() -> int:
    compiler = shutil.which("arm-none-eabi-gcc")
    linker = shutil.which("arm-none-eabi-ld")
    if not compiler or not linker:
        print("arm-none-eabi-gcc and arm-none-eabi-ld are required", file=sys.stderr)
        return 2
    if not SOURCES:
        print(f"No pseudocode files found under {SOURCE_DIR}", file=sys.stderr)
        return 2

    write_header()
    OBJECT_DIR.mkdir(parents=True, exist_ok=True)
    flags = [
        "-mcpu=cortex-m0",
        "-mthumb",
        "-std=gnu11",
        "-Os",
        "-ffreestanding",
        "-fno-builtin",
        "-fno-common",
        "-fno-strict-aliasing",
        "-Wno-implicit-function-declaration",
        "-Wno-int-conversion",
        "-Wno-pointer-to-int-cast",
        "-Wno-int-to-pointer-cast",
        "-include",
        str(HEADER),
        "-c",
    ]

    failures: list[dict[str, str]] = []
    objects: list[str] = []
    for source in SOURCES:
        output = OBJECT_DIR / f"{source.stem}.o"
        result = subprocess.run(
            [compiler, *flags, str(source), "-o", str(output)],
            capture_output=True,
            text=True,
        )
        if result.returncode:
            failures.append({"source": str(source), "stderr": result.stderr[-4000:]})
        else:
            objects.append(str(output))

    combined = BUILD_DIR / "V204_reconstructed.o"
    link = subprocess.run(
        [linker, "-r", "--allow-multiple-definition", "-o", str(combined), *objects],
        capture_output=True,
        text=True,
    ) if objects else None
    manifest = {
        "source_files": len(SOURCES),
        "compiled_objects": len(objects),
        "compile_failures": failures,
        "combined_object": str(combined) if link and link.returncode == 0 else None,
        "link_error": link.stderr if link and link.returncode else None,
        "result_is_vendor_rebuild": False,
        "notes": [
            "Ghidra pseudocode is not original C source.",
            "The shim approximates globals and ROM calls; it is not the Dialog SDK or linker layout.",
            "This creates a relocatable ARM object, not V204.bin.",
        ],
    }
    (BUILD_DIR / "manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
    print(json.dumps({key: value for key, value in manifest.items() if key != "compile_failures"}, indent=2))
    if failures:
        print(f"First compile failure: {failures[0]['source']}", file=sys.stderr)
        print(failures[0]["stderr"], file=sys.stderr)
    return 0 if not failures and link and link.returncode == 0 else 1


if __name__ == "__main__":
    raise SystemExit(main())
