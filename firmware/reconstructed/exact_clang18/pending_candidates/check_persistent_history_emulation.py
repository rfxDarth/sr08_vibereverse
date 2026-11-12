#!/usr/bin/env python3
"""Compare a C candidate with OEM Thumb execution using synthetic RAM/flash.

Analysis only. Unicorn is optional and is NOT a normal build dependency.
Example (from Alice's tree):
  python3 pending_candidates/check_persistent_history_emulation.py \
    --unicorn-path /tmp/sr08-alice-emulation-deps

ROM division/memclear and hardware-facing flash/reset calls are intercepted.
The calendar, threshold and stored-record validation helpers run OEM code.
Passing this check does not establish byte parity or hardware correctness.
"""
from __future__ import annotations
import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path
import random
import struct
import sys
import tempfile

EXACT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(EXACT))
import arm_compilers
import build_v204 as build

ENTRY = 0x07fc48a8
BASE = 0x07fc0000
RAM = BASE + build.IMAGE_SIZE
RAM_END = 0x07fd8000
HISTORY, CLOCK, INPUT, STATE, MERGED = 0x07fd1ea4, 0x07fd0858, 0x07fd1e28, 0x07fd557c, 0x07fd5650
STACK, STOP = 0x20010000, 0x20000004


def fixtures(count: int, seed: int):
    rng = random.Random(seed)
    cases = []
    # Deliberately cover state transitions, low-byte versus word flags, both
    # time windows, quarter boundaries, and threshold equalities.
    for mode in range(4):
        for hour in (0, 9, 12, 22):
            for activity in (1, 0x100):
                for flag in (0, 1):
                    cases.append(dict(mode=mode, hour=hour, activity=activity, flag=flag,
                                      age=2000, steps=1000, quarter_steps=1000,
                                      minute_steps=1000, samples=[0]*15, flags=[flag]*15))
    cases += [dict(mode=mode, hour=22, sample=value, samples=[value]*15,
                   age=age, steps=1000, quarter_steps=1000, minute_steps=1000)
              for mode in (1, 2) for value in (1, 10, 35, 36) for age in (1699, 1700)]
    cases += [dict(gap=gap, minute=minute, hour=hour, existing=existing)
              for gap in (50, 51) for minute in (13, 14, 59)
              for hour in (0, 23) for existing in (False, True)]
    for _ in range(count):
        cases.append(dict(mode=rng.randrange(4), hour=rng.randrange(24),
                          minute=rng.choice((0, 13, 14, 29, 44, 59)),
                          activity=rng.choice((0, 1, 0x100, 0x1ff, 0x200)),
                          flag=rng.randrange(2), state_0a=rng.randrange(3),
                          age=rng.choice((0, 1699, 1700, 3000)),
                          steps=rng.choice((0, 10, 1000)),
                          quarter_steps=rng.choice((0, 10, 965, 1000, 1001)),
                          minute_steps=rng.choice((0, 1000, 1001)),
                          sample=rng.choice((0, 1, 35, 36, 255)),
                          samples=[rng.choice((0, 1, 35, 36, 255)) for _ in range(15)],
                          flags=[rng.randrange(2) for _ in range(15)],
                          existing=rng.choice((False, True)),
                          stored_status=rng.randrange(2),
                          stored_age=rng.choice((0, 86460, 86461)),
                          hold=rng.randrange(2)))
    for index, settings in enumerate(cases):
        case=dict(mode=0,hour=22,minute=14,gap=60,activity=1,flag=0,state_0a=1,
                  age=2000,steps=1000,quarter_steps=995,minute_steps=995,sample=0,
                  samples=[0]*15,flags=[0]*15,existing=False,stored_status=1,
                  stored_age=0,hold=0)
        case.update(settings)
        yield index,case


