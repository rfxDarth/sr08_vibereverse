"""Probe frozen sixth-merge sources with a fresh compile; retain diagnostics."""
from pathlib import Path
import contextlib
import os
import sys
snapshot=Path('/tmp/sr08-alice-merge6-measurement-source-bundle/firmware/reconstructed/exact_clang18')
sys.path.insert(0,str(snapshot))
import probe_arm_group
retained=Path('/tmp/sr08-alice-merge6-measurement-retained')
retained.mkdir(exist_ok=False)
probe_arm_group.tempfile.TemporaryDirectory=lambda *a,**kw:contextlib.nullcontext(str(retained))
os.environ['SR08_LTO_TRACE']='1'
root=Path('/home/drath/Projects/personal/code/sr08_ai')
sys.argv=['probe_arm_group.py','ac6lto','select_measurement_text_update_per_result_at_aae8',
'--native','select_measurement_text_update_per_result_at_aae8',
'--source','select_measurement_text_update_per_result_at_aae8='+str(root/'firmware/reconstructed/exact_clang18/pending_candidates/measurement_text/candidate.c.txt'),
'--reference',str(root/'firmware/V204.bin'),'--arm-tools-dir',str(root/'Tools')]
probe_arm_group.main()
