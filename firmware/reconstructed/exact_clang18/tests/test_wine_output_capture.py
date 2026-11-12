"""Regression for inherited Wine stderr descriptors; needs no Wine or SDK."""
import os
from pathlib import Path
import signal
import sys
import tempfile
import time
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from arm_compilers import ArmCompilers


class WineOutputCaptureTest(unittest.TestCase):
    def test_waits_for_compiler_not_background_descriptor_holder(self):
        with tempfile.TemporaryDirectory(prefix="sr08-capture-regression-") as directory:
            root = Path(directory)
            launcher = root / "wine"
            launcher.write_text('#!/bin/sh\nexec /usr/bin/python3 "$@"\n')
            launcher.chmod(0o755)
            pid_file = root / "child.pid"
            (root / "capture-check.exe").write_text(
                "import pathlib, subprocess, sys\n"
                "child = subprocess.Popen([sys.executable, '-c', "
                "'import time; time.sleep(60)'], stdout=subprocess.DEVNULL)\n"
                f"pathlib.Path({str(pid_file)!r}).write_text(str(child.pid))\n"
                "print('compiler output', flush=True)\n"
                "print('compiler diagnostic', file=sys.stderr, flush=True)\n"
                "sys.exit(int(sys.argv[1]))\n"
            )
            compiler = object.__new__(ArmCompilers)
            compiler.bins = {"ac6lto": root}
            compiler.wine_env = dict(os.environ, PATH=str(root) + os.pathsep + os.environ["PATH"])
            for status in (0, 7):
                with self.subTest(status=status):
                    start = time.monotonic()
                    try:
                        if status:
                            with self.assertRaisesRegex(SystemExit, "compiler output") as error:
                                compiler.run("ac6lto", "capture-check", str(status), label="capture regression")
                            self.assertIn("compiler diagnostic", str(error.exception))
                        else:
                            output = compiler.run("ac6lto", "capture-check", str(status), label="capture regression")
                            self.assertEqual(output, "compiler output\n")
                        self.assertLess(time.monotonic() - start, 5)
                    finally:
                        if pid_file.exists():
                            try:
                                os.kill(int(pid_file.read_text()), signal.SIGTERM)
                            except ProcessLookupError:
                                pass
                            pid_file.unlink()


if __name__ == "__main__":
    unittest.main()
