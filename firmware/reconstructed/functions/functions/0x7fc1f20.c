// rea decompile_all
// name: wait_for_status_mask_0x02_set_minimum_8
// The helper call uses mask 0x02, wait-for-set, and an eight-unit elapsed threshold.
// address: 0x7fc1f20
// body: available
// range: 0x7fc1f20-0x7fc1f2f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void wait_for_status_mask_0x02_set_minimum_8(void)

{
  wait_requested_status_mask_minimum_elapsed_at_8a78(DAT_07fc1f30,2,0,8);
  return;
}

