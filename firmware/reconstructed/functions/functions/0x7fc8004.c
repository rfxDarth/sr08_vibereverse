// rea decompile_all
// name: clear_radio_flag_and_configure_state
// address: 0x7fc8004
// body: available
// range: 0x7fc8004-0x7fc8013 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void clear_radio_flag_and_configure_state(void)

{
  *(undefined1 *)(v204_radio_state_literal_pool.view.device_control_state_bytes + 0x1b) = 0;
  ensure_radio_profile_then_scan_paired_bytes(DAT_07fc8014);
  return;
}

