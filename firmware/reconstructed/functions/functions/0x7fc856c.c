// rea decompile_all
// name: read_callback_pair_for_mode_window_42_43
// address: 0x7fc856c
// body: available
// range: 0x7fc856c-0x7fc8581 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void read_callback_pair_for_mode_window_42_43(char mode)

{
  read_three_callback_values_between_mode_at_85a0(mode * '\x03' + -0x42,mode * '\x03' + -0x43);
  return;
}

