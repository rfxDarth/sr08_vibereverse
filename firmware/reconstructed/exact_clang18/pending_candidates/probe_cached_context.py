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

EXACT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(EXACT))
import arm_compilers
import build_v204 as build
import probe_arm_group

proof = json.loads((EXACT / 'pending_candidates/status_dispatch_offset/source_input_hashes.json').read_text())
assert all(hashlib.sha256((build.ROOT / name).read_bytes()).hexdigest() == digest for name, digest in proof.items())
tag = sys.argv[1]
assert tag.isidentifier()
probe_args = sys.argv[2:]
assert probe_args and probe_args[0] == 'ac6lto'
assert not any(arg == '--flag' or arg.startswith('--flag=') for arg in probe_args)
old = Path('/tmp/sr08-alice-measurement-text-context-retained')
retained = Path('/tmp/sr08-alice-cached-context-' + tag)
shutil.copytree(old, retained)
old_native = build.LTO_NATIVE_UNITS | {'select_measurement_text_update_per_result_at_aae8'}
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
        expected_lto = source.stem.removeprefix('lto_') not in old_native
        profile_matches = source.suffix != '.c' or (('-flto' in args) == expected_lto)
        if profile_matches and source in cache and cache[source] == digest and output == source.with_suffix('.o') and output.exists():
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
sys.argv = ['probe_arm_group.py', *probe_args]
try:
    probe_arm_group.main()
finally:
    report = {'analysis_only': True, 'canonical_input_hashes_verified': len(proof),
              'unchanged_object_reuses': len(hits), 'fresh_compiles': compiled,
              'retained': str(retained), 'probe_args': probe_args}
    (EXACT / 'pending_candidates' / ('cached_context_' + tag + '_provenance.json')).write_text(json.dumps(report, indent=2) + '\n')
