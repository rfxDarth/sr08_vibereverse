// rea decompile_all
// name: switch_display_state_to_one
// address: 0x7fc97c0
// body: available
// range: 0x7fc97c0-0x7fc97c9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void switch_display_state_to_one(void)

{
  switch_display_state_and_run_hooks(1);
  return;
}

