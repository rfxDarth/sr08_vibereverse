#!/usr/bin/env python3
"""Rank display pattern C assignment orders; a zero score still requires full linker/byte gates."""
import sys,itertools,json,tempfile,hashlib
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor,as_completed
E=Path(__file__).resolve().parents[2];sys.path.insert(0,str(E))
import arm_compilers,build_v204 as b
name='select_two_display_patterns_mode_flag_at_ab78';start=0x07fcab78
base=(E/'pending_candidates/display_pointer_views/pattern_array_view.c.txt').read_text()
lo=base.index('    uint32_t first,');hi=base.index('    volatile uint8_t *display',lo)
fields=['first','second','third','fourth','fifth'];values0=[58,24,36,111,62];values1=[19,55,91,107,107]
m=json.loads(b.MANIFEST.read_text());fixed=b.all_fixed_symbols(m);data=set(b.ram_symbols())|b.FIXED_DATA_SYMBOLS.keys();c=arm_compilers.ArmCompilers(b.ARM_TOOLS_DIR)
reference=(b.ROOT/'firmware/V204.bin').read_bytes()[64:]
assert hashlib.sha256(reference).hexdigest()==b.CANONICAL_PAYLOAD_SHA256
expected=reference[0xab78:0xabb4]
out=Path('/tmp/sr08-alice-display-pattern-search');out.mkdir(exist_ok=True)
def test(config):
 order,style=config
 if style=='ternary':
  body='    unsigned mode=config[0x30]&2;\n'+''.join(f'    uint32_t {fields[i]}=mode?{values1[i]}:{values0[i]};\n' for i in order)
 else:
  body='    uint32_t '+','.join(fields[i] for i in order)+';\n    if ((config[0x30]&2)==0) {\n'
  body+=''.join(f'        {fields[i]}={values0[i]};\n' for i in order)+'    } else {\n'
  body+=''.join(f'        {fields[i]}={values1[i]};\n' for i in order)+'    }\n'
 source=base[:lo]+body+base[hi:]
 try:
  with tempfile.TemporaryDirectory(prefix='sr08-pattern-search-') as t:
   p=Path(t);c.place_group('ac6',[(name,start,source)],b.ROOT,p,fixed,data,'arm-none-eabi-objcopy','arm-none-eabi-readelf')
   binary=(p/f'ac6_{name}.bin').read_bytes()
  # Exclude only the two PC-relative load displacement bytes; full OEM gate is still required.
  differences=sum(x!=y for i,(x,y) in enumerate(zip(binary,expected)) if i not in (4,36))+abs(len(binary)-len(expected))
  return dict(order=order,style=style,differences=differences,bytes=len(binary),sha256=hashlib.sha256(binary).hexdigest()),source,binary
 except (SystemExit,Exception) as e:return dict(error=str(e)),source,None
reports=[];best=9999
with ThreadPoolExecutor(max_workers=3) as pool:
 for f in as_completed([pool.submit(test,(order,style)) for order in itertools.permutations(range(5)) for style in ['if','ternary']]):
  report,source,binary=f.result();reports.append(report)
  if 'error' not in report and report['differences']<best:
   best=report['differences'];(out/'best.c').write_text(source);(out/'best.bin').write_bytes(binary);(out/'best.json').write_text(json.dumps(report,indent=2));print(report,flush=True)
(out/'results.json').write_text(json.dumps(reports,indent=2));print('Finished',len(reports),'forms;',len({r.get('sha256') for r in reports}),'binaries',flush=True)
