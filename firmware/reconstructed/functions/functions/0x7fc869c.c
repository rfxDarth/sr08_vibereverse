// rea decompile_all
// name: initialize_radio_scan_and_mark_state_ready
// address: 0x7fc869c
// body: available
// range: 0x7fc869c-0x7fc86b3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void initialize_radio_scan_and_mark_state_ready(void)

{
  int iVar1;
  
  iVar1 = v204_radio_range_literal_pool.view.device_control_state_bytes;
  *(undefined1 *)(v204_radio_range_literal_pool.view.device_control_state_bytes + 0x1b) = 0;
  ensure_radio_profile_then_scan_paired_bytes(DAT_07fc86b4);
  configure_radio_state_and_send_command_6a();
  *(undefined1 *)(iVar1 + 0x11) = 1;
  return;
}

