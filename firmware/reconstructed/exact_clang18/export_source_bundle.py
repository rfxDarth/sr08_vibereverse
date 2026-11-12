#!/usr/bin/env python3
"""Export the inputs required for a standalone V204 source build."""
from __future__ import annotations

import argparse
import json
import shutil

import build_v204 as build
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
EXACT = Path(__file__).resolve().parent
RECONSTRUCTED = ROOT / "firmware" / "reconstructed"
DATA = RECONSTRUCTED / "data"
PAYLOAD_SHA256 = "5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570"
CONTAINER_SHA256 = "c747249568a75dc9925a7d25de7baffca2ae5ff42cd2ffd7dfddf8ee42b5e8e8"


def bundle_readme() -> str:
    return f"""# Standalone V204 source build

This bundle builds the 67,136-byte V204 payload and its 67,200-byte SUOTA
container from the included C and SDK startup sources, fixed data, linker layout, and frozen
source manifest. It does not need the original firmware image, extracted
payload, Ghidra project, scan exports, or repository analysis tools.
Every C translation unit is compiled with implicit function declarations
treated as errors, with shared declarations kept in the included headers.

The build compiles source units into relocatable ARM objects and links named
code and data sections at fixed addresses. It generates the payload from those
sections and the SUOTA container from the included header. It does not copy a
firmware image or depend on cached compiler output. The delay and two security helpers are linked from the included, hash-pinned
Dialog SDK archive members `arch_asm.o` and `smpc_util.o`; the build requires `arm-none-eabi-ar` to extract it.
Some routines remain named
Thumb instruction transcriptions or mixed C and assembly to preserve exact
instruction encodings; the catalog records their recovered behavior and source
style in the full repository. Pinned instruction bodies use Thumb mnemonics and
named branches; the assembler emits their bytes during every build.

The full repository also contains a review catalog and name-generation tools;
they are not included because they are not build inputs.

## Requirements

- Python 3.9 or later (standard library only)
- `clang-18`
- `arm-none-eabi-gcc` (verified with 13.2.1)
- `arm-none-eabi-ar`, `arm-none-eabi-ld`, `arm-none-eabi-objcopy`, and `arm-none-eabi-objdump`
- Native ARM Compiler 5.06u7 and 6.16, with MDK-Lite mappings, under your tools directory
- Wine and licensed Keil MDK Professional 5.36 / ARM Compiler 6.16 for the LTO module

The tools directory needs `armcc506/`, `armclang616/`, and
`mdk_lite/mappings/`. Keil defaults to `$WINEPREFIX/drive_c/Keil_v5`
(or `~/.wine/drive_c/Keil_v5`); override it with `SR08_KEIL_DIR`.

Byte-for-byte verification was performed with Ubuntu Clang 18.1.3 and GNU Arm
binutils 2.42. The canonical hash check rejects outputs that differ.

## Build

Run from the bundle root:

```sh
python3 firmware/reconstructed/exact_clang18/build_v204.py \\
  --arm-tools-dir /path/to/Tools \\
  --output /tmp/V204.elf \\
  --flat-output /tmp/V204.payload.bin \\
  --container-output /tmp/V204.bin
```

To verify against separately supplied references, add `--verify-payload PATH`
and/or `--verify-container PATH`. Those arguments are optional and are not
needed to build the image.

Expected SHA-256 values:

- Payload: `{PAYLOAD_SHA256}`
- SUOTA container: `{CONTAINER_SHA256}`
"""


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("destination", type=Path,
                        help="new directory to create for the standalone build")
    args = parser.parse_args()
    destination = args.destination.resolve()
    if destination.exists():
        raise SystemExit(f"destination already exists: {destination}")

    manifest_path = EXACT / "V204_source_manifest.json"
    manifest = json.loads(manifest_path.read_text())
    files = [
        EXACT / "build_v204.py",
        EXACT / "arm_compilers.py",
        EXACT / "audit_inline_assembly.py",
        ROOT / "firmware/reconstructed/third_party/renesas_sdk_6.0.22.1401/da14585_586.lib",
        ROOT / "firmware/reconstructed/third_party/renesas_sdk_6.0.22.1401/renesas_license.txt",
        ROOT / "firmware/reconstructed/third_party/renesas_sdk_6.0.22.1401/README.md",
        ROOT / "firmware/reconstructed/third_party/renesas_sdk_6.0.22.1401/da14585_symbols.txt",
        ROOT / "firmware/reconstructed/third_party/renesas_sdk_6.0.18.1182.1/da14585_586.lib",
        ROOT / "firmware/reconstructed/third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt",
        ROOT / "firmware/reconstructed/third_party/renesas_sdk_6.0.18.1182.1/README.md",
        manifest_path,
        DATA / "V204_tables.c",
        DATA / "V204_auto_data.c",
        DATA / "V204_ota_header.c",
        DATA / "V204_data_sections.ld",
        DATA / "V204_ram_symbols.json",
    ]
    for relative in build.LTO_SUPPORT_SOURCES + [item[3] for item in build.LTO_READONLY_SOURCES]:
        source = (ROOT / relative).resolve()
        if not source.is_relative_to(RECONSTRUCTED.resolve()):
            raise SystemExit(f"LTO support source is outside reconstruction tree: {relative}")
        files.append(source)
    for _, source, *_ in build.SDK_ASSEMBLY_SOURCES:
        source = source.resolve()
        if not source.is_relative_to(RECONSTRUCTED.resolve()):
            raise SystemExit(f"SDK assembly source is outside reconstruction tree: {source}")
        files.append(source)
    for item in manifest["sources"]:
        source = (ROOT / item["source"]).resolve()
        if not source.is_relative_to(RECONSTRUCTED.resolve()):
            raise SystemExit(f"manifest source is outside reconstruction tree: {item['source']}")
        files.append(source)
    files.extend(path for path in (RECONSTRUCTED / "include").rglob("*")
                 if path.is_file())

    destination.mkdir(parents=True)
    copied = set()
    for source in files:
        relative = source.relative_to(ROOT)
        target = destination / relative
        if target in copied:
            continue
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source, target)
        copied.add(target)
    (destination / "README.md").write_text(bundle_readme())
    print(f"exported {len(copied)} source files and README.md to {destination}")


if __name__ == "__main__":
    main()
