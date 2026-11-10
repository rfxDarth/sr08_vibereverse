// rea decompile_all
// name: configure_radio_state_from_profile
// address: 0x7fc82a0
// body: available
// range: 0x7fc82a0-0x7fc82a9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void configure_radio_state_from_profile(void)

{
  ensure_radio_profile_then_scan_paired_bytes(DAT_07fc82ac);
  return;
}

