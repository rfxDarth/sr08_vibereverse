#!/usr/bin/env python3
"""Optional synthetic differential execution of the display-writer C candidates."""
import argparse
import hashlib
import json
from pathlib import Path
import random
import sys
import tempfile

EXACT = Path(__file__).resolve().parents[2]
sys.path[:0] = [str(EXACT), str(EXACT / 'pending_candidates')]
import arm_compilers
import build_v204 as build
from check_persistent_history_emulation import run, RAM, RAM_END, BASE

CASES = {
    'write_literal_halfword_to_shared_state_offset_0x40': None,
    'write_shared_state_byte_45_and_word_40': None,
    'write_shared_state_byte_44_and_word_40': None,
    'format_signed_state_byte_as_three_display_digits': 0x07fd557c + 0x95,
    'format_display_value_from_shared_offset_8': 0x07fd557c + 8,
    'format_display_value_from_shared_offset_11': 0x07fd1e28 + 11,
}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--unicorn-path', type=Path)
    parser.add_argument('--installed', action='store_true')
    parser.add_argument('--output', type=Path, default=Path('/tmp/sr08-alice-display-writers-emulation'))
    args = parser.parse_args()
    if args.unicorn_path:
        sys.path.insert(0, str(args.unicorn_path))
    import unicorn as U
    from unicorn import arm_const as A
    reference = (build.ROOT / 'firmware/V204.bin').read_bytes()[64:]
    assert hashlib.sha256(reference).hexdigest() == build.CANONICAL_PAYLOAD_SHA256
    manifest = json.loads(build.MANIFEST.read_text())
    rows = {row['symbol']: row for row in manifest['sources']}
    compiler = arm_compilers.ArmCompilers(build.ARM_TOOLS_DIR)
    rng = random.Random(0xa904)
    reports = []
    args.output.mkdir(parents=True, exist_ok=True)
    for name, input_address in CASES.items():
        pending = Path(__file__).parent / (name + '.c.txt')
        source = build.ROOT / rows[name]['source'] if args.installed or not pending.exists() else pending
        address = rows[name]['address']
        with tempfile.TemporaryDirectory(prefix='sr08-display-writer-emulation-') as directory:
            temp = Path(directory)
            compiler.place_group('ac6', [(name, address, source.read_text())], build.ROOT, temp,
                                 build.all_fixed_symbols(manifest), set(build.ram_symbols()) | build.FIXED_DATA_SYMBOLS.keys(),
                                 'arm-none-eabi-objcopy', 'arm-none-eabi-readelf')
            code = (temp / f'ac6_{name}.bin').read_bytes()
        candidate = bytearray(reference)
        candidate[address - BASE:address - BASE + len(code)] = code
        count = 256 if input_address is not None else 4
        for value in range(count):
            ram = bytearray(rng.randbytes(RAM_END - RAM))
            if input_address is not None:
                ram[input_address - RAM] = value
            flash = b'\xff' * 0x80000
            original = run(reference, bytes(ram), flash, U, A, entry=address)
            rebuilt = run(bytes(candidate), bytes(ram), flash, U, A, entry=address)
            assert original == rebuilt, (name, value)
        reports.append(dict(symbol=name, cases=count, input_address=input_address,
                            source_sha256=hashlib.sha256(source.read_bytes()).hexdigest(),
                            binary_sha256=hashlib.sha256(code).hexdigest()))
        print(f'{name}: {count} synthetic RAM/flash/I/O cases match', flush=True)
    (args.output / 'passed.json').write_text(json.dumps(dict(reference_sha256=build.CANONICAL_PAYLOAD_SHA256,
        unicorn=U.__version__, results=reports), indent=2) + '\n')


if __name__ == '__main__':
    main()
