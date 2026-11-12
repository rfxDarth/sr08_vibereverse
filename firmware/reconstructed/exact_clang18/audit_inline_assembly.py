#!/usr/bin/env python3
"""Inventory assembly syntax in active units after expanding local headers.

This is a conservative source audit, not a count of emitted instructions or
recovered behavior. It includes register bindings and unused inline functions
that survive preprocessing. Library/object-backed manifest entries may have
only a documentation source; their upstream implementations need a separate
audit. A clean result here therefore does not by itself prove all-C recovery.
"""
from __future__ import annotations

import argparse
from concurrent.futures import ThreadPoolExecutor
import json
from pathlib import Path
import re
import subprocess


EXACT = Path(__file__).resolve().parent
ROOT = EXACT.parents[2]
ASSEMBLY = re.compile(
    r"\b(?:__asm__|__asm|asm)\s*(?:(?:__volatile__|volatile|goto)\s*)*\("
)
LINE_MARKER = re.compile(r'^#\s+\d+\s+"([^"]+)"')


def owned_text(preprocessed: str) -> str:
    """Exclude compiler/system headers while retaining expanded project macros."""
    owned = False
    lines = []
    for line in preprocessed.splitlines():
        marker = LINE_MARKER.match(line)
        if marker:
            path = Path(marker.group(1))
            if not path.is_absolute():
                path = ROOT / path
            owned = path.is_relative_to(ROOT / "firmware" / "reconstructed")
        elif owned:
            lines.append(line)
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cc", default="arm-none-eabi-gcc")
    parser.add_argument("--arm-tools-dir", type=Path, default=ROOT / "Tools")
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--list", action="store_true", help="include affected unit names")
    parser.add_argument("--require-zero", action="store_true")
    args = parser.parse_args()
    if args.jobs < 1:
        parser.error("--jobs must be positive")
    rows = json.loads((EXACT / "V204_source_manifest.json").read_text())["sources"]

    def inspect(row: dict) -> dict:
        source = ROOT / row["source"]
        direct = len(ASSEMBLY.findall(source.read_text()))
        target = ["--target=arm-none-eabi"] if "clang" in Path(args.cc).name else []
        compatibility_headers = args.arm_tools_dir / "armclang616" / "include"
        fallback = (["-idirafter", str(compatibility_headers)]
                    if compatibility_headers.is_dir() else [])
        result = subprocess.run(
            [args.cc, *target, "-mcpu=cortex-m0", "-mthumb",
             "-std=gnu89", "-ffreestanding", "-E", "-I", str(ROOT),
             *fallback, str(source)],
            capture_output=True, text=True,
        )
        if result.returncode:
            return {"symbol": row["symbol"], "direct": direct, "error": result.stderr.strip()}
        expanded = len(ASSEMBLY.findall(owned_text(result.stdout)))
        return {"symbol": row["symbol"], "direct": direct, "expanded": expanded}

    with ThreadPoolExecutor(max_workers=args.jobs) as pool:
        results = list(pool.map(inspect, rows))
    failures = [item for item in results if "error" in item]
    affected = [item for item in results if item.get("expanded", 0)]
    report = {
        "scope": "manifest source text and C-preprocessed local headers",
        "preprocessor": args.cc,
        "manifest_units": len(rows),
        "preprocessing_failures": failures,
        "units_with_direct_assembly": sum(bool(item.get("direct")) for item in results),
        "units_with_expanded_assembly": len(affected),
        "units_exposed_by_preprocessing": [item["symbol"] for item in affected if not item["direct"]],
    }
    if args.list:
        report["affected_units"] = affected
    print(json.dumps(report, indent=2))
    if failures or (args.require_zero and affected):
        raise SystemExit(1)


if __name__ == "__main__":
    main()
