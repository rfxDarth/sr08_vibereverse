#!/usr/bin/env python3
"""Freeze the current exact source set and linker symbols as build metadata."""
from __future__ import annotations
import argparse
import csv
import json
import re
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
EXACT = Path(__file__).resolve().parent
DECOMP = ROOT / "firmware" / "decompiled"
DIRECT_HEADERS = {
    "07fc1cdc": ("sr08_hot_bits.h",),
    "07fc1ce6": ("sr08_hot_bits.h",),
    "07fc1cf0": ("sr08_hot_bits.h",),
    "07fc1cfa": ("sr08_hot_bits.h",),
    "07fc1d04": ("sr08_hot_bits.h",),
    "07fc5694": ("sr08_record_dispatch.h",),
    "07fc67f0": ("sr08_measurement_record.h",),
    "07fc8838": ("sr08_radio_commands.h",),
    "07fc97c0": ("sr08_display_state_switches.h",),
    "07fc97ca": ("sr08_display_state_switches.h", "sr08_record_dispatch.h"),
    "07fcaf78": ("sr08_record_dispatch.h",),
    "07fcbad0": ("sr08_output_state.h",),
    "07fcbae2": ("sr08_output_state.h",),
    "07fcbafc": ("sr08_output_state.h",),
}
DIRECT_DECLARATIONS = {
    "07fc5f30": ("extern void srand(void);",),
    "07fcee44": ("extern void initialize_sensor_processing_state(void);",),
}
COMMENT_RE = re.compile(r"/\*.*?\*/|//[^\n]*", re.S)
IDENTIFIER_RE = re.compile(r"\b[A-Za-z_][A-Za-z0-9_]*\b")

def rows(path: Path):
    with path.open(newline="") as stream:
        return list(csv.DictReader(stream))

def deduplicate_required_includes(content: str) -> str:
    required = {"#include <stdint.h>", "#include <stdbool.h>"}
    seen = set()
    output = []
    for line in content.splitlines():
        normalized = line.strip()
        if normalized in required:
            if normalized in seen:
                continue
            seen.add(normalized)
        output.append(line)
    return "\n".join(output) + "\n"


def remove_redundant_terminal_void_return(content: str) -> str:
    # Ghidra emits a final bare return in many void functions. It has no
    # behavior, and Clang already omits it from the linked machine code.
    return re.sub(r"(?m)^  return;\n(?=})", "", content)

def remove_empty_r7_clobber(content: str) -> str:
    # The empty asm only constrained register allocation in Clang. Removing
    # it from refreshed Ghidra output preserves the exact V204 linked bytes.
    return re.sub(r"(?m)^\s*__asm__ volatile \(\"\" : : : \"r7\"\);\n", "", content)

def normalize_blank_lines(content: str) -> str:
    """Keep at most one empty line between source blocks."""
    return re.sub(r"\n[ \t]*\n(?:[ \t]*\n)+", "\n\n", content)

