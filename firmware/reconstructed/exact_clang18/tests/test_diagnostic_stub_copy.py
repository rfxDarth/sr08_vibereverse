"""Cross-stub copies may trigger a retry, never a successful diagnostic link."""
from pathlib import Path
import sys
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from arm_compilers import temporary_stub_copy_words


class DiagnosticStubCopyTest(unittest.TestCase):
    def test_uses_symbol_section_when_addresses_overlap(self):
        headers = "[293] ER_copy PROGBITS\n[294] ER_code PROGBITS\n"
        symbols = "611: 07fcace8 4 NOTYPE LOCAL DEFAULT 293 __arm_cp.7fcacd0_copy_07fd56d0\n"
        sections = {
            "ER_copy": (0x07fcacd0, 24, bytes(24) + bytes.fromhex("d056fd07")),
            "ER_code": (0x07fcace8, 4, bytes.fromhex("f8b5e120")),
        }
        self.assertEqual(temporary_stub_copy_words(headers, symbols, sections),
                         {0x07fcace8: 0x07fd56d0})

    def test_rejects_unproven_copy_metadata(self):
        headers = "[293] ER_copy PROGBITS\n"
        valid = "611: 07fcace8 4 NOTYPE LOCAL DEFAULT 293 __arm_cp.7fcacd0_copy_07fd56d0\n"
        contents = bytes(24) + bytes.fromhex("d056fd07")
        for symbols, original_size, data in (
            (valid.replace("_copy_", "_word_"), 24, contents),
            (valid.replace(" 4 NOTYPE", " 2 NOTYPE"), 24, contents),
            (valid.replace(" 293 ", " 294 "), 24, contents),
            (valid, 28, contents),
            (valid, 24, contents[:-1]),
            (valid, 24, bytes(28)),
        ):
            with self.subTest(symbols=symbols, size=original_size, data=data):
                self.assertEqual(temporary_stub_copy_words(headers, symbols,
                                 {"ER_copy": (0x07fcacd0, original_size, data)}), {})


if __name__ == "__main__":
    unittest.main()
