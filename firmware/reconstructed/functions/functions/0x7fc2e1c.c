// rea decompile_all
// name: update_device_settings_record_run_conditional_at_2e1c
// address: 0x7fc2e1c
// body: available
// range: 0x7fc2e1c-0x7fc2e49 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void update_device_settings_record_run_conditional_at_2e1c(uint value,undefined2 setting,undefined2 mode)

{
  int iVar1;
  
  request_sensor_sample_then_scale_result();
  iVar1 = DAT_07fc31f0;
  *(undefined2 *)(DAT_07fc31f0 + 0x42) = mode;
  *(undefined4 *)(iVar1 + 0x70) = 0;
  iVar1 = v204_device_setting_literal_pool.view.state_bytes;
  *(undefined2 *)(v204_device_setting_literal_pool.view.state_bytes + 0xe) = setting;
  *(short *)(iVar1 + 0xc) = (short)value;
  if (value < *(ushort *)(iVar1 + 10)) {
    *(short *)(iVar1 + 10) = (short)value;
  }
  if (value < 0x50) {
    replace_state_timer_with_600_delay();
  }
  return;
}

