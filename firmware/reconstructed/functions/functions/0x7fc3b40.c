// rea decompile_all
// name: switch_to_display_state_zero_if_fourteen
// address: 0x7fc3b40
// body: available
// range: 0x7fc3b40-0x7fc3b51 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void switch_to_display_state_zero_if_fourteen(void)

{
  if (*(char *)(DAT_07fc3e84 + 0xc) == '\x0e') {
    switch_display_state_and_run_hooks(0);
  }
  return;
}

