#!/usr/bin/env python3
"""Rank equivalent ARM5 C scalar layouts; scores never replace full byte gates."""
from concurrent.futures import ThreadPoolExecutor, as_completed
import hashlib
import itertools
import json
from pathlib import Path
import sys
import tempfile

EXACT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(EXACT))
import arm_compilers
import build_v204 as build

NAME = 'average_top_three_nonzero_sample_values_by_frequency'
START = 0x07fccf80
END = 0x07fcd0aa
BASELINE = (EXACT / 'pending_candidates' / (NAME + '.c.txt')).read_text()
PREFIX = '''    int32_t first_count = frequencies[0], second_count = 0, third_count = 0;
    uint32_t first = 0, second = 0, third = 0;
    int8_t i, j;
'''
assert PREFIX in BASELINE
reference = (build.ROOT / 'firmware/V204.bin').read_bytes()[64:]
assert hashlib.sha256(reference).hexdigest() == build.CANONICAL_PAYLOAD_SHA256
expected = reference[START - build.BASE:END - build.BASE]
manifest = json.loads(build.MANIFEST.read_text())
fixed = build.all_fixed_symbols(manifest)
data = set(build.ram_symbols()) | build.FIXED_DATA_SYMBOLS.keys()
compiler = arm_compilers.ArmCompilers(build.ARM_TOOLS_DIR)
output = Path('/tmp/sr08-alice-topthree-scalar-search')
output.mkdir(exist_ok=True)


def evaluate(config):
    order, early_index, sample_style = config
    declarations = ['    int32_t first_count = frequencies[0];']
    if early_index:
        declarations.append('    int8_t i = 0, j;')
    for name in order:
        typ = 'int32_t' if name.endswith('_count') else 'uint32_t'
        declarations.append(f'    {typ} {name} = 0;')
    if not early_index:
        declarations.append('    int8_t i, j;')
    source = BASELINE.replace(PREFIX, '\n'.join(declarations) + '\n')
    if early_index:
        source = source.replace('for (i = 0; i < count; ++i) frequencies[i] = 0;',
                                'for (; i < count; ++i) frequencies[i] = 0;')
    if sample_style != 'plain':
        source = source.replace('uint32_t *samples', 'volatile uint32_t *samples')
    if sample_style == 'cached_volatile':
        old = 'if (samples[i] == samples[j] && samples[i] != 0 && samples[j] != 0)'
        source = source.replace(old, 'uint32_t left = samples[i], right = samples[j];\n'
                                    '            if (left == right && left != 0 && right != 0)')
    try:
        with tempfile.TemporaryDirectory(prefix='sr08-topthree-order-') as directory:
            temp = Path(directory)
            group = compiler.place_group('ac5', [(NAME, START, source)], build.ROOT, temp,
                                         fixed, data, 'arm-none-eabi-objcopy', 'arm-none-eabi-readelf')
            binary = (temp / f'ac5_{NAME}.bin').read_bytes()
            mismatches = sum(x != y for x, y in zip(binary, expected)) + max(0, len(expected) - len(binary))
            report = dict(order=order, early_index=early_index, samples=sample_style,
                          bytes=len(binary), code_mismatches=mismatches,
                          trailing_bytes=binary[len(expected):].hex(),
                          sha256=hashlib.sha256(binary).hexdigest())
            return report, source, binary
    except (SystemExit, Exception) as error:
        return dict(config=config, error=str(error)[-500:]), source, None


configs = [(order, early, style) for order in itertools.permutations(
           ('second_count', 'third_count', 'first', 'second', 'third'))
           for early in (False, True) for style in ('plain', 'volatile', 'cached_volatile')]
reports = []
best = (999999, 999999)
with ThreadPoolExecutor(max_workers=2) as pool:
    for done, future in enumerate(as_completed([pool.submit(evaluate, c) for c in configs]), 1):
        report, source, binary = future.result()
        reports.append(report)
        if binary is not None:
            rank = (report['code_mismatches'], abs(report['bytes'] - len(expected)))
            if rank < best:
                best = rank
                (output / 'best.c').write_text(source)
                (output / 'best.bin').write_bytes(binary)
                (output / 'best.json').write_text(json.dumps(report, indent=2) + '\n')
                print('best', done, report, flush=True)
        if done % 100 == 0:
            (output / 'results.json').write_text(json.dumps(reports, indent=2) + '\n')
            print(done, '/', len(configs), 'complete', flush=True)
(output / 'results.json').write_text(json.dumps(reports, indent=2) + '\n')
print('Finished', len(reports), 'forms;', len({r.get('sha256') for r in reports}), 'binary results.', flush=True)
