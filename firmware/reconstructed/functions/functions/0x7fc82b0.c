// rea decompile_all
// name: configure_radio_state_and_send_command_6a
// address: 0x7fc82b0
// body: available
// range: 0x7fc82b0-0x7fc8329 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void configure_radio_state_and_send_command_6a(void)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = v204_shared_control_state_bytes_for_radio_setup;
  *(undefined1 *)(v204_shared_control_state_bytes_for_radio_setup + 0x1d) = 0;
  *(undefined1 *)(iVar3 + 0x1b) = 0;
  iVar2 = v204_radio_state_literal_pool.view.radio_profile_state_bytes;
  iVar1 = v204_radio_state_literal_pool.view.radio_update_parameter_8330;
  if (*(char *)(iVar3 + 0x19) == '\0') {
    *(undefined1 *)(v204_radio_state_literal_pool.view.radio_profile_state_bytes + 0x3b) = 0;
    ensure_radio_profile_then_scan_paired_bytes(iVar2 + 0x1c);
    send_four_adjacent_field_updates_through_at_7fcc(1,v204_radio_state_literal_pool.view.radio_update_parameter_8334,iVar1 + 0xa7);
    send_four_adjacent_field_updates_through_at_7fcc(0,iVar1,1000);
  }
  else {
    *(undefined1 *)(v204_radio_state_literal_pool.view.radio_profile_state_bytes + 0x3b) = 2;
    ensure_radio_profile_then_scan_paired_bytes(iVar2 + 0x1c);
    write_two_bytes_from_packed_value(*(undefined2 *)(iVar3 + 0x42));
    send_four_adjacent_field_updates_through_at_7fcc(1,v204_radio_state_literal_pool.view.radio_update_parameter_8334,iVar1 + 0xa7);
    send_four_adjacent_field_updates_through_at_7fcc(0,iVar1,1000);
    ensure_radio_profile_then_scan_paired_bytes(iVar2 + 0x10);
  }
  send_device_command_pair(0x6a,2);
  return;
}

