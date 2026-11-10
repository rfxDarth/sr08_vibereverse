// rea decompile_all
// name: update_clock_and_process_events
// address: 0x7fc44a8
// body: available
// range: 0x7fc44a8-0x7fc4855 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void update_clock_and_process_events(void)

{
  undefined4 *puVar1;
  byte bVar2;
  char cVar3;
  short sVar4;
  int *piVar5;
  code *pcVar6;
  uint uVar7;
  int iVar8;
  int iVar9;
  int division_remainder;
  undefined4 uVar10;
  int division_remainder_00;
  int iVar11;
  int division_remainder_01;
  int division_remainder_02;
  int iVar12;
  uint uVar13;
  int iVar14;
  uint uVar15;
  int iVar16;
  uint uVar17;
  uint *puVar18;
  int iVar19;
  int iVar20;
  int local_64 [8];
  undefined4 local_44;
  int local_40;
  int local_3c;
  uint local_24;
  uint local_20;
  int local_1c;
  int local_18;
  
  piVar5 = v204_clock_literal_pool.view.sensor_conversion_request_register;
  *v204_clock_literal_pool.view.sensor_conversion_request_register = 1;
  puVar18 = v204_clock_literal_pool.view.timekeeping_state_words;
  do {
  } while (*piVar5 != 0);
  uVar7 = *v204_clock_literal_pool.view.sensor_conversion_result_register;
  uVar15 = v204_clock_literal_pool.view.timekeeping_state_words[4];
  if (uVar7 < uVar15) {
    uVar7 = uVar7 + 0x8000000;
  }
  uVar7 = uVar7 - uVar15;
  iVar8 = __aeabi_uidiv(uVar7,0x640);
  uVar17 = *puVar18;
  uVar13 = puVar18[1] + iVar8;
  *puVar18 = uVar13;
  puVar18 = v204_clock_literal_pool.view.timekeeping_state_words;
  if (v204_clock_literal_pool.view.tick_rebase_threshold <= uVar7) {
    v204_clock_literal_pool.view.timekeeping_state_words[5] = 0;
    puVar18[1] = uVar13;
    __aeabi_uidiv(uVar7 * 5,8000);
    iVar8 = __aeabi_uidiv(uVar7 * 5 - division_remainder,5);
    v204_clock_literal_pool.view.timekeeping_state_words[4] = uVar15 + iVar8 & 0x7ffffff;
  }
  puVar18 = v204_clock_literal_pool.view.timekeeping_state_words;
  if (1 < uVar13 - uVar17) {
    *v204_clock_literal_pool.view.timekeeping_state_words = uVar17;
    convert_timestamp_to_calendar_fields(uVar13,local_64);
    if (local_64[0] < (int)puVar18[6]) {
      load_and_update_persistent_measurement_state();
    }
    puVar18[2] = uVar13;
    *puVar18 = uVar13;
  }
  puVar18 = v204_clock_literal_pool.view.timekeeping_state_words;
  if (uVar13 == uVar17) {
    return;
  }
  v204_clock_literal_pool.view.timekeeping_state_words[2] = uVar13;
  if ((uVar13 & 3) == 0) {
    serialize_status_and_global_values_with_word(uVar13,0);
    uVar13 = *puVar18;
  }
  convert_timestamp_to_calendar_fields(uVar13,puVar18 + 6);
  uVar7 = puVar18[6];
  puVar18[3] = puVar18[7] * 0x3c + puVar18[8] * 0xe10 + uVar7;
  if (0x3a < (int)uVar7) {
    load_and_update_persistent_measurement_state();
    uVar7 = puVar18[6];
  }
  iVar8 = v204_clock_literal_pool.view.shared_context_bytes;
  if ((uVar7 & 1) == 0) {
    uVar10 = *(undefined4 *)(v204_clock_literal_pool.view.shared_context_bytes + 4);
    puVar1 = (undefined4 *)(v204_clock_literal_pool.view.shared_context_bytes + 0x38);
    *(undefined4 *)(v204_clock_literal_pool.view.shared_context_bytes + 4) = *puVar1;
    cVar3 = (char)*puVar1 - (char)uVar10;
    *(char *)(iVar8 + 3) = cVar3;
    local_44 = CONCAT31(local_44._1_3_,cVar3);
    enqueue_ring_record_overwriting_oldest(v204_clock_literal_pool.view.time_event_queue_bytes);
  }
  uVar7 = *puVar18;
  if (0xef < uVar7 - *(int *)(v204_clock_literal_pool.view.cycle_and_schedule_state_bytes + 4)) {
    *(uint *)(v204_clock_literal_pool.view.cycle_and_schedule_state_bytes + 4) = uVar7;
    *(int *)(v204_clock_literal_pool.view.device_control_state_bytes + 0x6c) = *(int *)(v204_clock_literal_pool.view.device_control_state_bytes + 0x6c) << 1;
  }
  __aeabi_idiv(puVar18[7] + 1,0xf);
  iVar9 = v204_clock_literal_pool.view.device_control_state_bytes;
  iVar8 = v204_clock_literal_pool.view.cycle_and_schedule_state_bytes;
  if (((0x1d < (int)puVar18[6]) && (division_remainder_00 == 0)) &&
     (0x3f < uVar7 - *(int *)(v204_clock_literal_pool.view.cycle_and_schedule_state_bytes + 8))) {
    puVar18 = v204_clock_literal_pool.view.timekeeping_state_words;
    if (*(char *)(v204_clock_literal_pool.view.device_control_state_bytes + 0xe) == '\0') {
      iVar12 = *(int *)(v204_clock_literal_pool.view.shared_context_bytes + 0x50);
      iVar8 = *(int *)(v204_clock_literal_pool.view.shared_context_bytes + 0x38);
      uVar15 = 0;
      for (iVar11 = 0x5a; iVar11 != 0x69; iVar11 = iVar11 + 1) {
        uVar15 = uVar15 + *(byte *)(v204_clock_literal_pool.view.cycle_and_schedule_state_bytes + iVar11);
      }
      if (((v204_clock_literal_pool.view.schedule_threshold_487c <= v204_clock_literal_pool.view.timekeeping_state_words[3] + v204_clock_literal_pool.view.schedule_threshold_4878) &&
          (uVar13 = map_elapsed_ticks_to_firmware_time_units(), puVar18 = v204_clock_literal_pool.view.timekeeping_state_words, iVar8 == iVar12)) &&
         ((uVar15 < uVar13 &&
          (((*(ushort *)(iVar9 + 0x6c) & 0x1ff) != 0 &&
           (*(char *)(iVar9 + 0xf) == '\0' && *(char *)(v204_clock_literal_pool.view.mode_and_display_state_bytes + 0x26) == '\0')))))) {
        *(undefined1 *)(v204_clock_literal_pool.view.shared_context_bytes + 10) = 0;
        store_mode_flag_and_copy_configuration_word(1);
        uVar7 = *puVar18;
      }
    }
    iVar8 = v204_clock_literal_pool.view.cycle_and_schedule_state_bytes;
    *(uint *)(v204_clock_literal_pool.view.cycle_and_schedule_state_bytes + 8) = uVar7;
  }
  iVar9 = v204_clock_literal_pool.view.shared_context_bytes;
  if (((*(char *)(v204_clock_literal_pool.view.shared_context_bytes + 0x7c) != '\0') &&
      (((bVar2 = *(byte *)(v204_clock_literal_pool.view.shared_context_bytes + 0x7d), bVar2 < 0xf ||
        (__aeabi_idiv(puVar18[7],0xf), iVar8 = v204_clock_literal_pool.view.cycle_and_schedule_state_bytes, iVar9 = v204_clock_literal_pool.view.shared_context_bytes,
        division_remainder_01 == 0)) && (iVar9 = v204_clock_literal_pool.view.shared_context_bytes, (int)puVar18[6] < 10)))) &&
     ((uint)bVar2 * 0x3c - 10 <= uVar7 - *(int *)(v204_clock_literal_pool.view.shared_context_bytes + 0x1c))) {
    uVar15 = *(uint *)(v204_clock_literal_pool.view.shared_context_bytes + 0x84);
    uVar13 = puVar18[3];
    if (uVar15 < *(uint *)(v204_clock_literal_pool.view.shared_context_bytes + 0x80)) {
      if (uVar15 < uVar13) {
L_update_clock_and_process_events_at_07fc468e:
        if (uVar13 < *(uint *)(v204_clock_literal_pool.view.shared_context_bytes + 0x80)) goto L_update_clock_and_process_events_at_07fc469e;
      }
      store_mode_flag_and_copy_configuration_word(0);
      iVar8 = v204_clock_literal_pool.view.cycle_and_schedule_state_bytes;
      uVar7 = *puVar18;
      *(uint *)(iVar9 + 0x1c) = uVar7;
    }
    else if (uVar13 <= uVar15) goto L_update_clock_and_process_events_at_07fc468e;
  }
L_update_clock_and_process_events_at_07fc469e:
  if (((((puVar18[8] == 0x17) && (puVar18[7] == 0x3b)) && (0x3a < (int)puVar18[6])) ||
      (puVar18[7] == 0 && puVar18[8] == 0)) && (0x81 < uVar7 - *(int *)(iVar8 + 0xc))) {
    *(uint *)(iVar8 + 0xc) = uVar7;
    translate_rom_result_to_display_coordinates(uVar7 + 0x1e);
    reset_mode_state_clear_associated_flag_at_4fa0();
    iVar8 = v204_clock_literal_pool.view.cycle_and_schedule_state_bytes;
  }
  if ((puVar18[3] + v204_clock_literal_pool.view.negative_time_adjustment_4884 < 0x3d) &&
     (uVar7 = *puVar18, 0x77 < uVar7 - *(int *)(iVar8 + 0x10))) {
    *(undefined4 *)(iVar9 + 0x44) = 0;
    *(uint *)(iVar8 + 0x10) = uVar7;
    *(undefined1 *)(v204_clock_literal_pool.view.device_control_state_bytes + 0xe) = 0;
  }
  if (((((puVar18[7] & 1) == 0) || ((int)puVar18[6] < 0x3a)) ||
      (*puVar18 - *(int *)(iVar8 + 0x14) < 0x33)) || (*(char *)(iVar9 + 9) == '\0'))
  goto L_update_clock_and_process_events_at_07fc482c;
  iVar12 = (*puVar18 - puVar18[6]) + -0x3c;
  iVar9 = __aeabi_uidiv(iVar12,v204_clock_literal_pool.view.seconds_per_day);
  local_18 = iVar9 * (v204_clock_literal_pool.view.last_second_of_day + 1);
  local_1c = -1;
  convert_timestamp_to_calendar_fields(iVar12,&local_44);
  __aeabi_uidiv(iVar9,7);
  iVar14 = division_remainder_02 * 0x3000;
  iVar16 = iVar14 + v204_clock_literal_pool.view.word_4890;
  iVar11 = local_3c * 4 + iVar16;
  perform_flash_memory_operation(&local_24,iVar11,4,0);
  iVar8 = v204_clock_literal_pool.view.persistent_measurement_state_bytes;
  local_20 = local_24 & ~(1 << (local_40 >> 1 & 0xffU));
  perform_flash_memory_operation(v204_clock_literal_pool.view.persistent_measurement_state_bytes,iVar16,0x60,0);
  iVar9 = iVar9 * v204_clock_literal_pool.view.signed_threshold_4898;
  for (iVar19 = 0; iVar19 != 0x60; iVar19 = iVar19 + 4) {
    *(uint *)(iVar8 + iVar19) = ~*(uint *)(iVar8 + iVar19);
  }
  iVar19 = iVar14 + v204_clock_literal_pool.view.word_489c;
  iVar20 = 0;
  perform_flash_memory_operation(&local_1c,iVar19,4,0);
  iVar9 = __aeabi_uidiv(iVar9 + iVar12,10);
  if (local_1c == -1) {
L_update_clock_and_process_events_at_07fc47d2:
    perform_flash_memory_operation(&local_18,iVar19,4,1);
  }
  else if (v204_clock_literal_pool.view.last_second_of_day < (uint)(iVar12 - local_1c)) {
    erase_flash_range(iVar14 + 0x4c000,0x3000);
    goto L_update_clock_and_process_events_at_07fc47d2;
  }
  iVar12 = v204_clock_literal_pool.view.shared_context_bytes;
  (*v204_clock_literal_pool.view.callback_function_48a0)(v204_clock_literal_pool.view.shared_context_bytes + 0xa0,iVar14 + 0x4c000 + iVar9,0xc);
  pcVar6 = v204_clock_literal_pool.view.callback_function_48a0;
  (*v204_clock_literal_pool.view.callback_function_48a0)(&local_20,iVar11,4,1);
  (*pcVar6)(iVar8,iVar16,0x60,0);
  iVar9 = v204_clock_literal_pool.view.cycle_and_schedule_state_bytes;
  for (; iVar11 = v204_clock_literal_pool.view.shared_context_bytes, iVar20 != 0x60; iVar20 = iVar20 + 4) {
    *(uint *)(iVar8 + iVar20) = ~*(uint *)(iVar8 + iVar20);
  }
  *(undefined4 *)(v204_clock_literal_pool.view.shared_context_bytes + 0xa0) = 0xffffffff;
  *(undefined1 *)(iVar11 + 9) = 0;
  *(uint *)(iVar9 + 0x14) = *v204_clock_literal_pool.view.timekeeping_state_words;
  *(undefined4 *)(iVar12 + 0xa4) = 0xffffffff;
  *(undefined4 *)(iVar12 + 0xa8) = 0xffffffff;
L_update_clock_and_process_events_at_07fc482c:
  iVar8 = v204_clock_literal_pool.view.mode_and_display_state_bytes;
  sVar4 = *(short *)(v204_clock_literal_pool.view.mode_and_display_state_bytes + 0x40) + -1;
  *(short *)(v204_clock_literal_pool.view.mode_and_display_state_bytes + 0x40) = sVar4;
  local_44 = 0x20;
  if (sVar4 < 1) {
    *(undefined2 *)(iVar8 + 0x40) = 6;
    enqueue_ring_record_if_space(v204_clock_literal_pool.view.shared_measurement_state_bytes,&local_44);
  }
  return;
}

