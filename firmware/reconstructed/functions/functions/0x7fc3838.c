// rea decompile_all
// name: start_or_stop_sensor_calibration
// address: 0x7fc3838
// body: available
// range: 0x7fc3838-0x7fc39ed inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void start_or_stop_sensor_calibration(int param_1)

{
  uint uVar1;
  undefined1 *puVar2;
  byte bVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  uint local_20;
  uint local_18;
  
  if (param_1 == 0) {
    if (*DAT_07fc39f0 != '\0') {
      *DAT_07fc39f0 = '\0';
      puVar2 = DAT_07fc3a14;
      iVar5 = DAT_07fc39f4;
      if (*(int *)(DAT_07fc39f4 + 0x20) != 0) {
        DAT_07fc3a14[0xa0] = 0;
        *puVar2 = 0;
        clear_state_counter_at_offset_four();
        iVar4 = DAT_07fc3aac;
        *(undefined2 *)(DAT_07fc3aac + 0x14) = 0;
        configure_radio_state_from_profile();
        *(undefined1 *)(iVar4 + 0x18) = 0;
        *(undefined1 *)(iVar4 + 0x17) = 0;
        clear_state_counter_at_offset_four();
        *(undefined4 *)(iVar5 + 0x20) = 0;
      }
      *(undefined2 *)(DAT_07fc3aac + 0x2a) = 0;
    }
    return;
  }
  if (*DAT_07fc39f0 != '\0') {
    return;
  }
  *DAT_07fc39f0 = '\x01';
  iVar4 = retry_radio_command_until_status_0x27();
  iVar5 = DAT_07fc39f4;
  if (iVar4 == 0) goto L_start_or_stop_sensor_calibration_at_07fc39dc;
  *(int *)(DAT_07fc39f4 + 0x20) = param_1;
  iVar4 = DAT_07fc3aac;
  if (param_1 != 0x4000) {
    if (param_1 == 0x40) {
      *(undefined4 *)(iVar5 + 0x34) = 0;
      write_indexed_timing_record(10,500,DAT_07fc3a08);
    }
    else {
      apply_sensor_control_action(param_1);
    }
    goto L_start_or_stop_sensor_calibration_at_07fc39dc;
  }
  uVar8 = 0;
  *(undefined1 *)(DAT_07fc3aac + 0x19) = 0;
  iVar5 = retry_radio_command_until_status_0x27();
  if (iVar5 != 0) {
    send_device_command_pair(0x18,0x40);
    send_device_command_pair(0x19,1);
    configure_radio_state_and_send_command_6a();
  }
  wait_shared_timer_delta_exceed_requested_at_4458(100);
  send_device_command_pair(0x8f,7);
  uVar1 = DAT_07fc39fc;
  local_18 = 0x3fc;
  local_20 = 0;
  bVar3 = 0;
  while (*(byte *)(iVar4 + 0x1c) = bVar3, uVar7 = local_20, bVar3 < 100) {
    if ((local_18 & 0xffff) <= (uVar8 & 0xffff)) break;
    *DAT_07fc3a00 = 200;
    uVar7 = (local_18 & 0xffff) + (uVar8 & 0xffff) >> 1;
    write_two_bytes_from_packed_value(uVar7);
    wait_shared_timer_delta_exceed_requested_at_4458(0x20);
    read_callback_pair_for_mode_window_39_3a(1);
    wait_shared_timer_delta_exceed_requested_at_4458(0x21);
    iVar5 = read_callback_pair_for_mode_window_39_3a(1);
    iVar4 = DAT_07fc3aac;
    if (((iVar5 + (iVar5 >> 0xf) ^ iVar5 >> 0xf) & 0xffffU) <= uVar1) break;
    if ((int)uVar1 < iVar5) {
      uVar8 = uVar7 + 1;
    }
    else {
      local_18 = uVar7 - 1;
    }
    bVar3 = *(char *)(DAT_07fc3aac + 0x1c) + 1;
  }
  iVar6 = read_callback_pair_for_mode_window_39_3a(1);
  *(short *)(iVar4 + 0x46) = (short)iVar6;
  *(short *)(iVar4 + 0x42) = (short)uVar7;
  iVar5 = DAT_07fc3a04;
  if ((uVar7 == 0x1fe) && (iVar6 == 0)) {
    *(undefined1 *)(iVar4 + 0x36) = 0;
  }
  else {
    *(short *)(DAT_07fc3a04 + 0x48) = (short)uVar7;
    *(undefined1 *)(DAT_07fc3aac + 0x36) = 2;
    iVar4 = DAT_07fc3aac;
    *(short *)(iVar5 + 0x4c) = (short)iVar6;
    *(undefined2 *)(iVar5 + 0x4a) = *(undefined2 *)(iVar4 + 0x44);
    *(undefined2 *)(iVar5 + 0x4e) = *(undefined2 *)(iVar4 + 0x48);
    iVar6 = DAT_07fc39f4 + 0x44;
    *(undefined4 *)(iVar5 + 0x28) = 0;
    *(undefined4 *)(iVar5 + 0x2c) = 0;
    *(undefined4 *)(iVar5 + 0x30) = 8;
    *(undefined4 *)(iVar5 + 0x34) = 1;
    *(int *)(iVar5 + 0x38) = iVar6;
    format_byte_span_spaced_hexadecimal_line_at_b178(iVar5 + 0x48);
  }
  if (*(char *)(iVar4 + 0x13) == '\'') {
    retry_radio_command_until_status_0x27();
    save_valid_measurement_range_clear_stale_at_8500();
L_start_or_stop_sensor_calibration_at_07fc39d2:
    configure_radio_state_and_send_command_6a();
  }
  else {
    save_valid_measurement_range_clear_stale_at_8500();
    iVar5 = retry_radio_command_until_status_0x27();
    if (iVar5 != 0) goto L_start_or_stop_sensor_calibration_at_07fc39d2;
  }
  update_mode_flags_and_transitions(0x40000000);
L_start_or_stop_sensor_calibration_at_07fc39dc:
  *(undefined1 *)(DAT_07fc3aa4 + 10) = 0;
  iVar5 = DAT_07fc3dd4;
  *(undefined4 *)(DAT_07fc3dd4 + 0x58) = 0;
  *(undefined4 *)(iVar5 + 0x60) = *DAT_07fc3aa8;
  return;
}

