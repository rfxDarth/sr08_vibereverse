#!/usr/bin/env python3
"""Bounded ARM5 initializer scheduling experiment; analysis, not a build input."""
from pathlib import Path
import itertools,json,sys,tempfile
E=Path(__file__).resolve().parents[2];sys.path.insert(0,str(E))
import arm_compilers,build_v204 as b
D=Path(__file__).resolve().parent
s=(D.parent/'initialize_shared_control_state_tables.c.txt').read_text()
name='initialize_shared_control_state_tables';start=0x07fcd908
reference=(b.ROOT/'firmware/V204.bin').read_bytes()[64+0xd908:64+0xd990]
m=json.loads(b.MANIFEST.read_text());compiler=arm_compilers.ArmCompilers(b.ARM_TOOLS_DIR)
initial=arm_compilers.COMPILERS['ac5'];results=[];best=None
for pointer,mask,opt in itertools.product((False,True),range(8),('O2','O3')):
 text=s
 if pointer:
  text=text.replace('i < SR08_SENSOR_STATUS_HISTORY_LENGTH; ++i','i < SR08_SENSOR_STATUS_HISTORY_LENGTH;')
  text=text.replace('        state->history_pairs[i].first = 0;\n        state->history_pairs[i].second = 0;', '        volatile struct sr08_sensor_status_word_pair *pair = &state->history_pairs[i];\n        ++i;\n        pair->first = 0;\n        pair->second = 0;')
 if mask&1:
  needle='        pair->first = 0;' if pointer else '        state->history_pairs[i].first = 0;'
  text=text.replace(needle,'        __schedule_barrier();\n'+needle)
 if mask&2:
  needle='        pair->second = 0;' if pointer else '        state->history_pairs[i].second = 0;'
  text=text.replace(needle,'        __schedule_barrier();\n'+needle)
 if mask&4:text=text.replace('    for (uint16_t i = 0; i < SR08_SENSOR_STATUS_SAMPLE_LENGTH;', '    __schedule_barrier();\n    for (uint16_t i = 0; i < SR08_SENSOR_STATUS_SAMPLE_LENGTH;')
 arm_compilers.COMPILERS['ac5']=(initial[0],initial[1],initial[2]+['-'+opt])
 with tempfile.TemporaryDirectory(prefix='sr08-control-barriers-') as t:
  t=Path(t);compiler.place_group('ac5',[(name,start,text)],b.ROOT,t,b.all_fixed_symbols(m),set(b.ram_symbols())|b.FIXED_DATA_SYMBOLS.keys(),'arm-none-eabi-objcopy','arm-none-eabi-readelf');raw=(t/('ac5_'+name+'.bin')).read_bytes()
 score=sum(a!=z for a,z in zip(raw,reference))+abs(len(raw)-len(reference))
 result=dict(pointer=pointer,mask=mask,optimization=opt,bytes=len(raw),differing_bytes=score);results.append(result)
 if best is None or score<best['differing_bytes']:
  best=result;(D/'best.c.txt').write_text(text);(D/'best.json').write_text(json.dumps(best,indent=2)+'\n');print(result,flush=True)
 if score==0:print('BYTE_EXACT',result,flush=True)
(D/'results.json').write_text(json.dumps(results,indent=2)+'\n');print('Finished',len(results),'probes; best',best,flush=True)
