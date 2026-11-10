// rea decompile_all
// name: dispatch_radio_state_action
// address: 0x7fc86b8
// body: available
// range: 0x7fc86b8-0x7fc86c5 inclusive
// range: 0x7fc86e0-0x7fc876d inclusive
// non_contiguous: true
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void dispatch_radio_state_action(undefined4 param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = v204_radio_range_literal_pool.view.device_control_state_bytes;
  iVar1 = v204_radio_dispatch_literal_pool.view.radio_action_state_bytes;
  switch(param_1) {
  case 0:
    configure_command_record(2);
    iVar1 = v204_radio_range_literal_pool.view.device_control_state_bytes;
    *(undefined1 *)(v204_radio_range_literal_pool.view.device_control_state_bytes + 0x1e) = 1;
    *(undefined1 *)(iVar1 + 0x15) = 1;
    return;
  case 1:
    configure_radio_state_from_profile();
    break;
  case 2:
    initialize_radio_scan_and_mark_state_ready();
    break;
  case 3:
    *(undefined1 *)(v204_radio_dispatch_literal_pool.view.radio_action_state_bytes + 0x20) = 0xf;
    *(undefined1 *)(iVar1 + 0x2e) = 5;
    *(undefined2 *)(iVar1 + 0x2c) = 0x10;
    *(undefined4 *)(iVar1 + 0x24) = 0;
    *(undefined4 *)(iVar1 + 0x28) = 0x40000;
    *(undefined2 *)(iVar1 + 0x22) = 0;
    *(undefined4 *)(iVar1 + 0x30) = 0;
    *(undefined4 *)(iVar1 + 0x34) = 0;
    *(undefined4 *)(iVar1 + 0x38) = 0;
    *(undefined1 *)(iVar1 + 0x3c) = 0;
    *(short *)(iVar1 + 0x3e) = (short)DAT_07fc8770;
    clear_radio_flag_and_configure_state();
    publish_enabled_sensor_field_trigger_periodic_at_8774();
    iVar1 = v204_radio_range_literal_pool.view.device_control_state_bytes;
    *(undefined1 *)(v204_radio_range_literal_pool.view.device_control_state_bytes + 0x1f) = 1;
    *(undefined1 *)(iVar1 + 0x14) = 1;
    return;
  case 4:
    *(undefined1 *)(v204_radio_range_literal_pool.view.device_control_state_bytes + 0x14) = 0;
    configure_radio_profile_and_mark_state_ready(1);
    *(undefined1 *)(iVar2 + 0x1f) = 0;
    return;
  case 5:
    *(undefined1 *)(v204_radio_dispatch_literal_pool.view.radio_action_state_bytes + 0x20) = 2;
    *(undefined1 *)(iVar1 + 0x3c) = 2;
    *(undefined1 *)(iVar1 + 0x22) = 0;
    clear_radio_flag_and_configure_state();
    publish_enabled_sensor_field_trigger_periodic_at_8774();
    iVar1 = v204_radio_range_literal_pool.view.device_control_state_bytes;
    *(undefined1 *)(v204_radio_range_literal_pool.view.device_control_state_bytes + 0x1f) = 1;
    *(undefined1 *)(iVar1 + 0x14) = 1;
    return;
  default:
    return;
  }
  *(undefined1 *)(v204_radio_range_literal_pool.view.device_control_state_bytes + 0x1e) = 0;
  return;
}

