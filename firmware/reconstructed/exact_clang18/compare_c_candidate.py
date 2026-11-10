#!/usr/bin/env python3
"""Compare a candidate C function's object section with the checked-in source.

This is an instruction-selection probe. Object relocations are compared too;
passing it does not replace the complete linked-image canonical hash check.
"""
from __future__ import annotations

import argparse
import json
import subprocess
import tempfile
from pathlib import Path

import build_v204 as build


def capture(command: list[str]) -> str:
    return subprocess.check_output(command, text=True)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('symbol')
    parser.add_argument('candidate', type=Path)
    parser.add_argument('--cc', help='candidate compiler (defaults to the manifested unit compiler)')
    parser.add_argument('--flag', action='append', default=[],
                        help='extra candidate compiler flag; use --flag=-O2')
    args = parser.parse_args()
    manifest = json.loads(build.MANIFEST.read_text())
    matches = [r for r in manifest['sources'] if r['symbol'] == args.symbol]
    if len(matches) != 1:
        parser.error('symbol must name exactly one manifested source unit')
    reference = build.ROOT / matches[0]['source']
    section = '.text.' + args.symbol
    with tempfile.TemporaryDirectory(prefix='sr08-c-probe-') as directory:
        temp = Path(directory)
        blobs, relocations = [], []
        for label, source in [('reference', reference), ('candidate', args.candidate.resolve())]:
            obj, raw = temp / (label + '.o'), temp / (label + '.bin')
            default_cc = ('arm-none-eabi-gcc' if args.symbol in build.GCC_TRANSLATION_UNITS
                          else 'clang-18')
            cc = (args.cc or default_cc) if label == 'candidate' else default_cc
            flags = list(build.GCC_FLAGS if 'gcc' in Path(cc).name else build.FLAGS)
            flags.extend(build.SOURCE_FLAGS.get(args.symbol, []))
            if label == 'candidate':
                flags.extend(args.flag)
            build.compile_source(cc, source, obj, flags=flags)
            subprocess.run(['arm-none-eabi-objcopy', '-O', 'binary', '-j', section,
                            str(obj), str(raw)], check=True)
            blob = raw.read_bytes()
            if not blob:
                raise SystemExit(f'{label}: missing or empty {section}')
            blobs.append(blob)
            lines = capture(['arm-none-eabi-objdump', '-r', '-j', section, str(obj)]).splitlines()
            relocations.append([line for line in lines if 'R_ARM_' in line])
        before, after = blobs
        differences = [i for i in range(max(len(before), len(after)))
                       if before[i:i+1] != after[i:i+1]]
        equal = before == after and relocations[0] == relocations[1]
        print(json.dumps({'match': equal, 'reference_size': len(before),
                          'candidate_size': len(after), 'different_byte_offsets': differences,
                          'relocations_match': relocations[0] == relocations[1]}, indent=2))
        if not equal:
            raise SystemExit(1)


if __name__ == '__main__':
    main()