def add_direct_api_declarations(address: str, content: str) -> str:
    required = [f'#include "firmware/reconstructed/include/{name}"'
                for name in DIRECT_HEADERS.get(address, ())]
    required.extend(DIRECT_DECLARATIONS.get(address, ()))
    if not required:
        return content
    lines = content.splitlines()
    present = {line.strip() for line in lines}
    additions = [line for line in required if line not in present]
    if not additions:
        return content
    insertion = 0
    while insertion < len(lines) and lines[insertion].lstrip().startswith("#include "):
        insertion += 1
    if insertion == 0 and lines and lines[0].startswith("/*"):
        insertion = 1
        while insertion < len(lines) and lines[insertion].lstrip().startswith("#include "):
            insertion += 1
    lines[insertion:insertion] = additions
    return "\n".join(lines) + "\n"

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--refresh-direct-sources", action="store_true",
                        help="replace checked-in direct C sources with fresh decompiler output")
    args = parser.parse_args()
    existing_path = EXACT / "V204_source_manifest.json"
    if existing_path.exists():
        existing = json.loads(existing_path.read_text())
        existing_sources = {item["address"]: item["source"]
                            for item in existing.get("sources", [])}
    else:
        existing_sources = {}
    inputs = [
        (DECOMP / "V204_clang18_fomit_linked_c_scan_current.csv", "direct"),
        (DECOMP / "V204_clang18_data_literal_3global_current.csv", "literal_scan_function"),
        (EXACT / "manual_sources" / "V204_manual_exact.csv", "manual"),
    ]
    sources = []
    copied_sources = 0
    for path, kind in inputs:
        for row in rows(path):
            if row["status"] != "exact":
                continue
            address = row["address"].lower().removeprefix("0x")
            if kind == "direct":
                original = DECOMP / "V204_functions" / "thumb_full" / "functions" / f"{address}.c"
                current = existing_sources.get(int(address, 16), "")
                current_path = ROOT / current if current else None
                if current_path and current_path.parent == EXACT / "decompiled_sources":
                    copied = current_path
                else:
                    copied = EXACT / "decompiled_sources" / f"{address}.c"
                copied.parent.mkdir(parents=True, exist_ok=True)
                if not copied.exists() or args.refresh_direct_sources:
                    shutil.copyfile(original, copied)
                    content = copied.read_text()
                    for old, new in (("undefined1", "uint8_t"),
                                     ("undefined2", "uint16_t"),
                                     ("undefined4", "uint32_t"),
                                     ("undefined8", "uint64_t"),
                                     ("uint", "uint32_t"),
                                     ("byte", "uint8_t")):
                        content = re.sub(r"\b" + old + r"\b", new, content)
                    if "#include <stdint.h>" not in content:
                        content = '#include <stdint.h>\n' + content
                    if re.search(r"\b(?:bool|true|false)\b", content) and \
                            "#include <stdbool.h>" not in content:
                        content = content.replace(
                            "#include <stdint.h>",
                            "#include <stdint.h>\n#include <stdbool.h>", 1)
                    content = deduplicate_required_includes(content)
                    content = remove_redundant_terminal_void_return(content)
                    content = remove_empty_r7_clobber(content)
                    content = add_direct_api_declarations(address, content)
                    copied.write_text(normalize_blank_lines(content))
                    copied_sources += 1
                source = str(copied.relative_to(ROOT))
            elif kind == "literal_scan_function":
                current = existing_sources.get(int(address, 16), "")
                current_path = ROOT / current if current else None
                if current_path and current_path.parent == EXACT / "literal_scan_functions":
                    source = current
                else:
                    source = f"firmware/reconstructed/exact_clang18/literal_scan_functions/{address}.c"
            else:
                source = f"firmware/reconstructed/exact_clang18/manual_sources/{row['source_file']}"
            sources.append({"address": int(address, 16), "symbol": row["function"],
                            "source": source, "kind": kind})
    if len({item["address"] for item in sources}) != len(sources):
        raise SystemExit("duplicate function entry in source manifests")
    with (DECOMP / "V204_functions/thumb_full/index.tsv").open(newline="") as stream:
        function_addresses = {row["name"]: int(row["address"], 16)
                              for row in csv.DictReader(stream, delimiter="\t")}
    source_addresses = {item["symbol"]: item["address"] for item in sources}
    function_aliases = {name: address for name, address in function_addresses.items()
                        if source_addresses.get(name) != address}
    rom_addresses = {row["symbol"]: int(row["address"], 16)
                     for row in rows(DECOMP / "V204_ROM_SYMBOLS.csv") if row["symbol"]}
    referenced_identifiers = set()
    for item in sources:
        source = ROOT / item["source"]
        text = COMMENT_RE.sub("", source.read_text(errors="replace"))
        referenced_identifiers.update(IDENTIFIER_RE.findall(text))
    rom_addresses = {name: address for name, address in rom_addresses.items()
                     if name in referenced_identifiers}
    manifest = {"format": 2, "image_base": 0x7FC0000, "image_size": 0x10640,
                "sources": sources, "function_aliases": function_aliases,
                "rom_symbols": rom_addresses}
    output = EXACT / "V204_source_manifest.json"
    output.write_text(json.dumps(manifest, indent=2, sort_keys=True) + "\n")
    print(f"wrote {len(sources)} source entries and {len(function_aliases)} function aliases; "
          f"copied {copied_sources} direct C sources")

if __name__ == "__main__":
    main()
