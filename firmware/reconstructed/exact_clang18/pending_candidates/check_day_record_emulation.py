#!/usr/bin/env python3
"""Check the daily-record C candidate against OEM Thumb return values and I/O.

Analysis only; uses the isolated optional Unicorn dependency and the shared
emulation fixture from check_persistent_history_emulation.py. It does not prove
byte parity, and is not imported by the normal firmware builder.
"""
from __future__ import annotations
import argparse
import hashlib
import json
from pathlib import Path
import random
import sys
import tempfile

import check_persistent_history_emulation as fixture
import arm_compilers
import build_v204 as build

ENTRY=0x07fc552c
SYMBOL='find_latest_valid_record_within_bitset'


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--unicorn-path',type=Path)
    p.add_argument('--candidate',type=Path,default=fixture.EXACT/'pending_candidates/find_latest_valid_record_within_bitset_alice.c.txt')
    p.add_argument('--output',type=Path,default=Path('/tmp/sr08-alice-day-record-emulation'))
    p.add_argument('--random-cases',type=int,default=100)
    args=p.parse_args()
    if args.unicorn_path:sys.path.insert(0,str(args.unicorn_path))
    import unicorn as U
    from unicorn import arm_const as A
    reference=(build.ROOT/'firmware/V204.bin').read_bytes()[64:]
    assert hashlib.sha256(reference).hexdigest()==build.CANONICAL_PAYLOAD_SHA256
    manifest=json.loads(build.MANIFEST.read_text())
    compilers=arm_compilers.ArmCompilers(build.ARM_TOOLS_DIR)
    with tempfile.TemporaryDirectory(prefix='sr08-day-record-c-') as directory:
        temp=Path(directory)
        compilers.place_group('ac6',[(SYMBOL,ENTRY,args.candidate.read_text())],build.ROOT,temp,
                             build.all_fixed_symbols(manifest),set(build.ram_symbols())|build.FIXED_DATA_SYMBOLS.keys(),
                             'arm-none-eabi-objcopy','arm-none-eabi-readelf')
        code=(temp/f'ac6_{SYMBOL}.bin').read_bytes()
    candidate=bytearray(reference);candidate[ENTRY-build.BASE:ENTRY-build.BASE+len(code)]=code
    rng=random.Random(5526)
    windows=[(0,0),(0,15),(14,30),(30,15),(0,660),(1260,1440),(0,1440),(0,1920),(1905,1920)]
    cases=[(day*86400+12345,first,last,False) for day in (0,1,1000,49710) for first,last in windows]
    cases += [(1000*86400,0,1440,True),(1000*86400,0,1920,True)]
    cases += [(rng.randrange(49711)*86400,rng.randrange(1921),rng.randrange(1921),False)
              for _ in range(args.random_cases)]
    args.output.mkdir(parents=True,exist_ok=True)
    for index,(now,first,last,all_valid) in enumerate(cases):
        ram=bytes(fixture.RAM_END-fixture.RAM)
        flash=bytearray(b'\xff'*0x80000)
        day_start=now//86400*86400
        slot=(now//86400%7)*0x2000
        for record in range(128):
            present=all_valid or bool(rng.randrange(2))
            status=1 if all_valid else rng.choice((0,1,255))
            stamp=(day_start+rng.choice((-1,0,100,86399,86400)))&0xffffffff
            if all_valid:stamp=day_start+record*600
            address=slot+0x2e000+record*36
            data=stamp.to_bytes(4,'little')+bytes([status])+bytes(31)
            flash[address:address+36]=data
            if present:
                at=slot+0x2ffec+(record//32)*4
                word=int.from_bytes(flash[at:at+4],'little')&~(1<<(record%32))
                flash[at:at+4]=word.to_bytes(4,'little')
        kwargs=dict(entry=ENTRY,arguments=(now,first,last),capture_return=True)
        original=fixture.run(reference,ram,bytes(flash),U,A,**kwargs)
        rebuilt=fixture.run(bytes(candidate),ram,bytes(flash),U,A,**kwargs)
        if original!=rebuilt:
            report=dict(case=index,time=now,first=first,last=last,reference_return=original[3],candidate_return=rebuilt[3],
                        reference_events=original[2],candidate_events=rebuilt[2])
            (args.output/'mismatch.json').write_text(json.dumps(report,indent=2)+'\n')
            raise SystemExit(f'MISMATCH case {index}: see {args.output}/mismatch.json')
        if all_valid:assert original[3]==(last//15-first//15)*900
    report=dict(cases=len(cases),candidate_bytes=len(code),candidate_sha256=hashlib.sha256(args.candidate.read_bytes()).hexdigest(),
                binary_sha256=hashlib.sha256(code).hexdigest(),reference_sha256=hashlib.sha256(reference).hexdigest(),unicorn=U.__version__,
                scope='OEM and candidate Thumb return values, synthetic RAM, flash, I/O; hardware-facing calls intercepted')
    (args.output/'passed.json').write_text(json.dumps(report,indent=2)+'\n')
    print(f'Equivalent return values, RAM, flash and I/O in {len(cases)} daily-record windows.')

if __name__=='__main__':main()
