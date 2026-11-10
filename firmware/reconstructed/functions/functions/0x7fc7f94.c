// rea decompile_all
// name: retries_requested_operation_records_returned_byte_at_7f94
// address: 0x7fc7f94
// body: available
// range: 0x7fc7f94-0x7fc7fc9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 retry_radio_command_until_status_0x27(void)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  
  iVar1 = v204_radio_state_literal_pool.view.device_control_state_bytes;
  uVar2 = 0;
  do {
    uVar4 = uVar2;
    if (9 < uVar4) break;
    send_device_command_pair(1,0);
    wait_shared_timer_delta_exceed_requested_at_4458(5);
    iVar3 = ensure_radio_profile_then_exchange_word(0);
    *(char *)(iVar1 + 0x13) = (char)iVar3;
    uVar2 = uVar4 + 1;
  } while (iVar3 != 0x27);
  if (9 < uVar4) {
    return 0;
  }
  return 1;
}

