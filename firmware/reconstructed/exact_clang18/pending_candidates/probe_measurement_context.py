#!/usr/bin/env python3
"""Analysis-only probe with the measurement arena's typed RAM alias.

Example: python3 pending_candidates/probe_measurement_context.py ac5 \
    initialize_sensor_processing_state --source \
    initialize_sensor_processing_state=pending_candidates/initialize_sensor_processing_state.c.txt

The normal builder is unchanged. Before installation this alias must be added
explicitly to the shared RAM map, then the whole image and source-only export
must pass canonical hashes. The alias is the observed initializer literal,
not extracted code or a dependency of the normal build.
"""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import probe_arm_group as probe
import build_v204 as build

original_ram_symbols = build.ram_symbols
build.ram_symbols = lambda: dict(original_ram_symbols(), measurement_context_storage=0x07fd0b58)

if __name__ == "__main__":
    probe.main()
