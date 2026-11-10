// rea decompile_all
// name: append_or_finalize_measurement_record_chunk
// address: 0x7fc5968
// body: available
// range: 0x7fc5968-0x7fc5a59 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void append_or_finalize_measurement_record_chunk(undefined4 param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  undefined2 uVar1;
  undefined2 uVar2;
  undefined1 uVar3;
  int iVar4;
  undefined1 *puVar5;
  undefined2 *puVar6;
  int iVar7;
  uint uVar8;
  uint uVar9;
  int iVar10;
  undefined4 local_18;
  int local_14;
  
  local_18 = param_3;
  local_14 = param_4;
  iVar4 = find_keyed_record_value(0xfd);
  iVar10 = *(int *)(iVar4 + 8);
  if (iVar10 == 0) {
    *DAT_07fc5dac = 200;
    *DAT_07fc5db0 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  find_measurement_record_by_id(*(undefined1 *)(iVar4 + 0xd),&local_18,&local_14);
  if ((short)local_18 != 8) {
    *DAT_07fc5dac = 200;
    *DAT_07fc5db0 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  uVar9 = (uint)*(byte *)(iVar4 + 0xc);
  do {
    while( true ) {
      uVar8 = uVar9;
      if (7 < uVar8) {
        uVar1 = *(undefined2 *)(*(int *)(iVar4 + 8) + 6);
        uVar2 = *(undefined2 *)(*(int *)(iVar4 + 8) + 8);
        if (*(char *)(iVar10 + 0xd) == '\0') {
          iVar7 = ke_msg_alloc(DAT_07fc5a64 + 2U & 0xffff,uVar2,uVar1,6);
          *(undefined2 *)(iVar7 + 2) = *(undefined2 *)(iVar10 + 0xe);
          puVar6 = (undefined2 *)(iVar7 + 4);
        }
        else {
          puVar6 = (undefined2 *)ke_msg_alloc(DAT_07fc5a64,uVar2,uVar1,4);
          *puVar6 = *(undefined2 *)(iVar10 + 0xe);
          puVar6 = puVar6 + 1;
        }
        *(undefined1 *)puVar6 = 0;
        ke_msg_send();
        ke_free(*(undefined4 *)(iVar4 + 8));
        *(undefined4 *)(iVar4 + 8) = 0;
        ke_state_set(DAT_07fc5a68 & *(ushort *)(iVar4 + 2),0);
        return;
      }
      uVar9 = uVar8 + 1;
      *(char *)(iVar4 + 0xc) = (char)uVar9;
      if (*(char *)(iVar10 + 0xd) != '\0') break;
      if ((int)((uint)*(byte *)(local_14 + uVar8) << 0x1e) < 0) goto L_append_or_finalize_measurement_record_chunk_at_07fc59ac;
    }
  } while ((*(byte *)(local_14 + uVar8) & 1) == 0);
L_append_or_finalize_measurement_record_chunk_at_07fc59ac:
  puVar5 = (undefined1 *)
           ke_msg_alloc(0xc10,uVar8 * 0x100 + 8 & 0xffff,*(undefined2 *)(*(int *)(iVar4 + 8) + 6)
                           ,*(short *)(iVar10 + 0x10) + 8);
  if (*(char *)(iVar10 + 0xd) == '\0') {
    uVar3 = 0x13;
  }
  else {
    uVar3 = 0x12;
  }
  *puVar5 = uVar3;
  *(short *)(puVar5 + 4) = *(short *)(iVar10 + 0xe) + *(short *)(iVar4 + 4);
  *(undefined2 *)(puVar5 + 6) = *(undefined2 *)(iVar10 + 0x10);
  __aeabi_memcpy(puVar5 + 8,iVar10 + 0x12,*(undefined2 *)(iVar10 + 0x10));
  ke_msg_send(puVar5);
  return;
}

