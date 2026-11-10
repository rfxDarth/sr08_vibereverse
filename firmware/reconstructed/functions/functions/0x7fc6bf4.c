// rea decompile_all
// name: handle_incoming_service_record
// address: 0x7fc6bf4
// body: available
// range: 0x7fc6bf4-0x7fc6da3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 handle_incoming_service_record(undefined4 param_1,ushort *param_2,undefined4 param_3,uint param_4)

{
  ushort uVar1;
  uint uVar2;
  byte bVar3;
  short *psVar4;
  uint uVar5;
  int iVar6;
  undefined1 *puVar7;
  ushort *puVar8;
  short sVar9;
  uint uVar10;
  ushort uVar11;
  undefined4 local_40;
  undefined4 local_3c;
  byte local_38;
  undefined1 auStack_34 [8];
  undefined1 auStack_2c [4];
  uint local_28 [5];
  
  psVar4 = (short *)find_keyed_record_value(0xfd);
  local_38 = 0;
  uVar5 = match_measurement_index_and_write_offset(*param_2);
  bVar3 = local_38;
  uVar2 = DAT_07fc6db0;
  if (param_2[1] != 0) {
    *DAT_07fc6da4 = 200;
    *DAT_07fc6da8 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  sVar9 = 0;
  if (uVar5 != 0) goto L_handle_incoming_service_record_at_07fc6d22;
  uVar10 = (uint)local_38;
  if (((0x2aU >> uVar10 & 1) == 0) ||
     ((uint)**(ushort **)(DAT_07fc6dac + uVar10 * 0x14) != DAT_07fc6db0 + 0xff)) {
    local_28[1] = 0;
    local_28[0] = 0;
    attmdb_get_attribute(*param_2,local_28);
    uVar5 = 0;
    if (-1 < *(short *)(local_28[0] + 8)) {
      uVar5 = attmdb_att_set_value(*param_2,param_2[2],param_2[1],param_2 + 3);
    }
  }
  else {
    local_3c = 0;
    local_40 = 0;
    uVar1 = *param_2;
    iVar6 = attmdb_get_service(uVar1);
    do {
      uVar11 = uVar1;
      if ((uVar11 < *(ushort *)(iVar6 + 4)) || (*(ushort *)(iVar6 + 6) < uVar11)) goto L_handle_incoming_service_record_at_07fc6d42;
      attmdb_get_attribute(uVar11,auStack_34);
      attmdb_get_uuid(auStack_34,auStack_2c,local_28,0,0);
      uVar1 = uVar11 - 1;
    } while ((local_28[0] & 0xffff) != uVar2);
    sVar9 = uVar11 + 1;
L_handle_incoming_service_record_at_07fc6d42:
    if (sVar9 == 0) {
      *DAT_07fc6da4 = 200;
      *DAT_07fc6da8 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    attmdb_att_get_permission(sVar9,local_28,0,&local_40);
    if (param_2[2] == 2) {
      if ((int)((local_28[0] >> 8) << 0x1e) < 0) {
        if (param_2[3] < 2) goto L_handle_incoming_service_record_at_07fc6d90;
        uVar5 = 0xffffff81;
      }
      else if ((param_2[3] | 2) == 2) {
L_handle_incoming_service_record_at_07fc6d90:
        uVar5 = 0;
        replace_byte_in_variable_length_record_at_index(param_4 >> 8,uVar10);
      }
      else {
        uVar5 = 0x81;
      }
    }
    else {
      uVar5 = 0xd;
    }
  }
  if ((uVar5 & 0xff) == 0) {
    puVar7 = (undefined1 *)
             ke_msg_alloc(DAT_07fc6db8,
                             (uint)(int)*psVar4 >> 0xf & param_4 & 0xffffff00 |
                             DAT_07fc6fb0 & (int)*psVar4,param_3,param_2[2] + 6);
    __aeabi_memcpy(puVar7 + 6,param_2 + 3,param_2[2]);
    *(ushort *)(puVar7 + 2) = (ushort)bVar3;
    uVar1 = param_2[2];
    *puVar7 = (char)(param_4 >> 8);
    *(ushort *)(puVar7 + 4) = uVar1;
    ke_msg_send(puVar7);
    uVar5 = 0;
  }
L_handle_incoming_service_record_at_07fc6d22:
  puVar8 = (ushort *)ke_msg_alloc(DAT_07fc6fac,param_4,param_3,4);
  *(char *)(puVar8 + 1) = (char)uVar5;
  *puVar8 = *param_2;
  ke_msg_send();
  return 0;
}

