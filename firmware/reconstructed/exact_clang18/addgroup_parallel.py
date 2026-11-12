#!/usr/bin/env python3
"""addgroup.py COMPILER SYMBOL... : register a matched group in build_v204.py and mark catalog rows C."""
import csv, json, re, sys, pathlib
E = pathlib.Path(__file__).resolve().parent  # this parallel copy; never exact_clang18/
compiler, symbols = sys.argv[1], sys.argv[2:]
addr = {r['symbol']: r['address'] for r in json.loads((E / 'V204_source_manifest.json').read_text())['sources']}
p = E / 'build_v204.py'; t = p.read_text()
m = re.search(r'ARM_COMPILER_GROUPS = \[\n(.*?)\n\]\n', t, re.S)
entries = re.findall(r'    \("(ac[56]\w*)", \[(.*?)\]\),', m.group(1), re.S)
groups = [(c, re.findall(r"""["'](\w+)["']""", s)) for c, s in entries]
if any(set(symbols) & set(g) for _, g in groups):
    sys.exit('already registered')
groups.append((compiler, symbols))
groups.sort(key=lambda g: addr[g[1][0]])
lines = []
for c, g in groups:
    line = f'    ("{c}", [' + ', '.join(f'"{s}"' for s in g) + ']),'
    if len(line) > 118:
        line = f'    ("{c}", [\n' + ''.join(f'        "{s}",\n' for s in g) + '    ]),'
    lines.append(line)
t = t[:m.start(1)] + '\n'.join(lines) + t[m.end(1):]
p.write_text(t)
c = E / 'V204_function_names.csv'
text = c.read_text().split('\n')
for i, line in enumerate(text):
    row = next(csv.reader([line])) if line else []
    if len(row) > 5 and row[2] in symbols and row[5] != 'C':
        row[5] = 'C'
        import io; out = io.StringIO(); csv.writer(out, lineterminator='').writerow(row); text[i] = out.getvalue()
c.write_text('\n'.join(text))
print('registered', compiler, symbols)
