"""A later-linked module must keep its gap in an earlier module's layout."""
from pathlib import Path
import sys
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from arm_compilers import lto_function_region_base


class LtoRegionGapTest(unittest.TestCase):
    def test_publisher_after_radio_dispatcher_keeps_its_address(self):
        self.assertEqual(lto_function_region_base(0x07fc8774, 0x07fc869c,
                                                 {0x07fc8040, 0x07fc86b8}),
                         "0x07fc8774 FIXED")

    def test_actual_consecutive_functions_still_share_a_run(self):
        self.assertEqual(lto_function_region_base(0x07fc869c, 0x07fc8680,
                                                 {0x07fc8040, 0x07fc86b8}), "+0")

    def test_fixed_boundary_keeps_following_function_out_of_far_pool_range(self):
        # New native 0xaae8 has two pointer copies removed during merging.
        # Its neighbour must start at ab3c before range checks too: moving
        # its ab50 LDR temporarily lets it select the out-of-range af54 word.
        self.assertEqual(lto_function_region_base(0x07fcab3c, 0x07fcaae8,
                                                 fixed_code_starts={0x07fcab3c}),
                         "0x07fcab3c FIXED")

    def test_first_function_and_nonintervening_entries(self):
        self.assertEqual(lto_function_region_base(0x07fc8774, None, {0x07fc86b8}),
                         "0x07fc8774 FIXED")
        self.assertEqual(lto_function_region_base(0x07fc869c, 0x07fc8680,
                                                 {0x07fc8680, 0x07fc869c}), "+0")


if __name__ == "__main__":
    unittest.main()
