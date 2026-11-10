// rea decompile_all
// name: clear_state_counter_at_offset_four
// address: 0x7fcd8a0
// body: available
// range: 0x7fcd8a0-0x7fcd8ad inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void clear_state_counter_at_offset_four(void)

{
  if (*(int *)(DAT_07fcd8b0 + 4) != 0) {
    *(undefined4 *)(DAT_07fcd8b0 + 4) = 0;
  }
  return;
}

