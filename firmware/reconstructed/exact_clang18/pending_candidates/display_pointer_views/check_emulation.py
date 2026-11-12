#!/usr/bin/env python3
"""Optional synthetic Thumb differential checks for installed display C."""
import argparse, hashlib, json, random, subprocess, sys, tempfile
from pathlib import Path
EXACT=Path(__file__).resolve().parents[2]
sys.path[:0]=[str(EXACT),str(EXACT/'pending_candidates')]
import arm_compilers
import build_v204 as build
from check_persistent_history_emulation import run, RAM, RAM_END, BASE

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--unicorn-path',type=Path)
    p.add_argument('--output',type=Path,default=Path('/tmp/sr08-alice-display-pointer-emulation'))
    args=p.parse_args()
    if args.unicorn_path:sys.path.insert(0,str(args.unicorn_path))
    import unicorn as U
    from unicorn import arm_const as A
    reference=(build.ROOT/'firmware/V204.bin').read_bytes()[64:]
    assert hashlib.sha256(reference).hexdigest()==build.CANONICAL_PAYLOAD_SHA256
    manifest=json.loads(build.MANIFEST.read_text());rows={r['symbol']:r for r in manifest['sources']}
    names=['write_display_values_53_65_at_selected_offset','choose_display_state_bytes_from_mode','update_status_display_using_remainder_rom_at_ab3c','select_two_display_patterns_mode_flag_at_ab78']
    compiler=arm_compilers.ArmCompilers(build.ARM_TOOLS_DIR)
    args.output.mkdir(parents=True,exist_ok=True)
    rng=random.Random(0xab3c);reports=[]
    for name in names:
        source=build.ROOT/rows[name]['source'];address=rows[name]['address']
        with tempfile.TemporaryDirectory(prefix='sr08-display-emulate-') as directory:
            temp=Path(directory)
            compiler.place_group('ac6',[(name,address,source.read_text())],build.ROOT,temp,
                build.all_fixed_symbols(manifest),set(build.ram_symbols())|build.FIXED_DATA_SYMBOLS.keys(),
                'arm-none-eabi-objcopy','arm-none-eabi-readelf')
            binary=(temp/f'ac6_{name}.bin').read_bytes()
        image=bytearray(reference);image[address-BASE:address-BASE+len(binary)]=binary
        for mode in range(256):
            ram=bytearray(rng.randbytes(RAM_END-RAM));ram[0x07fd5650+48-RAM]=mode
            flash=bytes([255])*0x80000
            original=run(reference,bytes(ram),flash,U,A,entry=address)
            rebuilt=run(bytes(image),bytes(ram),flash,U,A,entry=address)
            assert original==rebuilt,(name,mode)
        reports.append(dict(symbol=name,cases=256,bytes=len(binary),source_sha256=hashlib.sha256(source.read_bytes()).hexdigest(),binary_sha256=hashlib.sha256(binary).hexdigest()))
        print(name+': all 256 config-byte values match synthetic RAM/flash/I/O',flush=True)
    (args.output/'passed.json').write_text(json.dumps(dict(reference_sha256=build.CANONICAL_PAYLOAD_SHA256,unicorn=U.__version__,results=reports),indent=2)+'\n')
if __name__=='__main__':main()
