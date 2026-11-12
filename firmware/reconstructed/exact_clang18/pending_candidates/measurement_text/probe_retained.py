"""Retain real link diagnostics for the pending measurement-text C candidate."""
from pathlib import Path
import contextlib
import os
import sys

EXACT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(EXACT))
import probe_arm_group

retained = Path('/tmp/sr08-alice-measurement-text-context-retained')
retained.mkdir(exist_ok=False)
probe_arm_group.tempfile.TemporaryDirectory = lambda *args, **kwargs: contextlib.nullcontext(str(retained))
os.environ['SR08_LTO_TRACE'] = '1'
sys.argv = ['probe_arm_group.py', 'ac6lto',
    'select_measurement_text_update_per_result_at_aae8',
    '--native', 'select_measurement_text_update_per_result_at_aae8',
    '--source', 'select_measurement_text_update_per_result_at_aae8=' +
    str(EXACT / 'pending_candidates/measurement_text/candidate.c.txt')]
probe_arm_group.main()
