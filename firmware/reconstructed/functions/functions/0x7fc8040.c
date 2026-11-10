// rea decompile_all
// name: six_way_command_dispatch_default_branch_at_8040
// address: 0x7fc8040
// body: available
// range: 0x7fc8040-0x7fc804d inclusive
// range: 0x7fc8068-0x7fc80d5 inclusive
// non_contiguous: true
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void six_way_command_dispatch_default_branch_at_8040(undefined4 param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = v204_radio_state_literal_pool.view.device_control_state_bytes;
  iVar1 = DAT_07fc8130;
  switch(param_1) {
  case 0:
    configure_command_record(*(undefined4 *)(DAT_07fc8130 + 0x20));
    iVar1 = v204_radio_state_literal_pool.view.device_control_state_bytes;
    *(undefined1 *)(v204_radio_state_literal_pool.view.device_control_state_bytes + 0x17) = 1;
    *(undefined1 *)(iVar1 + 0x15) = 1;
    return;
  case 1:
    configure_radio_state_from_profile();
    *(undefined1 *)(v204_radio_state_literal_pool.view.device_control_state_bytes + 0x17) = 0;
    return;
  default:
    return;
  case 3:
    *(undefined1 *)(DAT_07fc8130 + 0x4c) = 0xf;
    *(undefined1 *)(iVar1 + 0x54) = 5;
    *(undefined4 *)(iVar1 + 0x50) = 0x40;
    *(undefined2 *)(iVar1 + 0x58) = 0x1900;
    *(undefined2 *)(iVar1 + 0x4e) = 0;
    break;
  case 4:
    *(undefined1 *)(v204_radio_state_literal_pool.view.device_control_state_bytes + 0x14) = 0;
    configure_radio_profile_and_mark_state_ready(0);
    *(undefined1 *)(iVar2 + 0x18) = 0;
    return;
  case 5:
    *(undefined1 *)(DAT_07fc8130 + 0x4c) = 2;
    *(undefined1 *)(iVar1 + 0x58) = 2;
    *(undefined1 *)(iVar1 + 0x4e) = 0;
  }
  clear_radio_flag_and_configure_state();
  dispatch_enabled_indicator_fields_for_device_status();
  iVar1 = v204_radio_state_literal_pool.view.device_control_state_bytes;
  *(undefined1 *)(v204_radio_state_literal_pool.view.device_control_state_bytes + 0x18) = 1;
  *(undefined1 *)(iVar1 + 0x14) = 1;
  return;
}

