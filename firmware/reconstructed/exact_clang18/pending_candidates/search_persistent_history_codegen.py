#!/usr/bin/env python3
"""Search equivalent C representation choices; never patch compiler output.

Analysis only. Scores instruction sequences against an independently verified
V204 ELF, resolving PC-relative literals to values. A score is NOT a byte-parity
gate. Every accepted implementation still needs the normal full-image gates.
"""
from __future__ import annotations
import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
from difflib import SequenceMatcher
import hashlib
import itertools
import json
from pathlib import Path
import re
import subprocess
import sys
import tempfile

EXACT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(EXACT))
import arm_compilers
import build_v204 as build
ENTRY=0x07fc48a8
SYMBOL='load_and_update_persistent_measurement_state_block_at_48a8'
BRANCHES={'b','beq','bne','bcs','bcc','bmi','bpl','bvs','bvc','bhi','bls','bge','blt','bgt','ble','bl','blx'}
LINE=re.compile(r'^\s*([0-9a-f]+):\s+([0-9a-f]{4}(?:\s+[0-9a-f]{4})?)\s+([a-z][\w.]*)\s*(.*)$')


def tokens(listing,image,start):
    result=[]
    for line in listing.splitlines():
        m=LINE.match(line)
        if not m:continue
        address=int(m[1],16);encoded=m[2].split();op=m[3].split('.')[0]
        args=m[4].split('@')[0].split('<')[0].strip()
        if op=='nop':continue
        if op=='ldr' and '[pc,' in args:
            target=((address+4)&~3)+(int(encoded[0],16)&255)*4
            offset=target-start
            if not 0<=offset<=len(image)-4:raise ValueError(('literal outside image',hex(target)))
            args=args.split(',')[0]+',='+hex(int.from_bytes(image[offset:offset+4],'little'))
        elif op in BRANCHES:
            target_match=re.match(r'(?:0x)?([0-9a-f]+)',args)
            if target_match:
                target=int(target_match[1],16)
                args=hex(target) if op in {'bl','blx'} else ('back' if target<address else 'forward')
        result.append(op+' '+re.sub(r'\s+','',args))
    return result


