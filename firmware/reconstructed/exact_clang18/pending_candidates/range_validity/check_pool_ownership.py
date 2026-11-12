#!/usr/bin/env python3
"""Record OEM Thumb literal-load evidence for the competing device-state pools.

Optional analysis only; the normal source-only builder does not run this or
read the reference firmware. Literal candidates in inline pools are included
conservatively rather than treated as confirmed executable instructions.
"""
from pathlib import Path
import hashlib,json,struct,sys
E=Path(__file__).resolve().parents[2];sys.path.insert(0,str(E))
import build_v204 as b
D=Path(__file__).resolve().parent
m=json.loads(b.MANIFEST.read_text());rows={r['symbol']:r for r in m['sources']}
starts=b.layout_function_starts();image=(b.ROOT/'firmware/V204.bin').read_bytes()[64:]
module={n for c,g in b.ARM_COMPILER_GROUPS if c=='ac6lto' for n in g}
targets=(0x07fc832c,0x07fc84e4,0x07fc8568,0x07fc867c);loads=[]
for name in sorted(module,key=lambda n:rows[n]['address']):
 lo=rows[name]['address'];hi=next(a for a in starts if a>lo)
 for a in range(lo,hi,2):
  v=struct.unpack_from('<H',image,a-b.BASE)[0]
  if v&0xf800!=0x4800:continue
  target=((a+4)&~3)+(v&255)*4
  if target in targets:loads.append(dict(function=name,instruction=f'0x{a:08x}',target=f'0x{target:08x}'))
result=dict(reference_payload_sha256=hashlib.sha256(image).hexdigest(),
 values={f'0x{t:08x}':f'0x{struct.unpack_from("<I",image,t-b.BASE)[0]:08x}' for t in targets},
 main_module_original_loads=loads)
assert not any(x['target'] in ('0x07fc84e4','0x07fc8568') for x in loads)
assert dict(function='configure_radio_state_and_send_command_6a',instruction='0x07fc82b2',target='0x07fc867c') in loads
(D/'pool_ownership.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
