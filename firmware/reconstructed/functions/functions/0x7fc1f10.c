// rea decompile_all
// name: wait_for_status_mask_0x20_clear_minimum_8
// address: 0x7fc1f10
// body: available
// range: 0x7fc1f10-0x7fc1f1f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void wait_for_status_mask_0x20_clear_minimum_8(void)

{
  wait_requested_status_mask_minimum_elapsed_at_8a78(DAT_07fc1f30,0x20,1,8);
  return;
}

