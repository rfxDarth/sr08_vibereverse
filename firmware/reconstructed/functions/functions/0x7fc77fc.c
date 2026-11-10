// rea decompile_all
// name: build_measurement_packet_and_handle_reply
// address: 0x7fc77fc
// body: available
// range: 0x7fc77fc-0x7fc7ba9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


uint build_measurement_packet_and_handle_reply(int param_1,ushort *param_2,ushort param_3,ushort param_4,byte *param_5)

{
  ushort uVar1;
  byte bVar2;
  ushort *puVar3;
  uint uVar4;
  undefined4 uVar5;
  int iVar6;
  char cVar7;
  char cVar8;
  ushort *puVar9;
  ushort *puVar10;
  int *piVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  byte *pbVar15;
  uint uVar16;
  int local_54;
  uint local_38;
  byte *local_2c;
  byte local_24;
  byte local_23;
  int local_20;
  ushort local_1c [2];
  uint local_18;
  
  puVar3 = (ushort *)ke_malloc(0x24);
  local_18 = 0;
  __aeabi_memclr(puVar3,0x24);
  uVar4 = (uint)*param_5;
  local_38 = 0;
  if (uVar4 != 1) {
    local_38 = 0xffffff81;
  }
  local_2c = param_5 + 4;
  cVar8 = '\0';
  local_54 = 0;
  uVar12 = 0;
  while( true ) {
    if ((local_38 * 0x1000000 != 0) || (uVar14 = uVar12 & 0xff, uVar4 <= uVar14)) break;
    bVar2 = param_5[uVar14 * 0xe + 3];
    if (2 < bVar2) {
      local_38 = 0x81;
      goto L_build_measurement_packet_and_handle_reply_at_07fc7a16;
    }
    uVar13 = 0x16;
    puVar3[uVar14 * 0xb + 2] = param_5[uVar14 * 0xe + 2] & 0x3f;
    puVar9 = puVar3 + uVar14 * 0xb + 2;
    *(byte *)((int)puVar9 + 0x13) = bVar2;
    uVar5 = ke_malloc(0x144,2);
    *(undefined4 *)(local_1c + uVar14 * 2 + -2) = uVar5;
    *(char *)(puVar9 + 9) = (char)puVar9[9] + '\a';
    uVar16 = 0xfd;
    local_18 = 0xfd;
    __aeabi_memcpy(uVar5,DAT_07fc7bb0,0xe4);
    puVar10 = puVar9 + 9;
    bVar2 = param_5[uVar14 * 0xe + 2];
    uVar4 = (uint)bVar2;
    if ((int)(uVar4 << 0x1c) < 0) {
      *(char *)puVar10 = (char)*puVar10 + '\x02';
      *(undefined2 *)(local_20 + 0x14) = *(undefined2 *)(param_5 + uVar14 * 0xe + 0xc);
      uVar16 = 0x1ff;
      local_18 = uVar16;
    }
    if ((int)(uVar4 << 0x1d) < 0) {
      *(char *)puVar10 = (char)*puVar10 + '\x02';
      uVar16 = uVar16 | 0x600;
      local_18 = uVar16;
    }
    if ((bVar2 & 1) != 0) {
      *(char *)puVar10 = (char)*puVar10 + '\x05';
      uVar16 = uVar16 + 0xf800;
      local_18 = uVar16;
      if ((int)(uVar4 << 0x1b) < 0) {
        *(uint *)(local_20 + 0x94) = *(uint *)(local_20 + 0x94) | DAT_07fc7bac;
      }
    }
    if ((int)(uVar4 << 0x1e) < 0) {
      cVar7 = (char)*puVar10 + '\x03';
      *(char *)puVar10 = cVar7;
      local_18 = uVar16 + 0x70000;
      if ((int)(uVar4 << 0x1a) < 0) {
        *(uint *)(local_20 + 0xd0) = *(uint *)(local_20 + 0xd0) | DAT_07fc7bac;
      }
    }
    else {
      cVar7 = (char)*puVar10;
    }
    *(char *)(puVar9 + 10) = cVar7;
    local_54 = local_20;
    piVar11 = (int *)(local_20 + 0xf4);
    local_38 = 0;
    for (uVar4 = 0; uVar4 < param_5[uVar14 * 0xe + 3]; uVar4 = uVar4 + 1) {
      *(char *)puVar10 = (char)*puVar10 + '\x03';
      uVar16 = local_18 |
               1 << (uVar13 - 1 & 0x1d) | 1 << (uVar13 - 2 & 0x1c) | 1 << (uVar13 - 3 & 0x1f);
      local_18 = uVar16;
      __aeabi_memcpy(piVar11 + -4,DAT_07fc7bb0 + 0xe4,0x30);
      bVar2 = local_2c[uVar4] & 3;
      if (bVar2 == 3) {
        iVar6 = DAT_07fc7bac + 1;
      }
      else {
        iVar6 = DAT_07fc7bb4;
        if (bVar2 != 2) {
          if (bVar2 == 1) {
            *(char *)puVar10 = (char)*puVar10 + '\x01';
            *puVar9 = *puVar9 | (ushort)(0x40 << (uVar4 & 0xff));
            local_18 = uVar16 | 1 << (uVar13 & 0x1e);
            iVar6 = DAT_07fc7bb8;
            if (-1 < (int)((uint)local_2c[uVar4] << 0x1b)) {
              iVar6 = 0x201;
            }
          }
          else {
            local_38 = 0x81;
            iVar6 = 0;
          }
        }
      }
      *piVar11 = iVar6;
      piVar11 = piVar11 + 0xc;
      uVar13 = uVar13 + 4;
    }
    cVar8 = (char)*puVar10 + cVar8;
    local_2c = local_2c + 0xe;
    uVar4 = (uint)*param_5;
    uVar12 = uVar12 + 1;
  }
  if (local_38 * 0x1000000 == 0) {
    local_38 = attmdb_reserve_handle_range(param_2,cVar8);
    uVar4 = (uint)*param_5;
  }
L_build_measurement_packet_and_handle_reply_at_07fc7a16:
  *(char *)((int)puVar3 + 0x21) = (char)uVar4;
  uVar12 = 0;
  local_24 = 0;
  local_1c[0] = *param_2;
  puVar3[0xd] = local_1c[0];
  pbVar15 = param_5;
  do {
    if ((local_38 * 0x1000000 != 0) || (uVar4 <= uVar12)) {
      if (local_38 * 0x1000000 == 0) {
        *(ushort **)(param_1 + 0x10) = puVar3;
        *(undefined2 *)(param_1 + 0x16) = 0x26;
        *(undefined2 *)(param_1 + 0xe) = 1;
        *(undefined4 *)(param_1 + 4) = DAT_07fc7bbc;
        uVar1 = *(ushort *)(param_1 + 0x14);
        puVar3[1] = uVar1;
        *(ushort **)(param_1 + 8) = puVar3 + 0x10;
        *puVar3 = param_4 << 0xf | param_3;
        ke_state_set(uVar1,0);
      }
      else {
        ke_free(puVar3);
      }
      if (local_54 != 0) {
        ke_free();
      }
      return local_38 & 0xff;
    }
    uVar4 = 0;
    local_38 = attm_svc_create_db(local_1c,DAT_07fc7bc0,&local_18 + uVar12,0x1b,0,
                               *(undefined2 *)(param_1 + 0x14),local_54,
                               (param_4 & 0x1e) - 0x80 & 0xff);
    local_1c[0] = local_1c[0] + (byte)puVar3[uVar12 * 0xb + 0xb];
    if (local_38 == 0) {
      iVar6 = compute_display_segment_position_from_mode_table(puVar3,uVar12 & 0xff,3,0);
      if (iVar6 == 0) {
        *DAT_07fc7bc4 = 200;
        *DAT_07fc7bc8 = 8;
        do {
                    /* WARNING: Do nothing block with infinite loop */
        } while( true );
      }
      local_38 = attmdb_att_set_value(iVar6,4,0,param_5 + uVar12 * 0xe + 8);
      if ((local_38 == 0) && (local_38 = 0, (int)((uint)param_5[uVar12 * 0xe + 2] << 0x1c) < 0)) {
        iVar6 = compute_display_segment_position_from_mode_table(puVar3,uVar12 & 0xff,8,0);
        if (iVar6 == 0) {
          *DAT_07fc7bc4 = 200;
          *DAT_07fc7bc8 = 8;
          do {
                    /* WARNING: Do nothing block with infinite loop */
          } while( true );
        }
        local_38 = attmdb_att_set_value(iVar6,2,0,param_5 + uVar12 * 0xe + 0xe);
      }
    }
    while ((local_38 & 0xff) == 0) {
      if (param_5[uVar12 * 0xe + 3] <= uVar4) {
        local_38 = 0;
        break;
      }
      local_24 = pbVar15[uVar4 + 6];
      local_23 = pbVar15[uVar4 + 4] & 3;
      iVar6 = compute_display_segment_position_from_mode_table(puVar3,uVar12 & 0xff,0x15,uVar4 & 0xff);
      if (iVar6 == 0) {
        *DAT_07fc7bc4 = 200;
        *DAT_07fc7bc8 = 8;
        do {
                    /* WARNING: Do nothing block with infinite loop */
        } while( true );
      }
      local_38 = attmdb_att_set_value(iVar6,2,0,&local_24);
      uVar4 = uVar4 + 1;
    }
    *(undefined1 *)((int)puVar3 + uVar12 * 0x16 + 0x19) = 1;
    pbVar15 = pbVar15 + 0xe;
    uVar4 = (uint)*param_5;
    uVar12 = uVar12 + 1;
  } while( true );
}

