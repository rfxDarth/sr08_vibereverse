#!/usr/bin/env python3
"""Verify that diagnostic overlap inspection cannot accept overlapping output.

Requires the same licensed LTO compiler as build_v204.py. This uses a tiny
synthetic function and context stub; it needs no original firmware or SDK data.
"""
from pathlib import Path
import tempfile
import arm_compilers


class RecordingCompilers(arm_compilers.ArmCompilers):
    def __init__(self, tools_dir):
        super().__init__(tools_dir)
        self.diagnostic_links = 0

    def run(self, compiler, tool, *args, label):
        if tool == "armlink" and "--diag_warning=6291,6221" in args:
            self.diagnostic_links += 1
        return super().run(compiler, tool, *args, label=label)


def main():
    root = Path(__file__).resolve().parents[3]
    compilers = RecordingCompilers(root / "Tools")
    with tempfile.TemporaryDirectory(prefix="sr08-overlap-rejection-") as directory:
        try:
            # This arithmetic needs eight Thumb bytes, but the next context range
            # begins after four. This is a real collision, not a literal copy
            # that the validator can eliminate by retrying a load.
            compilers.place_lto_module(
                [("overlap_test", 0x07fc1000,
                  "unsigned overlap_test(unsigned value) { return value * 3u + 1u; }\n")],
                [], root, Path(directory), {}, set(),
                "arm-none-eabi-objcopy", "arm-none-eabi-readelf",
                stubs=[(0x07fc1004, bytes.fromhex("c046c046"))])
        except SystemExit as error:
            if "L6291E" not in str(error) and "L6221E" not in str(error):
                raise
        else:
            raise AssertionError("overlapping placements were accepted")
    assert compilers.diagnostic_links == 1, "diagnostic recovery was not exercised"
    print("PASS: diagnostic image inspected; unavoidable overlap rejected")


if __name__ == "__main__":
    main()
