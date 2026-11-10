// rea decompile_all
// name: clear_state_word_at_offset_1c
// address: 0x7fcebc4
// body: available
// range: 0x7fcebc4-0x7fcebd1 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void clear_state_word_at_offset_1c(void)

{
  if (*(int *)(DAT_07fcebd4 + 0x1c) != 0) {
    *(undefined4 *)(DAT_07fcebd4 + 0x1c) = 0;
  }
  return;
}

