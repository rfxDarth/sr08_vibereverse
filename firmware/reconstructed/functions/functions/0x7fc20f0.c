// rea decompile_all
// name: process_sensor_reading_and_update_state
// address: 0x7fc20f0
// body: available
// range: 0x7fc20f0-0x7fc243f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void process_sensor_reading_and_update_state(void)

{
  undefined1 uVar1;
  ushort *puVar2;
  short sVar3;
  short sVar4;
  ushort uVar5;
  ushort uVar6;
  int iVar7;
  int iVar8;
  uint uVar9;
  int iVar10;
  undefined4 uVar11;
  int iVar12;
  uint uVar13;
  byte bVar14;
  int iVar15;
  char cVar16;
  uint uVar17;
  uint uVar18;
  int iVar19;
  undefined4 local_34;
  ushort local_18 [2];
  
  iVar7 = read_current_record_value_byte();
  puVar2 = DAT_07fc2440;
  local_34 = 0x800;
  *DAT_07fc2440 = *DAT_07fc2440 | 0x800;
  *puVar2 = *puVar2 | 0x4000;
  *puVar2 = *puVar2 | 1;
  c_countdown_loop_v204_timing_padding_at_20b4(0x14);
  puVar2[2] = 0x200;
  puVar2[3] = 0x200;
  *puVar2 = *puVar2 | (short)DAT_07fc2444 + 0xe2U;
  *puVar2 = *puVar2 & (ushort)DAT_07fc2448;
  sVar3 = wait_for_state_flag_bit_one_to_clear_and_read_result();
  *puVar2 = *puVar2 | 0x400;
  uVar5 = (short)DAT_07fc244c + 1;
  sVar4 = wait_for_state_flag_bit_one_to_clear_and_read_result();
  puVar2[2] = puVar2[2] & uVar5 | sVar3 * -2 + 0x600U;
  puVar2[3] = puVar2[3] & uVar5 | sVar4 * -2 + 0x600U;
  *puVar2 = *puVar2 & (ushort)DAT_07fc2448;
  *puVar2 = (ushort)DAT_07fc2450 & *puVar2;
  uVar5 = reproduce_two_pulse_output_sequence_used_at_1ff4();
  uVar6 = __aeabi_uidiv((uint)uVar5 * DAT_07fc2454,0x1300);
  *(ushort *)(DAT_07fc2458 + 6) = uVar6;
  uVar5 = *DAT_07fc245c;
  *(byte *)(DAT_07fc2460 + 0xc5) =
       (*(byte *)(DAT_07fc2460 + 0xc5) & 0xfd) + (char)((uVar5 & 0x80) >> 6) ^ 2;
  iVar15 = DAT_07fc2590;
  iVar8 = DAT_07fc2590 + 0x20;
  enqueue_ring_record_overwriting_oldest();
  uVar9 = (uVar5 & 0x80) >> 7;
  iVar10 = *(int *)(iVar15 + 0x20);
  iVar12 = *(int *)(iVar15 + 0x24);
  iVar15 = *(int *)(iVar15 + 0x28);
  for (cVar16 = '\0'; (int)cVar16 < (int)(iVar15 - 1U & iVar10 - iVar12 & 0xff);
      cVar16 = cVar16 + '\x01') {
    copy_ring_buffer_entry_if_index_available(iVar8,(int)cVar16,local_18);
    uVar5 = local_18[0];
    if (local_18[0] <= uVar6) {
      uVar5 = uVar6;
    }
    uVar6 = uVar5;
  }
  *(ushort *)(DAT_07fc2458 + 8) = uVar6;
  iVar15 = DAT_07fc2464;
  uVar13 = uVar9 ^ 1;
  if ((((*(char *)(DAT_07fc2464 + 0xe) == '\x01') || (uVar13 != 0)) || (DAT_07fc2468 <= uVar6)) ||
     (*(uint *)(DAT_07fc2460 + 0x24) < 10)) {
    uVar17 = (uint)uVar6;
    if (DAT_07fc2444 < uVar17) {
      iVar8 = __aeabi_idiv(uVar17 * 0x32 + DAT_07fc2470,0xe6);
      iVar8 = iVar8 + 0x32;
    }
    else {
      if (uVar17 <= DAT_07fc2468 + 0x62) goto L_process_sensor_reading_and_update_state_at_07fc226c;
      iVar8 = __aeabi_idiv(uVar17 * 0x32 + DAT_07fc246c,0x172);
    }
    if (iVar8 < 1) goto L_process_sensor_reading_and_update_state_at_07fc226c;
    if (99 < iVar8) {
      iVar8 = 100;
    }
  }
  else {
    stage_and_program_flash_region_3c000();
    build_mode_status_record_select_corresponding_at_43a4(1);
L_process_sensor_reading_and_update_state_at_07fc226c:
    iVar8 = 0;
  }
  if (*(char *)(iVar15 + 0x20) == '\0') {
    bVar14 = *(char *)(iVar15 + 0x24) + 1;
    *(byte *)(iVar15 + 0x24) = bVar14;
    iVar15 = DAT_07fc2464;
    uVar18 = 0;
    uVar17 = 0;
    if (bVar14 < 3) goto L_process_sensor_reading_and_update_state_at_07fc240e;
    *(undefined1 *)(DAT_07fc2464 + 0x20) = 1;
    *(int *)(DAT_07fc2474 + 0x2c) = iVar8;
  }
  iVar10 = DAT_07fc2478;
  uVar1 = (undefined1)uVar13;
  if (*(byte *)(iVar15 + 0x26) == uVar13) {
    *(undefined1 *)(iVar15 + 0x26) = uVar1;
    if (uVar9 != 0) goto L_process_sensor_reading_and_update_state_at_07fc22f0;
L_process_sensor_reading_and_update_state_at_07fc235c:
    if (((*(char *)(iVar15 + 0xe) == '\x01') || (bVar14 = *(byte *)(iVar15 + 0xc), bVar14 == 0x1e))
       || ((*(char *)(iVar15 + 0xe) == '\x02' || (bVar14 == 0x20)))) {
      build_mode_status_record_select_corresponding_at_43a4(0);
      bVar14 = *(byte *)(iVar15 + 0xc);
    }
    if ((bVar14 | 0x10) != 0x1b) {
      switch_display_state_and_run_hooks(0xb);
    }
    iVar15 = DAT_07fc2474;
    uVar9 = *(uint *)(DAT_07fc2474 + 0x34);
    if (DAT_07fc2468 + 99 < (uint)*(ushort *)(DAT_07fc2458 + 6)) {
      uVar9 = uVar9 + 1;
      *(uint *)(DAT_07fc2474 + 0x34) = uVar9;
    }
    if (uVar9 < 0x1e) {
      iVar8 = *(int *)(iVar15 + 0x2c);
    }
    else {
      *(undefined4 *)(iVar15 + 0x34) = 0;
      if (*(int *)(iVar15 + 0x28) < 100) {
        iVar8 = *(int *)(iVar15 + 0x28) + 1;
      }
      else {
        iVar8 = 100;
      }
      *(int *)(iVar15 + 0x28) = iVar8;
      *(int *)(iVar15 + 0x2c) = iVar8;
    }
    if ((iVar8 < 100) || ((uint)*(ushort *)(DAT_07fc2458 + 8) <= DAT_07fc2444 + 0xe5)) {
      if (iVar8 == 100) {
        *(undefined4 *)(iVar15 + 0x2c) = 99;
      }
      update_mode_flags_and_transitions(0x8000000);
      update_mode_flags_and_transitions(0x400);
      uVar11 = 2;
    }
    else {
      *(undefined4 *)(iVar15 + 0x2c) = 100;
      update_mode_flags_and_transitions(0x4000000);
      if (*(byte *)(DAT_07fc2478 + 8) < 6) {
        *(byte *)(DAT_07fc2478 + 8) = *(byte *)(DAT_07fc2478 + 8) + 1;
      }
      else {
        local_34 = 0x8000000;
      }
      update_mode_flags_and_transitions(local_34);
      uVar11 = 1;
    }
    gate_mode_activation_on_sensor_flags(uVar11);
  }
  else {
    if (*(byte *)(DAT_07fc2478 + 0x37) != uVar13) {
      *(undefined1 *)(DAT_07fc2478 + 0x36) = uVar1;
      iVar12 = DAT_07fc247c;
      iVar19 = DAT_07fc2480 + 0x44;
      *(undefined4 *)(DAT_07fc247c + 0x28) = 0;
      *(undefined4 *)(iVar12 + 0x2c) = 0;
      iVar15 = DAT_07fc2464;
      *(undefined4 *)(iVar12 + 0x30) = 8;
      *(undefined4 *)(iVar12 + 0x34) = 1;
      *(int *)(iVar12 + 0x38) = iVar19;
    }
    *(undefined1 *)(iVar10 + 0x37) = uVar1;
    if (uVar9 == 0) {
      switch_display_state_and_run_hooks(0xb);
      update_mode_flags_and_transitions(0x400000);
      *(undefined1 *)(iVar15 + 0x26) = 1;
      iVar8 = DAT_07fc2474;
      *(undefined4 *)(DAT_07fc2474 + 0x34) = 0;
      *(undefined4 *)(iVar8 + 0x28) = *(undefined4 *)(iVar8 + 0x2c);
      goto L_process_sensor_reading_and_update_state_at_07fc235c;
    }
    switch_display_state_and_run_hooks(0);
    *(undefined4 *)(DAT_07fc2474 + 0x38) = 0;
    update_mode_flags_and_transitions(0x40);
    *(undefined1 *)(DAT_07fc2464 + 0x26) = uVar1;
L_process_sensor_reading_and_update_state_at_07fc22f0:
    *(undefined1 *)(DAT_07fc2478 + 8) = 0;
    iVar10 = DAT_07fc2474;
    uVar18 = *(int *)(DAT_07fc2474 + 0x38) + 1;
    *(uint *)(DAT_07fc2474 + 0x38) = uVar18;
    iVar15 = DAT_07fc2460;
    uVar17 = *(uint *)(iVar10 + 0x2c);
    uVar9 = DAT_07fc2484;
    if (iVar8 < (int)uVar17) {
      uVar9 = 0x19;
    }
    if (uVar9 <= uVar18) {
      *(undefined4 *)(iVar10 + 0x38) = 0;
      uVar17 = uVar17 - 1;
    }
    iVar8 = DAT_07fc2464;
    *(uint *)(iVar10 + 0x2c) = uVar17 & ~((int)uVar17 >> 0x1f);
    if (*(char *)(iVar8 + 0xc) != ' ') {
      iVar8 = *(int *)(iVar15 + 0x14);
      if (iVar8 << 0x14 < 0) {
        update_mode_flags_and_transitions(0x8000000);
        iVar8 = *(int *)(iVar15 + 0x14);
      }
      if (iVar8 << 0x15 < 0) {
        update_mode_flags_and_transitions(0x4000000);
      }
    }
  }
  uVar18 = (uint)*(byte *)(DAT_07fc2474 + 0x2c);
  uVar17 = uVar13;
L_process_sensor_reading_and_update_state_at_07fc240e:
  if ((iVar7 == 1) &&
     ((*(uint *)(DAT_07fc2474 + 0x30) != uVar18 || (uVar17 != *(byte *)(DAT_07fc2464 + 0x28))))) {
    initialize_and_dispatch_three_byte_request(0xb,*(undefined1 *)(DAT_07fc2474 + 0x2c),uVar17);
  }
  *(char *)(DAT_07fc2464 + 0x28) = (char)uVar17;
  *(uint *)(DAT_07fc2474 + 0x30) = uVar18;
  return;
}

