#!/usr/bin/env python3
"""Link currently exact Clang 18 C functions and recovered V204 data at target VMAs."""
from __future__ import annotations

import argparse
import csv
import importlib.util
import re
import subprocess
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
DECOMPILED = ROOT / "firmware" / "decompiled"
DATA_DIR = ROOT / "firmware" / "reconstructed" / "data"
EXACT_DIR = Path(__file__).resolve().parent
DIRECT_CSV = DECOMPILED / "V204_clang18_fomit_linked_c_scan_current.csv"
GLOBALS_CSV = DECOMPILED / "V204_clang18_data_literal_3global_current.csv"
DIRECT_SOURCES = DECOMPILED / "V204_functions" / "thumb_full" / "functions"
GLOBAL_SOURCES = EXACT_DIR / "data_globals"
MANUAL_SOURCES = [
    EXACT_DIR.parent / "candidates" / "07fcaa4c.c",
    EXACT_DIR.parent / "candidates" / "07fc33a4.c",
    EXACT_DIR.parent / "candidates" / "07fc549c.c",
    EXACT_DIR.parent / "candidates" / "07fc97d8.c",
    EXACT_DIR.parent / "candidates" / "07fc9880.c",
    EXACT_DIR.parent / "candidates" / "07fccf38.c",
    EXACT_DIR.parent / "candidates" / "07fc5808.c",
    EXACT_DIR.parent / "candidates" / "07fc1f00.c",
    EXACT_DIR.parent / "candidates" / "07fc1f10.c",
    EXACT_DIR.parent / "candidates" / "07fc20d4.c",
    EXACT_DIR.parent / "candidates" / "07fc3b40.c",
    EXACT_DIR.parent / "candidates" / "07fc5f80.c",
    EXACT_DIR.parent / "candidates" / "07fc2ff4.c",
    EXACT_DIR.parent / "candidates" / "07fcd8a0.c",
    EXACT_DIR.parent / "candidates" / "07fcebc4.c",
    EXACT_DIR.parent / "candidates" / "07fc97ac.c",
    EXACT_DIR.parent / "candidates" / "07fc1e60.c",
    EXACT_DIR.parent / "candidates" / "07fc2e6c.c",
    EXACT_DIR.parent / "candidates" / "07fc2da8.c",
    EXACT_DIR.parent / "candidates" / "07fcca2c.c",
    EXACT_DIR.parent / "candidates" / "07fca904.c",
    EXACT_DIR.parent / "candidates" / "07fc8b20.c",
    EXACT_DIR.parent / "candidates" / "07fc8b48.c",
    EXACT_DIR.parent / "candidates" / "07fc8b54.c",
    EXACT_DIR.parent / "candidates" / "07fc8b60.c",
    EXACT_DIR.parent / "candidates" / "07fc8b88.c",
    EXACT_DIR.parent / "candidates" / "07fc8b94.c",
    EXACT_DIR.parent / "candidates" / "07fc8ba0.c",
    EXACT_DIR.parent / "candidates" / "07fc8bac.c",
    EXACT_DIR.parent / "candidates" / "07fc8bb8.c",
    EXACT_DIR.parent / "candidates" / "07fc8bc4.c",
    EXACT_DIR.parent / "candidates" / "07fc8bd0.c",
    EXACT_DIR.parent / "candidates" / "07fc4440.c",
    EXACT_DIR.parent / "candidates" / "07fc33c0.c",
    EXACT_DIR.parent / "candidates" / "07fc8018.c",
    EXACT_DIR.parent / "candidates" / "07fc2e50.c",
    EXACT_DIR.parent / "candidates" / "07fc8004.c",
    EXACT_DIR.parent / "candidates" / "07fc8b2c.c",
    EXACT_DIR.parent / "candidates" / "07fc8b6c.c",
    EXACT_DIR.parent / "candidates" / "07fc1fd0.c",
    EXACT_DIR.parent / "candidates" / "07fc6440.c",
    EXACT_DIR.parent / "candidates" / "07fceedc.c",
    EXACT_DIR.parent / "candidates" / "07fc72f0.c",
    EXACT_DIR.parent / "candidates" / "07fc8584.c",
    EXACT_DIR.parent / "candidates" / "07fc869c.c",
    EXACT_DIR.parent / "candidates" / "07fc8680.c",
    EXACT_DIR.parent / "candidates" / "07fcacd0.c",
    EXACT_DIR.parent / "candidates" / "07fcacb8.c",
    EXACT_DIR.parent / "candidates" / "07fcaf84.c",
    EXACT_DIR.parent / "candidates" / "07fcbbdc.c",
    EXACT_DIR.parent / "candidates" / "07fc5740.c",
    EXACT_DIR.parent / "candidates" / "07fc677c.c",
    EXACT_DIR.parent / "candidates" / "07fcba98.c",
    EXACT_DIR.parent / "candidates" / "07fc7f94.c",
    EXACT_DIR.parent / "candidates" / "07fc57b8.c",
    EXACT_DIR.parent / "candidates" / "07fc66c0.c",
    EXACT_DIR.parent / "candidates" / "07fc8a0c.c",
    EXACT_DIR.parent / "candidates" / "07fc5200.c",
    EXACT_DIR.parent / "candidates" / "07fcc118.c",
    EXACT_DIR.parent / "candidates" / "07fc3a18.c",
    EXACT_DIR.parent / "candidates" / "07fc31f8.c",
    EXACT_DIR.parent / "candidates" / "07fc5654.c",
    EXACT_DIR.parent / "candidates" / "07fcc9c8.c",
    EXACT_DIR.parent / "candidates" / "07fcc9a4.c",
    EXACT_DIR.parent / "candidates" / "07fc5484.c",
    EXACT_DIR.parent / "candidates" / "07fc0194.c",
    EXACT_DIR.parent / "candidates" / "07fca8ec.c",
    EXACT_DIR.parent / "candidates" / "07fcad54.c",
    EXACT_DIR.parent / "candidates" / "07fca9b4.c",
    EXACT_DIR.parent / "candidates" / "07fcaac8.c",
    EXACT_DIR.parent / "candidates" / "07fcbbc4.c",
    EXACT_DIR.parent / "candidates" / "07fc31d4.c",
    EXACT_DIR.parent / "candidates" / "07fc1a2a.c",
    EXACT_DIR.parent / "candidates" / "07fc20b4.c",
    EXACT_DIR.parent / "candidates" / "07fc1b3e.c",
    EXACT_DIR.parent / "candidates" / "07fc1b66.c",
    EXACT_DIR.parent / "candidates" / "07fcee94.c",
    EXACT_DIR.parent / "candidates" / "07fc2fcc.c",
    EXACT_DIR.parent / "candidates" / "07fc3564.c",
    EXACT_DIR.parent / "candidates" / "07fc3e40.c",
    EXACT_DIR.parent / "candidates" / "07fc4144.c",
    EXACT_DIR.parent / "candidates" / "07fc3e60.c",
    EXACT_DIR.parent / "candidates" / "07fc5db4.c",
    EXACT_DIR.parent / "candidates" / "07fc0758.c",
    EXACT_DIR.parent / "candidates" / "07fc1e70.c",
    EXACT_DIR.parent / "candidates" / "07fcbb38.c",
    EXACT_DIR.parent / "candidates" / "07fcbb10.c",
    EXACT_DIR.parent / "candidates" / "07fcd0c8.c",
    EXACT_DIR.parent / "candidates" / "07fcbb94.c",
    EXACT_DIR.parent / "candidates" / "07fccf5c.c",
    EXACT_DIR.parent / "candidates" / "07fc2568.c",
    EXACT_DIR.parent / "candidates" / "07fc4fa0.c",
    EXACT_DIR.parent / "candidates" / "07fcb080.c",
    EXACT_DIR.parent / "candidates" / "07fc2e1c.c",
    EXACT_DIR.parent / "candidates" / "07fc3220.c",
    EXACT_DIR.parent / "candidates" / "07fc54f8.c",
    EXACT_DIR.parent / "candidates" / "07fc2efc.c",
    EXACT_DIR.parent / "candidates" / "07fc5230.c",
    EXACT_DIR.parent / "candidates" / "07fc5038.c",
    EXACT_DIR.parent / "candidates" / "07fc54b4.c",
    EXACT_DIR.parent / "candidates" / "07fc5f38.c",
    EXACT_DIR.parent / "candidates" / "07fc3dd8.c",
    EXACT_DIR.parent / "candidates" / "07fc33e4.c",
    EXACT_DIR.parent / "candidates" / "07fc9858.c",
    EXACT_DIR.parent / "candidates" / "07fc5070.c",
    EXACT_DIR.parent / "candidates" / "07fceeac.c",
    EXACT_DIR.parent / "candidates" / "07fcc2f0.c",
    EXACT_DIR.parent / "candidates" / "07fc2488.c",
    EXACT_DIR.parent / "candidates" / "07fc3b58.c",
    EXACT_DIR.parent / "candidates" / "07fc5940.c",
    EXACT_DIR.parent / "candidates" / "07fc259c.c",
    EXACT_DIR.parent / "candidates" / "07fc01b4.c",
    EXACT_DIR.parent / "candidates" / "07fc8c3c.c",
    EXACT_DIR.parent / "candidates" / "07fcb770.c",
    EXACT_DIR.parent / "candidates" / "07fc0874.c",
    EXACT_DIR.parent / "candidates" / "07fc1144.c",
    EXACT_DIR.parent / "candidates" / "07fc5848.c",
    EXACT_DIR.parent / "candidates" / "07fc1d10_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc1928_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc1a3a_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc1ab4_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc5294_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc1b98_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc1988_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc75d4_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc077e_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcf014_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc532c_exact.c",
    EXACT_DIR.parent / "candidates" / "07fccf80_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcb8d8_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcb04c_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcb014_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc1904_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc7358_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcb0a8_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcb0d0_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcd99c_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc0130_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc0138_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc0144_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc014c_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc0164_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc022a_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc74a8_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc5260_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc5fb0_multirange.c",
    EXACT_DIR.parent / "candidates" / "07fc98a0_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcb178_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcbbf4_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc65d0_multirange.c",
    EXACT_DIR.parent / "candidates" / "07fc042a_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc1696_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc3e08_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc4400_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcac7c_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc7fcc_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcab78_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcc538_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc17bc_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcab3c_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc97f0_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc8ad8_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc1d44_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc85a0_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc0a2a_multirange.c",
    EXACT_DIR.parent / "candidates" / "07fc1ea4_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc01e8_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc87f4_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc3410_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc3460_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc58fc_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc74d4_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcee4c_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc1da8_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc43a4_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc4458_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc6458_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc8fb0_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcb7d4_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc022c_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc575c_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc1ff4_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc8bdc_exact.c",
    EXACT_DIR.parent / "candidates" / "07fca914_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc5600_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc6724_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc09dc_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc334c_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc58ac_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcd8b4_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcebd8_exact.c",
    EXACT_DIR.parent / "candidates" / "07fca84c_exact.c",
    EXACT_DIR.parent / "candidates" / "07fca89c_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcaae8_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcabb4_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc1894_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc3254_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc8878_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc16f8_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc2dc4_exact.c",
    EXACT_DIR.parent / "candidates" / "07fca960_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcac20_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc4fc8_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc519c_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc6568_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc80d8_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc8a78_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc61e4_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc8f48_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc89b0_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcaa68_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc2048_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc2f2c_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcace8_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc37d0_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc40a0_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc6804_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc8500_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc1f34_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc3d6c_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc4164_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc7284_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcc4b0_exact.c",
    EXACT_DIR.parent / "candidates" / "07fca9d0_exact.c",
    EXACT_DIR.parent / "candidates" / "07fcad78_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc8774_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc3148_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc132a_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc5dd8_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc4f34_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc24dc_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc118a_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc1394_exact.c",
    EXACT_DIR.parent / "candidates" / "07fc8040_dispatch.c",
    EXACT_DIR.parent / "candidates" / "07fc8068_cases.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc6fc0_case_prefix.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc6fc0_case_body.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc65d0_cases.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc6dbc_entry.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc6dbc_switch.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc6dbc_exit.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc5fb0_cases_low.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc5fb0_cases_high.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc65d0_fault.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc7c88_case_zero.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc7c88_case_tail.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc76a0_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc6fc0_entry.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc6fc0_exit.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc8134_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc6bf4_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc6a40_entry.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc6a40_body.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc5ab0_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc77fc_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc44a8_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcdd68_part0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcdd68_part1.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcdd68_part2.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcdd68_part3.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc9da0_part0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc9da0_part1.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc9da0_part2.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc25c4_part0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc25c4_part1.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc25c4_part2.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc25c4_part3.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc25c4_part4.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc9104_part0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc9104_part1.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc9104_part2.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcb1b0_part0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcb1b0_part1.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcca68_part0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcca68_part1.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc48a8_part0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc48a8_part1.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc98d4_part0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc98d4_part1.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcd9c8_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcd4f8_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcbc40_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc20f0_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc0e18_part0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc0e18_part1.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc1426_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc0bac_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc3584_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcd2dc_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcec2c_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc3ea0_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcd0f0_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc3838_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc8c90_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc41e4_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcc148_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc3b78_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc7db4_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc8354_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcc578_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcc728_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc04fc_part0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc04fc_part1.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcadf8_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fca64c_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc08ba_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc7380_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc0a98_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fceef8_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc686c_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc11f8_part0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc11f8_part1.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc4d6c_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc0664_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc5968_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc60ec_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcb980_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcc8b0_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc50b4_exact.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc02ec_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc0374_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc180c_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc1c18_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc302c_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc32bc_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc34a8_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc4e98_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc552c_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc56a0_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc5e54_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc625c_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc6358_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc64a8_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc6998_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc7538_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc7bcc_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc7c88_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc7c88_extra1.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc7c88_extra2.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc82b0_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc85e0_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc86b8_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc86b8_extra1.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc88e0_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc8e58_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc9004_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fca7a0_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fca7a0_extra1.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcaf9c_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcb82c_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcc31c_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcc414_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcd908_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc0274_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc046e_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc046e_extra1.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc174c_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc3a38_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc3ab0_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc5c44_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc5cbc_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fc5d34_extra0.c",
    EXACT_DIR.parent / "candidates" / "FUN_07fcb0f8_extra0.c",
]
MANUAL_CSV = EXACT_DIR.parent / "candidates" / "V204_manual_exact.csv"
PAYLOAD = DECOMPILED / "V204.payload.bin"
BASE = 0x7FC0000
FLAGS = ["--target=arm-none-eabi", "-mcpu=cortex-m0", "-mthumb",
         "-std=gnu89", "-ffreestanding", "-fno-builtin",
         "-ffunction-sections", "-fdata-sections", "-w", "-Os",
         "-fomit-frame-pointer"]
