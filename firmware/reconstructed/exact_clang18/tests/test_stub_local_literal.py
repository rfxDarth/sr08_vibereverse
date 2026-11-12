"""A new C module must not hide equal literals already in surrounding code."""
import sys
from pathlib import Path
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from arm_compilers import stub_assembly


class LocalLiteralTest(unittest.TestCase):
    start = 0x07fc8500
    target = 0x07fc8600
    value = 0x07fd1e28

    def stub(self, module, local=True, sealed=False):
        half = 0x4800 | ((self.target - ((self.start + 4) & ~3)) // 4)
        data = half.to_bytes(2, "little") + bytes.fromhex("704700bf00bf")
        if local:
            data += self.value.to_bytes(4, "little")
        return stub_assembly(
            "reader", self.start, data, {self.start + 8} if local else set(),
            image_word=lambda a: self.value if not module and a == self.target else None,
            in_module=lambda a: module and a == self.target,
            context_word=lambda a: self.value if a == self.target else None,
            sealed=lambda a: sealed and a == self.start + 8,
        )

    def test_fixed_target_reuses_local_duplicate(self):
        source = self.stub(module=False)
        self.assertIn("ldr r0, __arm_cp.7fc8500_8", source)
        self.assertNotIn("_copy_", source)

    def test_module_target_still_reuses_local_duplicate(self):
        source = self.stub(module=True)
        self.assertIn("ldr r0, __arm_cp.7fc8500_8", source)
        self.assertNotIn("_copy_", source)

    def test_missing_local_word_keeps_copy_retry(self):
        source = self.stub(module=True, local=False)
        self.assertIn("ldr r0, __arm_cp.7fc8500_copy_07fd1e28", source)

    def test_sealed_local_word_is_not_reused(self):
        source = self.stub(module=True, sealed=True)
        self.assertIn("ldr r0, __arm_cp.7fc8500_copy_07fd1e28", source)
        self.assertNotIn("ldr r0, __arm_cp.7fc8500_8", source)


if __name__ == "__main__":
    unittest.main()
