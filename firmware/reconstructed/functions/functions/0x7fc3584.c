// rea decompile_all
// name: process_sensor_mode_and_update_display
// address: 0x7fc3584
// body: available
// range: 0x7fc3584-0x7fc37bd inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void process_sensor_mode_and_update_display(void)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  char division_remainder;
  uint uVar4;
  int iVar5;
  int division_remainder_00;
  int division_remainder_01;
  byte bVar6;
  int iVar7;
  char cVar8;
  uint uVar9;
  byte bVar10;
  uint uVar11;
  ushort uVar12;
  int local_24;
  int local_20;
  int local_1c;
  int local_18;
  
  iVar1 = derive_active_sensor_range_flags_notify_at_37d0();
  if (iVar1 == 0) {
L_process_sensor_mode_and_update_display_at_07fc36d2:
    uVar3 = 1;
  }
  else {
    uVar9 = 1;
    bVar6 = *(byte *)(DAT_07fc37c0 + 0x40) ^ 1;
    uVar4 = *(uint *)(DAT_07fc37c4 + 0x20);
    if (*(byte *)(DAT_07fc37c0 + 0x44) < 2) {
      bVar10 = 0;
    }
    else {
      bVar10 = *(byte *)(DAT_07fc37c0 + 0x4c);
    }
    if ((uVar4 ^ 1) != 0 || bVar6 != 0) {
      bVar10 = 0;
    }
    if (uVar4 == 2) {
      if (*(char *)(DAT_07fc37c0 + 0x41) != '\x01') {
L_process_sensor_mode_and_update_display_at_07fc369c:
        uVar4 = *DAT_07fc3a34 - *(int *)(DAT_07fc39f8 + 0x60);
        if (4 < uVar4) {
          *(undefined1 *)(DAT_07fc3a30 + 10) = 2;
        }
        if (((*(uint *)(DAT_07fc3a30 + 0x14) & DAT_07fc37c8) == 0) && (10 < uVar4)) {
          if ((*(uint *)(DAT_07fc3a30 + 0x14) & 0x33) != 0) {
            switch_display_state_and_run_hooks(0);
          }
          update_mode_flags_and_transitions(0xf0000);
        }
        goto L_process_sensor_mode_and_update_display_at_07fc36d2;
      }
      if (*(byte *)(DAT_07fc37c0 + 0x58) < 3) goto L_process_sensor_mode_and_update_display_at_07fc363c;
      bVar10 = *(byte *)(DAT_07fc37c0 + 0x61);
      bVar6 = *(byte *)(DAT_07fc37c0 + 0x60);
    }
    else {
      if (uVar4 == 0x2000) {
        clear_cached_sensor_fields_refresh_calibration_at_8f48(0x2000,7);
        wait_shared_timer_delta_exceed_requested_at_4458(100);
        combine_two_six_byte_records_into_words(&local_24);
        iVar5 = local_24;
        uVar11 = local_18 - local_24;
        synchronize_callback_values_and_notify();
        iVar1 = DAT_07fc3834;
        *(short *)(DAT_07fc3834 + 0xca) = (short)(uVar11 >> 4);
        *(short *)(iVar1 + 200) = (short)((uint)(local_1c - iVar5) >> 4);
        *(short *)(iVar1 + 0xc6) = (short)((uint)(local_20 - iVar5) >> 3);
        if (*(short *)(DAT_07fc39f8 + 0x3e) != 0) {
          *(short *)(iVar1 + 0xcc) = *(short *)(DAT_07fc39f8 + 0x3e);
        }
      }
      if ((uVar4 ^ 1) != 0 || bVar6 != 0) goto L_process_sensor_mode_and_update_display_at_07fc369c;
L_process_sensor_mode_and_update_display_at_07fc363c:
      bVar6 = 0;
    }
    *(undefined1 *)(DAT_07fc3a0c + 10) = 1;
    iVar1 = DAT_07fc39f8;
    *(undefined4 *)(DAT_07fc39f8 + 0x60) = *DAT_07fc3a10;
    if (bVar10 != 0) {
      uVar11 = *(uint *)(iVar1 + 0x58);
      uVar4 = (uint)bVar10;
      if (*(int *)(iVar1 + 100) == 0) {
        *(uint *)(iVar1 + 100) = uVar4;
      }
      uVar2 = request_sensor_sample_then_scale_result();
      if (uVar2 < uVar11) {
        uVar2 = uVar2 + 0x5000000;
      }
      if (uVar11 != 0) {
        if (*(char *)(iVar1 + 3) == '\x02') {
          iVar1 = *DAT_07fc3a04;
          iVar5 = DAT_07fc3a04[1];
          iVar7 = DAT_07fc3a04[2];
          uVar12 = 0;
          for (; uVar9 < (iVar7 - 1U & iVar1 - iVar5); uVar9 = uVar9 + 1) {
            copy_ring_buffer_entry_if_index_available(DAT_07fc3a04,uVar9,&local_24);
            uVar12 = uVar12 + (byte)local_24;
          }
          uVar9 = (uint)uVar12;
          if (uVar9 < 0x82) {
            iVar1 = __aeabi_uidiv(uVar9 * 10,0x41);
            uVar9 = iVar1 + 0x50;
          }
          else if (uVar12 < 0xa0) {
            uVar9 = uVar9 * 2 - 0xa0;
          }
          if ((int)uVar4 <= (int)uVar9) {
            uVar4 = uVar9;
          }
          iVar1 = DAT_07fc3aac;
          if (0xb8 < (int)uVar4) {
            uVar4 = 0xb9;
          }
        }
        else {
          uVar2 = uVar2 - uVar11;
          if (uVar2 < DAT_07fc37cc) {
            iVar5 = *(int *)(iVar1 + 100);
            if ((int)uVar4 < iVar5) {
              iVar7 = __aeabi_uidiv((iVar5 - uVar4) * uVar2,DAT_07fc37cc);
              uVar3 = request_sensor_sample_then_scale_result();
              __aeabi_uidiv(uVar3,3);
              uVar4 = (iVar5 - iVar7) - division_remainder_00;
            }
            else {
              iVar7 = __aeabi_uidiv((uVar4 - iVar5) * uVar2,DAT_07fc37cc);
              uVar3 = request_sensor_sample_then_scale_result();
              __aeabi_uidiv(uVar3,3);
              uVar4 = iVar7 + iVar5 + division_remainder_01;
            }
          }
        }
      }
      iVar5 = DAT_07fc3aa4;
      *(short *)(iVar1 + 0x2a) = (short)uVar4;
      *(uint *)(iVar1 + 100) = uVar4;
      *(char *)(iVar5 + 8) = (char)uVar4;
      if (bVar6 < 0x5d) {
        bVar6 = 0x5c;
      }
      uVar3 = request_sensor_sample_then_scale_result();
      *(byte *)(iVar1 + 0xb) = bVar6;
      cVar8 = (char)*(ushort *)(iVar1 + 0x2a);
      if (*(ushort *)(iVar1 + 0x2a) < 0x50) {
        cVar8 = 'P' - cVar8;
      }
      else {
        cVar8 = cVar8 + -0x50;
      }
      *(char *)(iVar1 + 9) = cVar8 + 'i';
      __aeabi_uidiv(uVar3,5);
      *(char *)(iVar1 + 10) = division_remainder + cVar8 + '?';
      iVar7 = *(int *)(DAT_07fc3aa8 + 0x20);
      iVar5 = iVar7 + -7;
      if (iVar7 < 7) {
        iVar5 = 7 - iVar7;
      }
      cVar8 = 'd' - (char)((uint)(iVar5 - (iVar5 >> 0x1f)) >> 1);
      if (cVar8 < '\x01') {
        cVar8 = '\0';
      }
      if ('^' < cVar8) {
        cVar8 = '_';
      }
      *(char *)(iVar1 + 0xc) = 'd' - cVar8;
    }
    uVar3 = 0;
  }
  update_measurement_display_and_mode_state(uVar3);
  return;
}

