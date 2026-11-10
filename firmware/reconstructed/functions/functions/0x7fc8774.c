// rea decompile_all
// name: publish_enabled_sensor_field_trigger_periodic_at_8774
// address: 0x7fc8774
// body: available
// range: 0x7fc8774-0x7fc87e9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void publish_enabled_sensor_field_trigger_periodic_at_8774(void)

{
  byte bVar1;
  int iVar2;
  code *pcVar3;
  uint uVar4;
  
  iVar2 = v204_radio_dispatch_literal_pool.view.radio_action_state_bytes;
  bVar1 = *(byte *)(v204_radio_dispatch_literal_pool.view.radio_action_state_bytes + 0x20);
  if ((bVar1 & 1) != 0) {
    send_device_command_pair(0x27,*(undefined1 *)(v204_radio_dispatch_literal_pool.view.radio_action_state_bytes + 0x2a));
    send_device_command_pair(0x29,*(undefined1 *)(iVar2 + 0x2c));
    bVar1 = *(byte *)(iVar2 + 0x20);
  }
  uVar4 = (uint)bVar1;
  if ((int)(uVar4 << 0x1e) < 0) {
    send_device_command_pair(0x2d,*(undefined1 *)(iVar2 + 0x25));
    send_device_command_pair(0x2f,*(undefined1 *)(iVar2 + 0x26));
    uVar4 = (uint)*(byte *)(iVar2 + 0x20);
  }
  if ((int)(uVar4 << 0x1d) < 0) {
    send_device_command_pair(0x2c,*(undefined1 *)(iVar2 + 0x27));
    uVar4 = (uint)*(byte *)(iVar2 + 0x20);
  }
  pcVar3 = v204_radio_dispatch_literal_pool.view.send_device_command_pair;
  if ((int)(uVar4 << 0x1c) < 0) {
    (*v204_radio_dispatch_literal_pool.view.send_device_command_pair)(0x1c,*(undefined1 *)(iVar2 + 0x2e));
    (*pcVar3)(0x1d,*(undefined1 *)(iVar2 + 0x2e));
    (*pcVar3)(0x1e,*(undefined1 *)(iVar2 + 0x2e));
    (*pcVar3)(0x1f,*(undefined1 *)(iVar2 + 0x2e));
  }
  wait_shared_timer_delta_exceed_requested_at_4458(10);
  return;
}