SECTION_RE = re.compile(r"^\s*\d+\s+(\.v204\.(?:data|auto|func)\.[0-9a-fA-F]+)\s+"
                        r"([0-9a-fA-F]+)\s+([0-9a-fA-F]+)\s", re.M)
COMMENT_RE = re.compile(r"/\*.*?\*/|//[^\n]*", re.S)
FUN_RE = re.compile(r"\bFUN_([0-9a-fA-F]{8})\b")
ROM_RE = re.compile(r"\bfunc_0x([0-9a-fA-F]{8})\b")
IDENTIFIER_RE = re.compile(r"\b[A-Za-z_][A-Za-z0-9_]*\b")


def read_csv(path: Path) -> list[dict[str, str]]:
    with path.open(newline="") as stream:
        return list(csv.DictReader(stream))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--cc", default="clang-18")
    parser.add_argument("--ld", default="arm-none-eabi-ld")
    parser.add_argument("--objcopy", default="arm-none-eabi-objcopy")
    parser.add_argument("--objdump", default="arm-none-eabi-objdump")
    parser.add_argument("--output", type=Path,
                        default=EXACT_DIR / "V204_exact.elf")
    parser.add_argument("--flat-output", type=Path,
                        help="write a raw image from linked sections; requires complete coverage")
    parser.add_argument("--container-output", type=Path,
                        help="prepend the compiled 64-byte SUOTA header and verify the full V204.bin")
    args = parser.parse_args()
    payload = PAYLOAD.read_bytes()
    direct_rows = [r for r in read_csv(DIRECT_CSV) if r["status"] == "exact"]
    global_rows = [r for r in read_csv(GLOBALS_CSV) if r["status"] == "exact"]
    manual_rows = [r for r in read_csv(MANUAL_CSV) if r["status"] == "exact"]
    if len(manual_rows) != len(MANUAL_SOURCES):
        raise SystemExit("manual exact manifest/source count mismatch")
    for row, source in zip(manual_rows, MANUAL_SOURCES):
        if row["source_file"] != source.name:
            raise SystemExit(f"manual source mismatch for {row['address']}")
    functions = direct_rows + global_rows + manual_rows
    starts = [int(r["address"], 16) for r in functions]
    if len(starts) != len(set(starts)):
        raise SystemExit("duplicate exact function starts in source manifests")

    sys_path = str(DECOMPILED)
    import sys
    sys.path.insert(0, sys_path)
    import scan_linked_c_matches as direct_scanner

    with (DECOMPILED / "V204_functions" / "thumb_full" / "index.tsv").open(
            newline="") as stream:
        function_rows = list(csv.DictReader(stream, delimiter="\t"))
    function_addresses = {r["name"]: int(r["address"], 16)
                          for r in function_rows}
    with (DECOMPILED / "V204_ROM_SYMBOLS.csv").open(newline="") as stream:
        rom_rows = list(csv.DictReader(stream))
    rom_addresses = {r["symbol"]: int(r["address"], 16)
                     for r in rom_rows if r["symbol"]}

    all_source = []
    source_specs = []
    for row in direct_rows:
        address = row["address"].lower().removeprefix("0x")
        source = DIRECT_SOURCES / f"{address}.c"
        code = source.read_text(errors="replace")
        source_specs.append((row, source, direct_scanner.PREAMBLE + code))
        all_source.append(code)
    for row in global_rows:
        address = row["address"].lower().removeprefix("0x")
        source = GLOBAL_SOURCES / f"{address}.c"
        code = source.read_text(errors="replace")
        source_specs.append((row, source, code))
        all_source.append(code)
    for row, source in zip(manual_rows, MANUAL_SOURCES):
        code = source.read_text(errors="replace")
        source_specs.append((row, source, code))
        all_source.append(code)

    defined_functions = {r["function"] for r in functions}
    referenced_functions: set[str] = set()
    referenced_rom: set[str] = set()
    for code in all_source:
        clean = COMMENT_RE.sub("", code)
        referenced_functions.update(f"FUN_{x.lower()}" for x in FUN_RE.findall(clean))
        referenced_functions.update(name for name in IDENTIFIER_RE.findall(clean)
                                    if name in function_addresses)
        referenced_rom.update(f"func_0x{x.lower()}" for x in ROM_RE.findall(clean))
    referenced_functions.difference_update(defined_functions)
    symbols = set().union(*(set(IDENTIFIER_RE.findall(COMMENT_RE.sub("", x)))
                            for x in all_source))
    named_rom = symbols & rom_addresses.keys()
    defs: dict[str, int] = {}
    for name in referenced_functions:
        if name in function_addresses:
            defs[name] = function_addresses[name]
    for name in referenced_rom:
        address = int(name.rsplit("_", 1)[1], 16)
        defs[name] = address
    for name in named_rom:
        defs[name] = rom_addresses[name]

    with tempfile.TemporaryDirectory(prefix="v204-partial-exact-") as directory:
        temp = Path(directory)
        objects = []
        for number, (row, source, code) in enumerate(source_specs):
            cfile = temp / f"function_{number:03}.c"
            obj = temp / f"function_{number:03}.o"
            cfile.write_text(code)
            build = subprocess.run([args.cc, *FLAGS, "-c", str(cfile), "-o", str(obj)],
                                   capture_output=True, text=True)
            if build.returncode:
                raise SystemExit(f"compile failed for {row['address']} ({source}):\n"
                                 f"{build.stderr[-2000:]}")
            objects.append(obj)

        for i, source in enumerate((DATA_DIR / "V204_tables.c",
                                    DATA_DIR / "V204_ghidra_data.c")):
            obj = temp / f"data_{i}.o"
            build = subprocess.run([args.cc, *FLAGS, "-c", str(source), "-o", str(obj)],
                                   capture_output=True, text=True)
            if build.returncode:
                raise SystemExit(f"compile failed for {source}:\n{build.stderr[-2000:]}")
            objects.append(obj)

        command = [args.ld, "-T", str(DATA_DIR / "V204_data_sections.ld")]
        command.extend(f"--defsym={name}=0x{address:x}"
                       for name, address in sorted(defs.items()))
        command.extend(str(obj) for obj in objects)
        command.extend(["-o", str(args.output)])
        link = subprocess.run(command, capture_output=True, text=True)
        if link.returncode:
            raise SystemExit(f"link failed:\n{link.stderr[-4000:]}")
        args.output.parent.mkdir(parents=True, exist_ok=True)
        headers = subprocess.run([args.objdump, "-h", str(args.output)], check=True,
                                 capture_output=True, text=True).stdout
        sections = SECTION_RE.findall(headers)
        if not sections:
            raise SystemExit("no V204 exact sections in linked ELF")
        covered: set[int] = set()
        want_image = args.flat_output or args.container_output
        reconstructed = bytearray(len(payload)) if want_image else None
        for name, size_hex, vma_hex in sections:
            address, size, vma = int(name.rsplit(".", 1)[1], 16), \
                                 int(size_hex, 16), int(vma_hex, 16)
            if address != vma:
                raise SystemExit(f"{name}: VMA 0x{vma:x} != address 0x{address:x}")
            span = set(range(address, address + size))
            if covered & span:
                raise SystemExit(f"overlapping linked sections at {name}")
            covered.update(span)
            if address < BASE or address + size > BASE + len(payload):
                raise SystemExit(f"{name}: outside V204 payload")
            output = temp / f"{address:08x}.bin"
            subprocess.run([args.objcopy, "-O", "binary", "-j", name,
                            str(args.output), str(output)], check=True)
            actual = output.read_bytes()
            expected = payload[address - BASE:address - BASE + size]
            if actual != expected:
                raise SystemExit(f"{name}: bytes differ from V204 payload")
            if reconstructed is not None:
                offset = address - BASE
                reconstructed[offset:offset + size] = actual
        if want_image:
            if len(covered) != len(payload):
                raise SystemExit(f"cannot write complete image: {len(payload) - len(covered)} "
                                 "payload bytes are uncovered")
        if args.flat_output:
            args.flat_output.parent.mkdir(parents=True, exist_ok=True)
            args.flat_output.write_bytes(reconstructed)
            print(f"flat image: {args.flat_output} ({len(reconstructed)} bytes)")
        if args.container_output:
            original = (ROOT / "firmware" / "V204.bin").read_bytes()
            if original[64:] != payload:
                raise SystemExit("V204.bin is not the expected 64-byte header plus payload")
            header_source = DATA_DIR / "V204_ota_header.c"
            header_obj = temp / "v204_ota_header.o"
            build = subprocess.run([args.cc, *FLAGS, "-c", str(header_source),
                                    "-o", str(header_obj)], capture_output=True, text=True)
            if build.returncode:
                raise SystemExit(f"compile failed for {header_source}:\n{build.stderr[-2000:]}")
            header_path = temp / "v204_ota_header.bin"
            subprocess.run([args.objcopy, "-O", "binary", "-j", ".v204.header",
                            str(header_obj), str(header_path)], check=True)
            header = header_path.read_bytes()
            if len(header) != 64 or header != original[:64]:
                raise SystemExit("compiled C container header does not match V204.bin")
            container = header + reconstructed
            if container != original:
                raise SystemExit("reconstructed OTA container differs from V204.bin")
            args.container_output.parent.mkdir(parents=True, exist_ok=True)
            args.container_output.write_bytes(container)
            print(f"OTA container: {args.container_output} ({len(container)} bytes)")
        print(f"linked and verified {len(sections)} sections, {len(covered)} bytes "
              f"({100 * len(covered) / len(payload):.2f}% of payload); "
              f"{len(functions)} exact C functions")
        print(f"ELF: {args.output}")


if __name__ == "__main__":
    main()
