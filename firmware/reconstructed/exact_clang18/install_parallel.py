#!/usr/bin/env python3
"""install.py UNIT NEWNAME CANDFILE [ABSORBED_UNIT...] [--summary TEXT]

Install a matched ac6lto function: rename UNIT to NEWNAME everywhere (whole
word), replace its source with CANDFILE, remove the ABSORBED units (chunks of
the same function) from the manifest, catalogs, layout and sources, drop
aliases that pointed into them, and register NEWNAME as an ac6lto unit.
Run probe_arm_group.py first; this tool does not check the bytes.
"""
import csv, io, json, re, subprocess, sys
from pathlib import Path

R = Path('firmware/reconstructed')
E = R / "exact_clang18"
args = sys.argv[1:]
summary = None
if '--summary' in args:
    i = args.index('--summary'); summary = args[i + 1]; del args[i:i + 2]
unit, new, cand, absorbed = args[0], args[1], Path(args[2]).resolve(), args[3:]
code = cand.read_text()

# Parallel copy: rename only inside this folder. include/ and data/ are shared
# with exact_clang18/, so any use of the old name there is reported, not edited.
TEXT = [p for p in E.rglob('*')
        if p.is_file() and p.suffix in ('.c', '.h', '.py', '.json', '.csv', '.ld', '.md', '.txt')]
for shared in (R / 'include',):
    for p in shared.rglob('*'):
        if p.is_file() and p.suffix in ('.c', '.h', '.ld') and re.search(r'\b' + re.escape(sys.argv[1]) + r'\b', p.read_text()):
            print(f'NOTE: shared file {p.relative_to(R)} uses {sys.argv[1]}; not edited (see WORK_CLAIMS.md)')
manifest_path = E / 'V204_source_manifest.json'
manifest = json.loads(manifest_path.read_text())
rows = {r['symbol']: r for r in manifest['sources']}
for name in [unit, *absorbed]:
    if name not in rows:
        sys.exit(f'unknown unit {name}')
if new != unit and (new in rows or new in manifest['function_aliases']):
    sys.exit(f'{new} already exists')
gone_sources = {R.parent.parent / rows[name]['source'] for name in absorbed}
old_source = R.parent.parent / rows[unit]['source']

# Absorbed units may only be referenced by each other and by the unit itself.
skip = gone_sources | {old_source}
for name in absorbed:
    word = re.compile(rf'\b{re.escape(name)}\b')
    for p in TEXT:
        if p in skip or p.suffix in ('.json', '.csv', '.ld', '.py', '.md', '.txt'):
            continue
        if word.search(p.read_text(errors='replace')):
            sys.exit(f'{name} is still referenced by {p}')

# Extra sections (pinned chunks) that only the replaced sources define go with them.
extra = set()
for p in gone_sources | {old_source}:
    extra.update(re.findall(r'section\("\.text\.(\w+)"\)', p.read_text()))
extra -= {unit, *absorbed}
for name in extra:
    word = re.compile(rf'\b{re.escape(name)}\b')
    for p in TEXT:
        if p in skip or p.suffix not in ('.c', '.h'):
            continue
        if word.search(p.read_text(errors='replace')):
            sys.exit(f'{name} is still referenced by {p}')
dropped = [*absorbed, *extra]

start = rows[unit]['address']
ends = sorted(r['address'] for r in manifest['sources'] if r['symbol'] not in absorbed and r['address'] > start)
end = ends[0] if ends else 1 << 32
manifest['sources'] = [r for r in manifest['sources'] if r['symbol'] not in absorbed]
for alias, address in list(manifest['function_aliases'].items()):
    if start <= address < end:
        word = re.compile(rf'\b{re.escape(alias)}\b')
        users = [p for p in TEXT if p not in skip and p != manifest_path and p.suffix in ('.c', '.h')
                 and word.search(p.read_text(errors='replace'))]
        if users:
            sys.exit(f'alias {alias} (0x{address:08x}) is still used by {users[0]}')
        del manifest['function_aliases'][alias]
manifest_path.write_text(json.dumps(manifest, indent=2, sort_keys=True) + '\n')

for p in gone_sources:
    p.unlink()
for p in E.rglob('*.csv'):
    lines = p.read_text().split('\n')
    kept = [l for l in lines if not any(re.search(rf'(^|,){re.escape(a)}(,|$)', l) for a in dropped)]
    if kept != lines:
        p.write_text('\n'.join(kept))
ld = E / 'data' / 'V204_data_sections.ld'
lines = ld.read_text().split('\n')
ld.write_text('\n'.join(l for l in lines if not any(f'(.text.{a}))' in l for a in dropped)))

if new != unit:
    word = re.compile(rf'\b{re.escape(unit)}\b')
    for p in TEXT:
        if not p.exists():
            continue
        t = p.read_text(errors='replace')
        if word.search(t):
            p.write_text(word.sub(new, t))
    new_source = old_source.with_name(new + '.c')
    old_source.rename(new_source)
else:
    new_source = old_source
new_source.write_text(code)

if summary:
    c = E / 'V204_function_names.csv'
    out = []
    for line in c.read_text().split('\n'):
        row = next(csv.reader([line])) if line else []
        if len(row) > 5 and row[2] == new:
            row[4] = summary
            buf = io.StringIO(); csv.writer(buf, lineterminator='').writerow(row); line = buf.getvalue()
        out.append(line)
    c.write_text('\n'.join(out))
subprocess.run([sys.executable, str(E / 'addgroup_parallel.py'), 'ac6lto', new], check=True)
print(f'installed {new} at 0x{start:08x}; absorbed {len(absorbed)} units')
