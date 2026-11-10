// rea decompile_all
// name: synchronize_callback_values_and_notify
// address: 0x7fc85e0
// body: available
// range: 0x7fc85e0-0x7fc867b inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void synchronize_callback_values_and_notify(void)

{
  short sVar1;
  short sVar2;
  short sVar3;
  int iVar4;
  undefined2 uVar5;
  short sVar6;
  char cVar7;
  
  uVar5 = read_callback_pair_for_mode_window_39_3a(1);
  iVar4 = v204_radio_range_literal_pool.view.device_control_state_bytes;
  *(undefined2 *)(v204_radio_range_literal_pool.view.device_control_state_bytes + 0x3e) = uVar5;
  uVar5 = read_callback_pair_for_mode_window_42_43(1);
  *(undefined2 *)(iVar4 + 0x40) = uVar5;
  cVar7 = '\0';
  read_callback_pair_for_mode_window_39_3a(0);
  read_callback_pair_for_mode_window_42_43(0);
  sVar2 = *(short *)(iVar4 + 0x40);
  sVar1 = *(short *)(iVar4 + 0x3e);
  if (sVar2 == 0 && sVar1 == 0) {
    *(undefined1 *)(iVar4 + 0x1b) = 0;
    cVar7 = *(char *)(iVar4 + 0x1d);
  }
  else if (*(char *)(iVar4 + 0x1d) != '\0') {
    if (sVar1 == sVar2) {
      cVar7 = '\x01';
      goto L_synchronize_callback_values_and_notify_block_at_85e0_at_07fc8658;
    }
    *(undefined1 *)(iVar4 + 0x1b) = 1;
    sVar3 = *(short *)(iVar4 + 0x46);
    cVar7 = *(char *)(iVar4 + 0x19);
    sVar6 = sVar3;
    if (cVar7 == '\0') {
      sVar6 = sVar2;
    }
    *(int *)(v204_radio_range_literal_pool.view.cycle_and_schedule_state_bytes + 0x38) = (int)sVar1 - (int)sVar6;
    if ((cVar7 == '\x01') && ((int)sVar2 < sVar3 + -0x32)) {
      *(short *)(iVar4 + 0x46) = sVar2;
    }
    cVar7 = '\x01';
  }
  if (sVar1 != sVar2) {
    return;
  }
L_synchronize_callback_values_and_notify_block_at_85e0_at_07fc8658:
  if (((cVar7 == '\0') && (sVar1 != 0)) && (*(char *)(iVar4 + 0x19) != '\0')) {
    send_device_command_pair(0x9c,7);
    send_device_command_pair(0x70,0);
    *(undefined1 *)(iVar4 + 0x1d) = 1;
  }
  return;
}

