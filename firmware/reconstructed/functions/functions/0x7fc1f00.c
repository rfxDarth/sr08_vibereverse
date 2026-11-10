// rea decompile_all
// name: wait_for_status_mask_0x04_set_minimum_32
// address: 0x7fc1f00
// body: available
// range: 0x7fc1f00-0x7fc1f0f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void wait_for_status_mask_0x04_set_minimum_32(void)

{
  wait_requested_status_mask_minimum_elapsed_at_8a78(DAT_07fc1f30,4,0,0x20);
  return;
}

