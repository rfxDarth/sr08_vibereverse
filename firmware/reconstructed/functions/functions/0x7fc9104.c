// rea decompile_all
// name: dispatch_radio_and_sensor_state_events
// address: 0x7fc9104
// body: available
// range: 0x7fc9104-0x7fc9193 inclusive
// range: 0x7fc91a8-0x7fc950b inclusive
// range: 0x7fc9538-0x7fc9755 inclusive
// non_contiguous: true
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined1 * dispatch_radio_and_sensor_state_events(void)

{
  byte *pbVar1;
  byte bVar2;
  char cVar3;
  undefined1 uVar4;
  undefined1 uVar5;
  bool bVar6;
  int iVar7;
  char *pcVar8;
  byte *pbVar9;
  byte bVar10;
  ushort uVar11;
  undefined1 *puVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  uint uVar16;
  int iVar17;
  char cVar18;
  uint uVar19;
  int iVar20;
  int iVar21;
  bool bVar22;
  int local_c0;
  undefined4 local_b8;
  undefined4 local_b4;
  int local_b0;
  undefined4 local_ac;
  undefined1 auStack_a8 [4];
  undefined4 local_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined1 auStack_94 [128];
  
  iVar20 = DAT_07fc91a4;
  iVar17 = DAT_07fc919c;
  iVar15 = DAT_07fc9198;
  puVar12 = *(undefined1 **)(DAT_07fc9198 + 0x20);
  if ((*(char *)(DAT_07fc919c + 0x14) == '\x01') && (puVar12 != (undefined1 *)0x0)) {
    if (*(char *)(DAT_07fc919c + 0x12) == '\x01') {
      *(undefined1 *)(DAT_07fc91a4 + 0x21) = 0;
      if (*(char *)(iVar17 + 0x1f) != '\x01') goto dispatch_radio_and_sensor_state_events_block_at_91a8_branch_at_07fc93f0;
      *(undefined1 *)(iVar20 + 0x21) = 1;
      iVar17 = DAT_07fc91a0;
      combine_two_six_byte_records_into_words(DAT_07fc91a0 + 0x10);
      iVar7 = DAT_07fc9530;
      iVar21 = DAT_07fc9510;
      iVar15 = DAT_07fc950c;
      bVar10 = *(byte *)(iVar20 + 0x3c);
      if (bVar10 < 4) {
        iVar13 = *(int *)(iVar17 + 0x1c);
        iVar14 = *(int *)(iVar17 + 0x14);
        switch(bVar10) {
        case 0:
          *(undefined1 *)(iVar20 + 0x3c) = 1;
          iVar15 = DAT_07fc950c;
          goto L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc93c0;
        case 1:
          if (*(char *)(DAT_07fc9528 + 3) != '\0') {
            iVar17 = *(int *)(iVar17 + 0x10);
            *(undefined1 *)(iVar20 + 0x27) = 0;
            if (iVar17 + 0x80 < iVar14) {
              *(undefined1 *)(iVar20 + 0x25) = 0x13;
              *(int *)(iVar20 + 0x34) =
                   (int)((iVar14 - iVar17) + ((uint)(iVar14 - iVar17 >> 0x1f) >> 0x1e)) >> 2;
              uVar16 = __aeabi_uidiv(DAT_07fc952c);
              uVar19 = (uint)*(byte *)(iVar20 + 0x3e);
              if (uVar16 <= *(byte *)(iVar20 + 0x3e)) {
                uVar19 = uVar16;
              }
              *(short *)(iVar20 + 0x2a) = (short)uVar19;
            }
            iVar15 = DAT_07fc950c;
            if (iVar17 + 0x80 < iVar13) {
              *(undefined1 *)(iVar20 + 0x26) = 0x13;
              *(int *)(iVar20 + 0x38) =
                   (int)((iVar13 - iVar17) + ((uint)(iVar13 - iVar17 >> 0x1f) >> 0x1c)) >> 4;
              uVar16 = __aeabi_uidiv(DAT_07fc952c);
              uVar19 = (uint)*(byte *)(iVar20 + 0x3f);
              if (uVar16 <= *(byte *)(iVar20 + 0x3f)) {
                uVar19 = uVar16;
              }
              *(short *)(iVar20 + 0x2c) = (short)uVar19;
            }
            *(undefined1 *)(iVar20 + 0x20) = 0xf;
            *(undefined1 *)(iVar20 + 0x3c) = 2;
            *(undefined1 *)(iVar20 + 0x2e) = 0x20;
            goto L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc93c0;
          }
          *(undefined1 *)(iVar20 + 0x3c) = 4;
          iVar15 = DAT_07fc9758;
          goto L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc93b8;
        case 2:
          if ((DAT_07fc9530 < iVar14) && (*(byte *)(iVar20 + 0x25) < 200)) {
            *(byte *)(iVar20 + 0x25) = *(byte *)(iVar20 + 0x25) + 2;
          }
          iVar15 = DAT_07fc950c;
          if (iVar7 < iVar13) {
            if (0x18 < *(byte *)(iVar20 + 0x26) >> 3) goto L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc93a8;
            uVar19 = *(byte *)(iVar20 + 0x26) + 2;
            *(char *)(iVar20 + 0x26) = (char)uVar19;
          }
          else {
            if (iVar14 < iVar7 + 1) {
L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc93a4:
              bVar10 = 3;
              break;
            }
            uVar19 = (uint)*(byte *)(iVar20 + 0x26);
          }
          if ((uVar19 < 200) && (*(byte *)(iVar20 + 0x25) >> 3 < 0x19)) {
            bVar10 = 2;
          }
          else {
L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc93a8:
            bVar10 = 4;
          }
          break;
        case 3:
          if (DAT_07fc9510 < iVar14) {
            if (*(byte *)(iVar20 + 0x25) >> 3 < 0x19) {
              cVar18 = *(byte *)(iVar20 + 0x25) + 1;
L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc9358:
              *(char *)(iVar20 + 0x25) = cVar18;
            }
          }
          else if ((iVar14 < DAT_07fc9534) && (*(char *)(iVar20 + 0x25) != '\0')) {
            cVar18 = *(char *)(iVar20 + 0x25) + -1;
            goto L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc9358;
          }
          if (iVar21 < iVar13) {
            if (*(byte *)(iVar20 + 0x26) >> 3 < 0x19) {
              cVar18 = *(byte *)(iVar20 + 0x26) + 1;
L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc937c:
              *(char *)(iVar20 + 0x26) = cVar18;
            }
          }
          else if ((iVar13 < DAT_07fc9764) && (*(char *)(iVar20 + 0x26) != '\0')) {
            cVar18 = *(char *)(iVar20 + 0x26) + -1;
            goto L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc937c;
          }
          bVar10 = 4;
          if (((DAT_07fc976c <= (uint)(iVar14 + DAT_07fc9768)) ||
              (DAT_07fc976c <= (uint)(iVar13 + DAT_07fc9768))) &&
             (*(byte *)(iVar20 + 0x26) >> 3 < 0x19)) {
            if (*(byte *)(iVar20 + 0x25) >> 3 < 0x19) goto L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc93a4;
            goto L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc93a8;
          }
        }
        *(undefined1 *)(iVar20 + 0x20) = 2;
        *(byte *)(iVar20 + 0x3c) = bVar10;
      }
      if (bVar10 == 4) {
L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc93b8:
        dispatch_radio_state_action(4);
      }
      else {
L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc93c0:
        publish_enabled_sensor_field_trigger_periodic_at_8774();
      }
    }
    else if ((*(char *)(DAT_07fc919c + 0x12) == '\0') &&
            (*(undefined1 *)(DAT_07fc9198 + 0x4d) = 0, *(char *)(DAT_07fc919c + 0x18) == '\x01')) {
      *(undefined1 *)(iVar15 + 0x4d) = 1;
      iVar20 = DAT_07fc91a0;
      combine_two_six_byte_records_into_words(DAT_07fc91a0);
      iVar21 = DAT_07fc950c;
      iVar17 = DAT_07fc9198;
      cVar18 = *(char *)(iVar15 + 0x58);
      iVar15 = *(int *)(iVar20 + 8);
      if (cVar18 == '\x02') {
        if (DAT_07fc9510 < iVar15) {
          if (*(byte *)(DAT_07fc950c + 0x52) < 0x79) {
            *(byte *)(DAT_07fc950c + 0x52) = *(byte *)(DAT_07fc950c + 0x52) + 1;
            goto L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc9308;
          }
          cVar18 = '\x03';
          iVar17 = iVar21;
        }
        else {
          cVar18 = '\x03';
          iVar17 = DAT_07fc9758;
          if ((iVar15 < DAT_07fc9534) && (iVar17 = iVar21, *(char *)(DAT_07fc950c + 0x52) != '\0'))
          {
            *(char *)(DAT_07fc950c + 0x52) = *(char *)(DAT_07fc950c + 0x52) + -1;
L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc9308:
            cVar18 = '\x02';
            iVar17 = iVar21;
          }
        }
        *(undefined1 *)(iVar17 + 0x4c) = 2;
        *(char *)(iVar17 + 0x58) = cVar18;
dispatch_radio_and_sensor_state_events_block_at_91a8_branch_at_07fc93e0:
        if (cVar18 == '\x03') {
          six_way_command_dispatch_default_branch_at_8040(4);
          iVar15 = iVar17;
          goto dispatch_radio_and_sensor_state_events_block_at_91a8_branch_at_07fc93f0;
        }
      }
      else if (cVar18 == '\x01') {
        iVar20 = *(int *)(iVar20 + 0xc);
        bVar10 = __aeabi_idiv(iVar20 + DAT_07fc9514,DAT_07fc9518);
        iVar17 = DAT_07fc950c;
        if (iVar20 <= DAT_07fc951c) {
          bVar10 = 0;
        }
        *(byte *)(DAT_07fc950c + 0x53) = bVar10;
        if (iVar20 + 0x80 < iVar15) {
          uVar19 = (int)((iVar15 - iVar20) + ((uint)(iVar15 - iVar20 >> 0x1f) >> 0x1a)) >> 6;
          *(short *)(iVar17 + 0x56) = (short)uVar19;
          uVar11 = __aeabi_uidiv((uint)bVar10 * DAT_07fc9520 + DAT_07fc9524,uVar19 & 0xffff);
          *(ushort *)(iVar17 + 0x50) = uVar11;
          if (*(byte *)(iVar17 + 0x59) < uVar11) {
            *(ushort *)(iVar17 + 0x50) = (ushort)*(byte *)(iVar17 + 0x59);
          }
          *(undefined1 *)(iVar17 + 0x4c) = 0xf;
          *(undefined1 *)(iVar17 + 0x54) = 0x30;
          *(undefined1 *)(iVar17 + 0x52) = 5;
          *(undefined1 *)(iVar17 + 0x58) = 2;
        }
        else {
          *(undefined1 *)(iVar17 + 0x4c) = 0xf;
          *(undefined1 *)(iVar17 + 0x54) = 0x30;
          *(undefined1 *)(iVar17 + 0x52) = 5;
          *(undefined1 *)(iVar17 + 0x58) = 2;
          *(ushort *)(iVar17 + 0x50) = (ushort)*(byte *)(iVar17 + 0x59);
        }
      }
      else {
        if (cVar18 != '\0') goto dispatch_radio_and_sensor_state_events_block_at_91a8_branch_at_07fc93e0;
        *(undefined1 *)(DAT_07fc9198 + 0x58) = 1;
      }
      dispatch_enabled_indicator_fields_for_device_status();
      iVar15 = iVar17;
    }
dispatch_radio_and_sensor_state_events_block_at_91a8_branch_at_07fc93f0:
    puVar12 = *(undefined1 **)(iVar15 + 0x20);
    iVar17 = DAT_07fc975c;
  }
  if (*(char *)(iVar17 + 0x15) != '\x01') {
    return puVar12;
  }
  if (puVar12 == (undefined1 *)0x0) {
    return (undefined1 *)0x0;
  }
  synchronize_callback_values_and_notify();
  iVar20 = DAT_07fc9760;
  puVar12 = (undefined1 *)(uint)*(byte *)(iVar17 + 0x12);
  if (puVar12 == (undefined1 *)0x1) {
    uVar4 = *(undefined1 *)(DAT_07fc9760 + 0x25);
    uVar5 = *(undefined1 *)(DAT_07fc9760 + 0x26);
    __aeabi_memclr(auStack_94,0x80);
    pbVar9 = DAT_07fc9774;
    DAT_07fc9774[0x204] = *(byte *)(iVar20 + 0x28);
    pbVar9[DAT_07fc9778] = *(byte *)(iVar20 + 0x2a);
    pbVar9[DAT_07fc977c] = *(byte *)(iVar20 + 0x2c);
    if ((undefined1 *)(uint)*(byte *)(iVar17 + 0x1e) != (undefined1 *)0x1) {
      return (undefined1 *)(uint)*(byte *)(iVar17 + 0x1e);
    }
    if ((undefined1 *)(uint)*(byte *)(iVar17 + 0x1f) != (undefined1 *)0x0) {
      return (undefined1 *)(uint)*(byte *)(iVar17 + 0x1f);
    }
    bVar10 = read_three_byte_samples_and_update_history(4);
    *DAT_07fc9774 = bVar10;
    pcVar8 = DAT_07fc9770;
    uVar19 = 0;
    bVar22 = false;
    do {
      iVar15 = DAT_07fc9790;
      pbVar9 = DAT_07fc9774;
      uVar16 = uVar19 & 0xff;
      if (bVar10 <= uVar16) {
        if (bVar22) {
          cVar18 = pcVar8[5];
          pcVar8[5] = cVar18 + -1;
          if ((char)(cVar18 + -1) == '\0') {
            pcVar8[5] = '\x03';
            dispatch_radio_state_action(5);
          }
        }
        else {
          pcVar8[5] = '\x03';
        }
        cVar18 = pcVar8[3];
        if (cVar18 == '\x01') {
          dispatch_batch_item_three_sign_extended_at_ee4c(DAT_07fc9774 + 0x84,DAT_07fc9774 + 0xc4,uVar4,uVar5,*DAT_07fc9774,auStack_94,
                       auStack_94,auStack_94);
        }
        serialize_measurement_record_by_mode(&local_a4);
        iVar15 = DAT_07fc9760;
        *(char *)(DAT_07fc9760 + 0x41) = cVar18;
        *(undefined4 *)(iVar15 + 0x58) = local_a4;
        *(undefined4 *)(iVar15 + 0x5c) = uStack_a0;
        *(undefined4 *)(iVar15 + 0x60) = uStack_9c;
        *(undefined4 *)(iVar15 + 100) = uStack_98;
        return auStack_a8;
      }
      iVar17 = uVar16 * 0x10;
      iVar20 = *(int *)(DAT_07fc9774 + iVar17 + 0x108);
      *(int *)(DAT_07fc9774 + uVar16 * 4 + 0x84) = iVar20 + DAT_07fc9790;
      iVar21 = *(int *)(pbVar9 + iVar17 + 0x110);
      *(int *)(pbVar9 + uVar16 * 4 + 0xc4) = iVar21 + iVar15;
      pbVar1 = pbVar9 + uVar16 * 4 + 4;
      pbVar1[0] = 0;
      pbVar1[1] = 0;
      pbVar1[2] = 0;
      pbVar1[3] = 0;
      if (pcVar8[3] == '\x01') {
        iVar15 = *(int *)(pbVar9 + iVar17 + 0x104);
        iVar17 = apply_range_mode_validity_checks_preserving_at_8878();
        if ((((int)(DAT_07fc9794 * (uint)*(byte *)(DAT_07fc9760 + 0x26) + (iVar21 - iVar15)) <
              DAT_07fc9798) || (iVar17 < DAT_07fc9780)) && (pcVar8[3] = '\0', pcVar8[4] != '\0')) {
          pcVar8[4] = '\0';
L_dispatch_radio_and_sensor_state_events_block_at_9538_at_07fc974e:
          puVar12 = (undefined1 *)initialize_radio_scan_and_mark_state_ready();
          return puVar12;
        }
      }
      else {
        iVar15 = apply_range_mode_validity_checks_preserving_at_8878();
        bVar6 = DAT_07fc9784 < iVar15;
        pcVar8[3] = bVar6;
        if ((bool)pcVar8[4] != bVar6) {
          pcVar8[4] = bVar6;
          if (DAT_07fc9784 < iVar15) {
            reinitialize_sensor_processing_state();
            dispatch_radio_state_action(0);
            puVar12 = (undefined1 *)dispatch_radio_state_action(3);
            return puVar12;
          }
          goto L_dispatch_radio_and_sensor_state_events_block_at_9538_at_07fc974e;
        }
      }
      if (((iVar20 < DAT_07fc9788) || (DAT_07fc978c < iVar20)) ||
         ((iVar21 < DAT_07fc9788 || (DAT_07fc978c < iVar21)))) {
        bVar22 = pcVar8[3] != '\0';
      }
      uVar19 = uVar19 + 1;
    } while( true );
  }
  if (puVar12 != (undefined1 *)0x0) {
    return puVar12;
  }
  __aeabi_memclr(auStack_94);
  DAT_07fc9774[0x204] = *(byte *)(iVar15 + 0x50);
  uVar19 = 0;
  local_ac = 0;
  local_b0 = 0;
  local_b4 = 0;
  local_b8 = 0;
  if ((undefined1 *)(uint)*(byte *)(iVar17 + 0x17) != (undefined1 *)0x1) {
    return (undefined1 *)(uint)*(byte *)(iVar17 + 0x17);
  }
  if ((undefined1 *)(uint)*(byte *)(iVar17 + 0x18) != (undefined1 *)0x0) {
    return (undefined1 *)(uint)*(byte *)(iVar17 + 0x18);
  }
  combine_two_six_byte_records_into_words(&local_b8);
  iVar15 = local_b0;
  bVar10 = read_three_byte_samples_and_update_history(2);
  *DAT_07fc9774 = bVar10;
  pcVar8 = DAT_07fc9770;
  for (; pbVar9 = DAT_07fc9774, uVar16 = uVar19 & 0xff, uVar16 < bVar10; uVar19 = uVar19 + 1) {
    local_c0 = *(int *)(DAT_07fc9774 + uVar16 * 8 + 0x104);
    *(int *)(DAT_07fc9774 + uVar16 * 4 + 0xc4) = local_c0;
    *(int *)(pbVar9 + uVar16 * 4 + 4) = *(int *)(pbVar9 + uVar16 * 8 + 0x108) << 1;
    iVar20 = apply_range_mode_validity_checks_preserving_at_8878();
    if (iVar20 < DAT_07fc9780) {
      bVar2 = *(byte *)(iVar17 + 0x16);
      if ((bVar2 < 2) && (*(byte *)(iVar17 + 0x16) = bVar2 + 1, bVar2 != 1)) goto L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc94ba;
      cVar18 = '\0';
L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc94c2:
      *pcVar8 = cVar18;
    }
    else {
      if ((DAT_07fc9784 < iVar20) &&
         ((*(char *)(iVar17 + 0x16) == '\0' ||
          (cVar18 = *(char *)(iVar17 + 0x16) + -1, *(char *)(iVar17 + 0x16) = cVar18, cVar18 == '\0'
          )))) {
        cVar18 = '\x01';
        goto L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc94c2;
      }
L_dispatch_radio_and_sensor_state_events_block_at_91a8_at_07fc94ba:
      cVar18 = *pcVar8;
    }
    if (pcVar8[1] != cVar18) {
      pcVar8[1] = cVar18;
      if (cVar18 == '\x01') {
        initialize_state_and_return_one();
        six_way_command_dispatch_default_branch_at_8040(0);
        six_way_command_dispatch_default_branch_at_8040(3);
      }
      else if (cVar18 == '\0') {
        *(undefined1 *)(iVar17 + 0x1b) = 0;
        ensure_radio_profile_then_scan_paired_bytes(DAT_07fc97a8);
        *(undefined2 *)(DAT_07fc9758 + 0x50) = 0;
        configure_radio_state_and_send_command_6a();
        *(undefined1 *)(iVar17 + 0x11) = 1;
      }
    }
  }
  cVar18 = *pcVar8;
  if (cVar18 == '\0') {
    if (((local_c0 <= DAT_07fc979c) && (*(char *)(iVar17 + 0x1b) != '\0')) &&
       ((uint)(*(int *)(DAT_07fc9758 + 0x38) + DAT_07fc97a0) <= DAT_07fc97a4)) {
      *(undefined2 *)(iVar17 + 0x46) = *(undefined2 *)(iVar17 + 0x40);
    }
    if (DAT_07fc9788 <= iVar15) goto L_dispatch_radio_and_sensor_state_events_block_at_9538_at_07fc9692;
L_dispatch_radio_and_sensor_state_events_block_at_9538_at_07fc969a:
    if (cVar18 == '\0') {
L_dispatch_radio_and_sensor_state_events_block_at_9538_at_07fc96b8:
      pcVar8[2] = '\x03';
      goto L_dispatch_radio_and_sensor_state_events_block_at_9538_at_07fc96bc;
    }
  }
  else if (DAT_07fc9788 <= iVar15) {
L_dispatch_radio_and_sensor_state_events_block_at_9538_at_07fc9692:
    if (DAT_07fc978c + 1 <= iVar15) goto L_dispatch_radio_and_sensor_state_events_block_at_9538_at_07fc969a;
    goto L_dispatch_radio_and_sensor_state_events_block_at_9538_at_07fc96b8;
  }
  cVar3 = pcVar8[2];
  pcVar8[2] = cVar3 + -1;
  if ((char)(cVar3 + -1) == '\0') {
    pcVar8[2] = '\x03';
    six_way_command_dispatch_default_branch_at_8040(5);
    cVar18 = *pcVar8;
  }
L_dispatch_radio_and_sensor_state_events_block_at_9538_at_07fc96bc:
  if (cVar18 == '\x01') {
    applies_pending_record_operation_item_while_at_d99c(DAT_07fc9774 + 4,*DAT_07fc9774,auStack_94,auStack_94,auStack_94);
  }
  build_and_copy_compact_sensor_status_reply(&local_b8);
  iVar15 = DAT_07fc9760;
  __aeabi_memcpy(DAT_07fc9760 + 0x44,&local_b8,0x14);
  *(char *)(iVar15 + 0x40) = cVar18;
  return (undefined1 *)0x40;
}

