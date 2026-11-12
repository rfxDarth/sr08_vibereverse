"""Analysis only: reuse unchanged retained objects; compile changed unity C fresh.

All normal firmware builds remain source-only and do not use this cache.
"""
from pathlib import Path
import contextlib
import hashlib
import json
import os
import shutil
import sys

EXACT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(EXACT))
import arm_compilers
import build_v204 as build
import probe_arm_group

proof = json.loads((EXACT / 'pending_candidates/status_dispatch_offset/source_input_hashes.json').read_text())
assert all(hashlib.sha256((build.ROOT / name).read_bytes()).hexdigest() == digest for name, digest in proof.items())
tag = sys.argv[1] if len(sys.argv) > 1 else 'unity'
assert tag.isidentifier()
old = Path('/tmp/sr08-alice-measurement-text-context-retained')
retained = Path('/tmp/sr08-alice-measurement-text-' + tag.replace('_', '-') + '-retained')
shutil.copytree(old, retained)
cache = {p: hashlib.sha256(p.read_bytes()).hexdigest() for p in retained.iterdir()
         if p.suffix in ('.c', '.s') and p.with_suffix('.o').exists()}
original_run = arm_compilers.ArmCompilers.run
hits = []
compiled = []
def cached_run(self, compiler, tool, *args, **kwargs):
    if tool == 'armclang' and '-c' in args and '-o' in args:
        source = Path(args[args.index('-c') + 1])
        output = Path(args[args.index('-o') + 1])
        digest = hashlib.sha256(source.read_bytes()).hexdigest()
        # The same native/LTO set and flags apply to every unchanged source.
        # Only two already-native functions are combined in the changed source.
        if source in cache and cache[source] == digest and output == source.with_suffix('.o') and output.exists():
            hits.append(source.name)
            return ''
        result = original_run(self, compiler, tool, *args, **kwargs)
        cache[source] = digest
        compiled.append(source.name)
        return result
    return original_run(self, compiler, tool, *args, **kwargs)
arm_compilers.ArmCompilers.run = cached_run
probe_arm_group.tempfile.TemporaryDirectory = lambda *args, **kwargs: contextlib.nullcontext(str(retained))
os.environ['SR08_LTO_TRACE'] = '1'
a = 'select_measurement_text_update_per_result_at_aae8'
b = 'update_status_display_using_remainder_rom_at_ab3c'
source = str(EXACT / 'pending_candidates/measurement_text' / (tag + '.c.txt'))
sys.argv = ['probe_arm_group.py', 'ac6lto', a, b, '--native', a, '--native', b,
            '--source', a + '=' + source, '--source', b + '=' + source]
try:
    probe_arm_group.main()
finally:
    report = {'analysis_only': True, 'canonical_input_hashes_verified': len(proof),
              'unchanged_object_reuses': len(hits), 'fresh_compiles': compiled,
              'retained': str(retained)}
    (EXACT / 'pending_candidates/measurement_text' / (tag + '_cache_provenance.json')).write_text(json.dumps(report, indent=2) + '\n')