def run(image: bytes, ram: bytes, flash_initial: bytes, U, A, *, entry=ENTRY, arguments=(), capture_return=False):
    uc=U.Uc(U.UC_ARCH_ARM,U.UC_MODE_THUMB|U.UC_MODE_MCLASS)
    uc.ctl_set_cpu_model(A.UC_CPU_ARM_CORTEX_M0)
    uc.mem_map(BASE,0x20000)
    uc.mem_write(BASE,image)
    uc.mem_write(RAM,ram)
    uc.mem_map(0x07f10000,0x20000)
    uc.mem_map(0x20000000,0x20000)
    uc.reg_write(A.UC_ARM_REG_SP,STACK)
    uc.reg_write(A.UC_ARM_REG_LR,STOP|1)
    flash=bytearray(flash_initial)
    events=[]
    registers=(A.UC_ARM_REG_R0,A.UC_ARM_REG_R1,A.UC_ARM_REG_R2,A.UC_ARM_REG_R3)
    for register,value in zip(registers,arguments):uc.reg_write(register,value&0xffffffff)
    def ret(value=None):
        if value is not None:uc.reg_write(A.UC_ARM_REG_R0,value&0xffffffff)
        uc.reg_write(A.UC_ARM_REG_PC,uc.reg_read(A.UC_ARM_REG_LR))
    def word(address):return int.from_bytes(uc.mem_read(address,4),'little')
    def flash_operation(pointer,address,length,operation):
        if address+length>len(flash):raise AssertionError(('flash range',hex(address),length))
        if operation==0:
            data=bytes(flash[address:address+length]);uc.mem_write(pointer,data)
        elif operation==1:
            data=bytes(uc.mem_read(pointer,length))
            flash[address:address+length]=bytes(a&b for a,b in zip(flash[address:address+length],data))
        else:raise AssertionError(('unexpected flash operation',operation))
        events.append(('flash',operation,address,length,data.hex()))
    def hook(cpu,address,size,user):
        if address in (0x07f1dfb8,0x07f1dfe4):
            n,d=(cpu.reg_read(r) for r in registers[:2])
            if not d:raise AssertionError('division by zero')
            if address==0x07f1dfe4:
                n=n if n<0x80000000 else n-0x100000000
                d=d if d<0x80000000 else d-0x100000000
                q=abs(n)//abs(d)
                if (n<0)!=(d<0):q=-q
                r=n-q*d
            else:q,r=divmod(n,d)
            cpu.reg_write(A.UC_ARM_REG_R1,r&0xffffffff);ret(q)
        elif address==0x07f1e0de:
            pointer,length=(cpu.reg_read(r) for r in registers[:2])
            if length>0x10000:raise AssertionError(('memclear length',length))
            cpu.mem_write(pointer,bytes(length));ret()
        elif address==0x07fc3ea0:
            flash_operation(*(cpu.reg_read(r) for r in registers));ret(0)
        elif address==0x07fc5200:
            # Exact documented staging side effect, with synthetic flash only.
            cpu.mem_write(STATE+48,word(CLOCK).to_bytes(4,'little'))
            flash[0x3c000:0x3e000]=b'\xff'*0x2000
            events.append(('erase',0x3c000,0x2000))
            flash_operation(STATE+48,0x3c000,0x70,1);ret()
        elif address in (0x07fc4400,0x07fc43a4):
            events.append(('reset-call',address,*(cpu.reg_read(r) for r in registers[:2])));ret()
        elif 0x07f10000<=address<0x07f30000:
            raise AssertionError(('unhandled ROM call',hex(address)))
    uc.hook_add(U.UC_HOOK_CODE,hook)
    uc.emu_start(entry|1,STOP,count=200000)
    if uc.reg_read(A.UC_ARM_REG_PC)!=STOP:
        raise AssertionError(('instruction budget',hex(uc.reg_read(A.UC_ARM_REG_PC))))
    result=(bytes(uc.mem_read(RAM,len(ram))),bytes(flash),events)
    return result+(uc.reg_read(A.UC_ARM_REG_R0),) if capture_return else result


