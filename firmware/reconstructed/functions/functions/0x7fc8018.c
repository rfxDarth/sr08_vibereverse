// rea decompile_all
// name: configure_radio_profile_and_mark_state_ready
// address: 0x7fc8018
// body: available
// range: 0x7fc8018-0x7fc8039 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void configure_radio_profile_and_mark_state_ready(int mode_selector)

{
  byte bVar1;
  
  if (mode_selector == 0) {
    bVar1 = 0x7c;
  }
  else {
    bVar1 = 0x7f;
  }
  *(byte *)(DAT_07fc803c + 5) = ~bVar1;
  ensure_radio_profile_then_scan_paired_bytes();
  configure_radio_state_and_send_command_6a();
  *(undefined1 *)(v204_radio_state_literal_pool.view.device_control_state_bytes + 0x11) = 1;
  return;
}

