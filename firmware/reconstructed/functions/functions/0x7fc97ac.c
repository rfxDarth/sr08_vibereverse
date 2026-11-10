// rea decompile_all
// name: switch_to_display_state_three_if_flag_clear
// address: 0x7fc97ac
// body: available
// range: 0x7fc97ac-0x7fc97bd inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void switch_to_display_state_three_if_flag_clear(void)

{
  if ((*(byte *)(DAT_07fc97ec + 0x14) & 1) == 0) {
    switch_display_state_and_run_hooks(3);
  }
  return;
}

