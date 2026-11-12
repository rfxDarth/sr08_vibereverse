#!/usr/bin/env python3
"""Bounded branch-layout experiment; not part of the firmware build.

Scores mask PC-relative LDR displacement bytes only. Installation still
requires the unchanged full linker and byte-parity gates.
"""
from pathlib import Path
import itertools,json,sys,tempfile
E=Path(__file__).resolve().parents[2];sys.path.insert(0,str(E))
import arm_compilers,build_v204 as b
D=Path(__file__).resolve().parent
name='apply_range_mode_validity_checks_preserving_at_8878';address=0x07fc8878
source=(D/'baseline.c.txt').read_text()
conditions=['device_control_state.scan_initialization_status == 1','reading < -16384','reading > 25000','device_control_state.last_probe_status != MOTION_SENSOR_ID']
manifest=json.loads(b.MANIFEST.read_text());fixed=b.all_fixed_symbols(manifest)
data=set(b.ram_symbols())|b.FIXED_DATA_SYMBOLS.keys()
reference=(b.ROOT/'firmware/V204.bin').read_bytes()[64+0x8878:64+0x88ca]
# Byte 0 of a 16-bit LDR literal holds only its immediate displacement.
masked={i for i in range(0,len(reference),2) if int.from_bytes(reference[i:i+2],'little')&0xf800==0x4800}
compiler=arm_compilers.ArmCompilers(b.ARM_TOOLS_DIR);results=[];best=None
for config in itertools.product((-1,0,1),repeat=4):
 text=source
 for condition,hint in zip(conditions,config):
  if hint!=-1:text=text.replace(condition,f'__builtin_expect({condition},{hint})')
 with tempfile.TemporaryDirectory(prefix='sr08-range-layout-') as tmp:
  tmp=Path(tmp);group=compiler.place_group('ac6',[(name,address,text)],b.ROOT,tmp,fixed,data,'arm-none-eabi-objcopy','arm-none-eabi-readelf')
  raw=(tmp/('ac6_'+name+'.bin')).read_bytes()
 score=sum(raw[i]!=reference[i] for i in range(min(len(raw),len(reference))) if i not in masked)+max(0,len(reference)-len(raw))
 result=dict(config=config,bytes=len(raw),masked_code_differences=score);results.append(result)
 if best is None or score<best['masked_code_differences']:
  best=result;(D/'best.c.txt').write_text(text);(D/'best.bin').write_bytes(raw);(D/'best.json').write_text(json.dumps(best,indent=2)+'\n');print(result,flush=True)
(D/'search_results.json').write_text(json.dumps(results,indent=2)+'\n')
print('finished',len(results),'variants; best',best,flush=True)