def make_fixture(case):
    ram=bytearray(RAM_END-RAM)
    def put(address,value,width=4):
        start=address-RAM;ram[start:start+width]=(value&((1<<(width*8))-1)).to_bytes(width,'little')
    now=1000*86400+case['hour']*3600+case['minute']*60
    seconds=case['hour']*3600+case['minute']*60
    for offset,value in ((0,now),(12,seconds),(24,0),(28,case['minute']),(32,case['hour'])):put(CLOCK+offset,value)
    put(HISTORY,now-case['gap']);put(HISTORY+0x30,now-case['age'])
    ram[HISTORY+0x5a-RAM:HISTORY+0x69-RAM]=bytes(case['samples'])
    ram[HISTORY+0x69-RAM:HISTORY+0x78-RAM]=bytes(case['flags'])
    for offset,value in ((0xe,case['mode']),(0xf,case['flag']),(0x10,case['sample'])):put(INPUT+offset,value,1)
    put(INPUT+0x6c,case['activity'])
    put(STATE+0xa,case['state_0a'],1);put(STATE+0x24,43201)
    for offset,value in ((0x38,case['steps']),(0x3c,10),(0x4c,case['minute_steps']),
                         (0x50,case['quarter_steps']),(0x54,8)):put(STATE+offset,value)
    put(MERGED+0x26,case['hold'],1)
    flash=bytearray(b'\xff'*0x80000)
    if case['existing'] and case['minute']%15==14:
        index=(case['hour']*60+case['minute']+1)//15-1
        day=now//86400%7
        bitmap=day*0x2000+0x2ffec
        word=bitmap+(index//32)*4
        value=0xffffffff^(1<<(index%32))
        flash[word:word+4]=value.to_bytes(4,'little')
        address=day*0x2000+0x2e000+index*36
        record=struct.pack('<IBB',now-case['stored_age'],case['stored_status'],0)+bytes([0,2,99]*5)+bytes(15)
        flash[address:address+36]=record
    return bytes(ram),bytes(flash)


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--unicorn-path',type=Path)
    p.add_argument('--candidate',type=Path,default=EXACT/'pending_candidates/load_and_update_persistent_measurement_state_alice.c.txt')
    p.add_argument('--candidate-binary',type=Path,help='test retained native/LTO bytes instead of compiling')
    p.add_argument('--reference',type=Path,default=build.ROOT/'firmware/V204.bin')
    p.add_argument('--random-cases',type=int,default=200)
    p.add_argument('--seed',type=int,default=4808)
    p.add_argument('--artifact-dir',type=Path,default=Path('/tmp/sr08-alice-history-emulation'))
    args=p.parse_args()
    if args.unicorn_path:sys.path.insert(0,str(args.unicorn_path))
    import unicorn as U
    from unicorn import arm_const as A
    reference=args.reference.read_bytes()[64:]
    assert hashlib.sha256(reference).hexdigest()==build.CANONICAL_PAYLOAD_SHA256
    manifest=json.loads(build.MANIFEST.read_text())
    compiler=arm_compilers.ArmCompilers(build.ARM_TOOLS_DIR)
    name='load_and_update_persistent_measurement_state_block_at_48a8'
    args.artifact_dir.mkdir(parents=True,exist_ok=True)
    if args.candidate_binary:
        code=args.candidate_binary.read_bytes()
    else:
        with tempfile.TemporaryDirectory(prefix='sr08-history-c-') as directory:
            temp=Path(directory)
            group=compiler.place_group('ac6',[(name,ENTRY,args.candidate.read_text())],build.ROOT,temp,
                     build.all_fixed_symbols(manifest),set(build.ram_symbols())|build.FIXED_DATA_SYMBOLS.keys(),
                     'arm-none-eabi-objcopy','arm-none-eabi-readelf')
            code=(temp/f'ac6_{name}.bin').read_bytes()
            (args.artifact_dir/'candidate.bin').write_bytes(code)
    candidate=bytearray(reference);candidate[ENTRY-BASE:ENTRY-BASE+len(code)]=code
    passed=0
    coverage=Counter()
    for index,case in fixtures(args.random_cases,args.seed):
        ram,flash=make_fixture(case)
        original=run(reference,ram,flash,U,A)
        rebuilt=run(bytes(candidate),ram,flash,U,A)
        if original!=rebuilt:
            diffs=[hex(RAM+i) for i,(a,b) in enumerate(zip(original[0],rebuilt[0])) if a!=b]
            report=dict(case_index=index,case=case,ram_differences=diffs,
                        reference_events=original[2],candidate_events=rebuilt[2],
                        flash_equal=original[1]==rebuilt[1])
            path=args.artifact_dir/'mismatch.json';path.write_text(json.dumps(report,indent=2)+'\n')
            print(f'MISMATCH case {index}: {len(diffs)} RAM bytes; details {path}')
            raise SystemExit(1)
        coverage[f'mode {case["mode"]}->{original[0][INPUT+0xe-RAM]}']+=1
        coverage['quarter staged' if any(e[0]=='erase' for e in original[2]) else 'early return']+=1
        if any(e[0]=='reset-call' for e in original[2]):coverage['reset branch']+=1
        for event in original[2]:
            if event[:2]==('flash',1) and event[3]==36:
                coverage[f'record classified {bytes.fromhex(event[4])[4]}']+=1
        passed+=1
    report=dict(cases=passed,seed=args.seed,candidate_sha256=hashlib.sha256(args.candidate.read_bytes()).hexdigest(),
                reference_sha256=hashlib.sha256(reference).hexdigest(),unicorn=U.__version__,
                binary_sha256=hashlib.sha256(code).hexdigest(),candidate_binary=str(args.candidate_binary) if args.candidate_binary else 'native ac6',
                coverage=dict(sorted(coverage.items())),
                scope='OEM Thumb and C Thumb execution; ROM arithmetic and hardware-facing calls intercepted')
    (args.artifact_dir/'passed.json').write_text(json.dumps(report,indent=2)+'\n')
    print(f'Equivalent synthetic RAM, flash and I/O traces in {passed} cases; candidate {len(code)} bytes.')

if __name__=='__main__':main()
