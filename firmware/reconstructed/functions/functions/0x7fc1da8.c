// rea decompile_all
// name: handle_matched_device_state_send_corresponding_at_1da8
// address: 0x7fc1da8
// body: available
// range: 0x7fc1da8-0x7fc1ded inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void handle_matched_device_state_send_corresponding_at_1da8(void)

{
  int iVar1;
  int iVar2;
  
  apply_radio_register_profile_at_1e50();
  iVar1 = exchange_one_radio_word(0xf);
  iVar2 = exchange_one_radio_word(0x70);
  if (iVar1 == 0x11) {
    scan_pair_table_until_terminator(DAT_07fc1df0);
    wait_shared_timer_delta_exceed_requested_at_4458(10);
    if (iVar2 == 0x28) {
      *(undefined1 *)(v204_radio_device_state_pointer + 0x11) = 3;
    }
    else {
      *(undefined1 *)(v204_radio_device_state_pointer + 0x11) = 2;
      process_two_packed_input_bytes_update_at_8ad8(0x1e,5);
    }
    scan_pair_table_until_terminator(DAT_07fc1df4);
  }
  return;
}

