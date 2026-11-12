#!/usr/bin/env python3
"""Analysis-only aliases for the HID sequence C candidate.

Run from Alice's tree, for example:
python3 pending_candidates/probe_hid_sequences.py ac6 advance_registration_data_transfers \
    --source advance_registration_data_transfers=pending_candidates/advance_registration_data_transfers.c.txt

The tables already exist inside the fixed data region at 0x07fcfad2. This
probe only names their observed subregions; it adds no bytes to the image and
is not an input to the normal build. Installation needs explicit aliases and
full image/source-only validation after instruction parity is achieved.
"""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import probe_arm_group as probe
import build_v204 as build

original_ram_symbols = build.ram_symbols
build.ram_symbols = lambda: dict(original_ram_symbols(), hid_sequence_state=0x07fd1ea4)
build.FIXED_DATA_SYMBOLS.update(hid_mouse_sequence=0x07fcfb7a, hid_touch_y_sequence=0x07fcfb8e)

if __name__ == "__main__":
    probe.main()