def source_variant(source,layout,mask,flag,style,index):
    s=source
    if layout=='typed':
        replacements={
          'for (unsigned offset=0x69;offset!=0x78;++offset) {\n        if (((volatile uint8_t *)history)[offset]==0)':
          'for (unsigned i=0;i<15;++i) {\n        if (history->flag_history[i]==0)',
          'for(unsigned offset=0x5a;offset!=0x69;++offset) {\n        uint32_t value=((volatile uint8_t *)history)[offset];':
          'for(unsigned i=0;i<15;++i) {\n        uint32_t value=history->sample_history[i];',
          'for(unsigned offset=0x5a;offset!=0x69;++offset) second_sum+=((volatile uint8_t *)history)[offset];':
          'for(unsigned i=0;i<15;++i) second_sum+=history->sample_history[i];',
          'for(unsigned offset=0x6b;offset!=0x7a;++offset) ((volatile uint8_t *)state)[offset]=40;':
          'for(unsigned i=0;i<15;++i) state->classifier_codes[i]=40;',
          'for(unsigned offset=0x6b;offset!=0x7a;++offset) ((volatile uint8_t *)state)[offset]=99;':
          'for(unsigned i=0;i<15;++i) state->classifier_codes[i]=99;',
          'for(unsigned offset=0x5a;offset!=0x69 && ((volatile uint8_t *)history)[offset]==0;++offset) ((volatile uint8_t *)state)[offset+0x11]=40;':
          'for(unsigned i=0;i<15 && history->sample_history[i]==0;++i) state->classifier_codes[i]=40;',
          'for(unsigned offset=0x5c;offset!=0x6b;++offset) ((uint8_t *)&record)[offset-0x56]=((volatile uint8_t *)state)[offset];':
          'for(unsigned i=0;i<15;++i) record.values[i]=state->minute_step_deltas[i];',
          'for(unsigned offset=0x6b;offset!=0x7a;++offset) {\n            uint8_t code=((volatile uint8_t *)state)[offset];\n            ((uint8_t *)&record)[offset-0x65]=code;':
          'for(unsigned i=0;i<15;++i) {\n            uint8_t code=state->classifier_codes[i];\n            record.values[i]=code;',
        }
        for old,new in replacements.items():
            assert old in s,old
            s=s.replace(old,new)
    names=[('history_cycle_state','history'),('history_input_state','input'),
           ('history_shared_state','state'),('history_clock_state','clock')]
    for bit,(typ,name) in enumerate(names):
        if not(mask&(1<<bit)):
            s=s.replace('volatile struct '+typ,'struct '+typ)
            s=s.replace('(volatile uint8_t *)'+name,'(uint8_t *)'+name)
    s=s.replace('uint32_t sum=0,large_sample=0;','uint32_t sum=0;\n    uint32_t large_sample=0;')
    s=s.replace('uint8_t large_sample=0;',f'{flag} large_sample=0;')
    s=s.replace('uint32_t large_sample=0;',f'{flag} large_sample=0;')
    s=s.replace('uint32_t excessive=large_sample && sum>90;', 'uint32_t excessive=(large_sample!=0) & (sum>90);')
    if style=='logical':s=s.replace('(large_sample!=0) & (sum>90)','(large_sample!=0) && (sum>90)')
    elif style=='separate':
        s=s.replace('uint32_t excessive=(large_sample!=0) & (sum>90);','')
        s=s.replace('!excessive','(sum<91u || large_sample==0)').replace('|| excessive ||','|| (large_sample!=0 && sum>90u) ||')
    s=s.replace('for(unsigned ','for('+index+' ').replace('for (unsigned ','for ('+index+' ')
    return s


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--reference-elf',type=Path,default=Path('/tmp/sr08-alice-sensor-packets-standalone.elf'))
    p.add_argument('--output',type=Path,default=Path('/tmp/sr08-alice-history-codegen-search'))
    p.add_argument('--workers',type=int,default=3)
    p.add_argument('--limit',type=int)
    p.add_argument('--annotation-sweep',action='store_true',
                   help='Test each combination of opaque canonical root addresses on the two leading predicate forms')
    p.add_argument('--root-array-sweep',action='store_true',
                   help='Test incomplete byte-array declarations with typed local prefix views')
    args=p.parse_args();args.output.mkdir(parents=True,exist_ok=True)
    if args.annotation_sweep and args.root_array_sweep:
        p.error('choose one root representation sweep')
    reference=(build.ROOT/'firmware/V204.bin').read_bytes()[64:]
    assert hashlib.sha256(reference).hexdigest()==build.CANONICAL_PAYLOAD_SHA256
    listing=subprocess.check_output(['arm-none-eabi-objdump','-d','-j','.v204.func.07fc48a8','-j','.v204.func.07fc4cb0',str(args.reference_elf)],text=True)
    for line in listing.splitlines():
        match=LINE.match(line)
        if match:
            offset=int(match[1],16)-build.BASE
            encoded=b''.join(int(h,16).to_bytes(2,'little') for h in match[2].split())
            assert reference[offset:offset+len(encoded)]==encoded, 'reference ELF differs from OEM code'
    expected=tokens(listing,reference,build.BASE)
    manifest=json.loads(build.MANIFEST.read_text())
    fixed=build.all_fixed_symbols(manifest);data=set(build.ram_symbols())|build.FIXED_DATA_SYMBOLS.keys()
    baseline=(EXACT/'pending_candidates/load_and_update_persistent_measurement_state_alice.c.txt').read_text()
    sources=dict(typed=baseline,offsets=baseline)
    configs=list(itertools.product(sources,range(16),('uint8_t','uint32_t'),('bitwise','logical','separate'),('unsigned','uint16_t'),('ac6','ac6source')))
    if args.annotation_sweep:
        configs=[('offsets',15,'uint32_t',style,'unsigned','ac6',roots)
                 for style in ('bitwise','separate') for roots in range(16)]
    if args.root_array_sweep:
        configs=[('offsets',15,'uint8_t' if style=='bitwise' else 'uint32_t',style,'unsigned','ac6',roots)
                 for style in ('bitwise','separate') for roots in range(16)]
    if args.limit:configs=configs[:args.limit]
    compilers=arm_compilers.ArmCompilers(build.ARM_TOOLS_DIR)
    def evaluate(config):
        layout,mask,flag,style,index,profile=config[:6]
        code=source_variant(sources[layout],layout,mask,flag,style,index)
        if len(config)>6:
            roots=('cycle_control_state','device_control_state','sr08_shared_context','clock_timekeeping_state')
            types=('history_cycle_state','history_input_state','history_shared_state','history_clock_state')
            for bit,(root,typ) in enumerate(zip(roots,types)):
                if config[6] & (1<<bit):
                    old='=&'+root+';'
                    assert code.count(old)==1,root
                    if args.root_array_sweep:
                        declaration='extern struct '+typ+' '+root+';'
                        assert code.count(declaration)==1,root
                        code=code.replace(declaration,'extern uint8_t '+root+'[];')
                        code=code.replace(old,'=(volatile struct '+typ+' *)'+root+';')
                    else:
                        code=code.replace(old,'=(volatile struct '+typ+' *)__builtin_annotation((uintptr_t)&'+root+',"persistent history root");')
        try:
            with tempfile.TemporaryDirectory(prefix='sr08-history-search-') as directory:
                temp=Path(directory)
                group=compilers.place_group(profile,[(SYMBOL,ENTRY,code)],build.ROOT,temp,fixed,data,'arm-none-eabi-objcopy','arm-none-eabi-readelf')
                binary=(temp/f'{profile}_{SYMBOL}.bin').read_bytes()
                listing=subprocess.check_output(['arm-none-eabi-objdump','-d',str(temp/f'{profile}_{SYMBOL}.axf')],text=True)
                actual=tokens(listing,binary,ENTRY)
                exact=SequenceMatcher(None,expected,actual,autojunk=False).ratio()
                loose=lambda x:[re.sub(r'\b(?:r\d+|ip|lr)\b','R',t) for t in x]
                opcode=SequenceMatcher(None,loose(expected),loose(actual),autojunk=False).ratio()
                distance=sum(a!=b for a,b in zip(binary,reference[ENTRY-build.BASE:]))
                report=dict(config=config,score=exact,opcode_score=opcode,bytes=len(binary),byte_differences=distance,
                            binary_sha256=hashlib.sha256(binary).hexdigest(),source_sha256=hashlib.sha256(code.encode()).hexdigest(),instructions=len(actual))
                return report,code,binary
        except (SystemExit,Exception) as error:
            return dict(config=config,error=str(error)[-1000:]),code,None
    best=(-1,-1);reports=[];seen=set()
    with ThreadPoolExecutor(max_workers=args.workers) as pool:
        pending=[pool.submit(evaluate,c) for c in configs]
        for done,future in enumerate(as_completed(pending),1):
            report,code,binary=future.result();reports.append(report)
            if 'error' not in report:
                key=(report['score'],report['opcode_score'])
                if key>best:
                    best=key
                    (args.output/'best.c').write_text(code)
                    (args.output/'best.bin').write_bytes(binary)
                    (args.output/'best.json').write_text(json.dumps(report,indent=2)+'\n')
                    print(f"best {done}/{len(configs)}: {report}",flush=True)
                seen.add(report['binary_sha256'])
            if done%50==0:
                (args.output/'results.json').write_text(json.dumps(reports,indent=2)+'\n')
                print(f'{done}/{len(configs)} complete; {len(seen)} distinct binaries',flush=True)
    (args.output/'results.json').write_text(json.dumps(reports,indent=2)+'\n')
    print(f'Finished {len(reports)} C variants; {len(seen)} distinct binaries.',flush=True)

if __name__=='__main__':main()
