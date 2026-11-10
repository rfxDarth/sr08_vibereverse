// rea decompile_all
// name: gate_periodic_record_creation_sensor_mode_at_2dc4
// address: 0x7fc2dc4
// body: available
// range: 0x7fc2dc4-0x7fc2e17 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void gate_periodic_record_creation_sensor_mode_at_2dc4(void)

{
  undefined1 uVar1;
  int iVar2;
  uint uVar3;
  undefined4 uVar4;
  uint uVar5;
  
  uVar3 = request_sensor_sample_then_scale_result();
  iVar2 = DAT_07fc30d4;
  if (((0x4f < *(ushort *)(v204_device_setting_literal_pool.view.state_bytes + 0xc)) || (*(short *)(v204_device_setting_literal_pool.view.state_bytes + 0xe) != 0)) ||
     (*(ushort *)(DAT_07fc30d4 + 0x42) >> 2 < 0x7d)) {
    uVar5 = uVar3;
    if (uVar3 < *(uint *)(DAT_07fc30d4 + 0x70)) {
      uVar5 = uVar3 + 0x5000000;
    }
    if (DAT_07fc2e18 <= uVar5 - *(uint *)(DAT_07fc30d4 + 0x70)) {
      uVar1 = *(undefined1 *)(DAT_07fc30d4 + 8);
      uVar4 = read_state_word_at_10_with_record_flag_clamp();
      allocate_initialize_record_first_use_release_at_3254(uVar1,uVar4,uVar4);
      *(uint *)(iVar2 + 0x70) = uVar3;
    }
  }
  replace_state_timer_with_600_delay();
  return;
}

