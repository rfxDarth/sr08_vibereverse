// rea decompile_all
// name: wait_for_any_status_bit_or_elapsed_200
// address: 0x7fc1ee8
// body: available
// range: 0x7fc1ee8-0x7fc1ef7 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void wait_for_any_status_bit_or_elapsed_200(void)

{
  wait_requested_status_mask_minimum_elapsed_at_8a78(DAT_07fc1ef8,DAT_07fc1efc,0,200);
  return;
}

