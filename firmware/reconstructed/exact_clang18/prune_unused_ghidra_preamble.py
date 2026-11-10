#!/usr/bin/env python3
"""Remove unused decompiler typedefs and macros from literal-scan functions."""
from __future__ import annotations

import argparse
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
MANIFEST = Path(__file__).resolve().parent / "V204_source_manifest.json"
DECLARATION = re.compile(
    r"^\s*(?:typedef\b.*?\b([A-Za-z_]\w*)\s*(?:\([^;]*\))?;|"
    r"#define\s+([A-Za-z_]\w*)\b.*)$"
)
TOKEN = re.compile(r"\b[A-Za-z_]\w*\b")
COMMENT_OR_STRING = re.compile(
    r"/\*[\s\S]*?\*/|//[^\n]*|\"(?:\\.|[^\"\\])*\"|"
    r"'(?:\\.|[^'\\])*'"
)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--apply", action="store_true",
                        help="write the cleaned files; otherwise report changes")
    args = parser.parse_args()
    manifest = json.loads(MANIFEST.read_text())
    paths = sorted({ROOT / item["source"] for item in manifest["sources"]
                    if item["kind"] == "literal_scan_function"})
    changed_files = removed_lines = removed_includes = 0
    for path in paths:
        original = path.read_text(errors="replace")
        tokens = TOKEN.findall(original)
        counts = {name: tokens.count(name) for name in set(tokens)}
        code = COMMENT_OR_STRING.sub(" ", original)
        kept = []
        removed = []
        includes = []
        for line in original.splitlines(keepends=True):
            if (line.strip() == "#include <stdbool.h>" and
                    not re.search(r"\b(?:bool|true|false)\b", code)):
                includes.append(line)
                continue
            match = DECLARATION.match(line.rstrip("\r\n"))
            name = (match.group(1) or match.group(2)) if match else None
            if name is not None and counts.get(name, 0) == 1:
                removed.append(line)
            else:
                kept.append(line)
        if removed or includes:
            changed_files += 1
            removed_lines += len(removed)
            removed_includes += len(includes)
            if args.apply:
                path.write_text("".join(kept))
            print(f"{path.relative_to(ROOT)}: remove {len(removed)} declarations, "
                  f"{len(includes)} unused includes")
    action = "removed" if args.apply else "would remove"
    print(f"{action} {removed_lines} declarations and {removed_includes} includes "
          f"across {changed_files} files")


if __name__ == "__main__":
    main()
