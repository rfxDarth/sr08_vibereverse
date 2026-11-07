/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc5968(undefined4 param_1,undefined4 param_2,undefined4 param_3,int param_4)

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
  iVar4 = FUN_07fcb080(0xfd);
  iVar10 = *(int *)(iVar4 + 8);
  if (iVar10 == 0) {
    *DAT_07fc5dac = 200;
    *DAT_07fc5db0 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  FUN_07fc57b8(*(undefined1 *)(iVar4 + 0xd),&local_18,&local_14);
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
          iVar7 = ROM_ke_msg_alloc /* 0x07f1bbb0 */(DAT_07fc5a64 + 2U & 0xffff,uVar2,uVar1,6);
          *(undefined2 *)(iVar7 + 2) = *(undefined2 *)(iVar10 + 0xe);
          puVar6 = (undefined2 *)(iVar7 + 4);
        }
        else {
          puVar6 = (undefined2 *)ROM_ke_msg_alloc /* 0x07f1bbb0 */(DAT_07fc5a64,uVar2,uVar1,4);
          *puVar6 = *(undefined2 *)(iVar10 + 0xe);
          puVar6 = puVar6 + 1;
        }
        *(undefined1 *)puVar6 = 0;
        ROM_ke_msg_send /* 0x07f1bbe2 */();
        ROM_ke_free /* 0x07f1ba8a */(*(undefined4 *)(iVar4 + 8));
        *(undefined4 *)(iVar4 + 8) = 0;
        ROM_ke_state_set /* 0x07f1beb6 */(DAT_07fc5a68 & *(ushort *)(iVar4 + 2),0);
        return;
      }
      uVar9 = uVar8 + 1;
      *(char *)(iVar4 + 0xc) = (char)uVar9;
      if (*(char *)(iVar10 + 0xd) != '\0') break;
      if ((int)((uint)*(byte *)(local_14 + uVar8) << 0x1e) < 0) goto LAB_07fc59ac;
    }
  } while ((*(byte *)(local_14 + uVar8) & 1) == 0);
LAB_07fc59ac:
  puVar5 = (undefined1 *)
           ROM_ke_msg_alloc /* 0x07f1bbb0 */(0xc10,uVar8 * 0x100 + 8 & 0xffff,*(undefined2 *)(*(int *)(iVar4 + 8) + 6)
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
  ROM___aeabi_memcpy /* 0x07f1e0ac */(puVar5 + 8,iVar10 + 0x12,*(undefined2 *)(iVar10 + 0x10));
  ROM_ke_msg_send /* 0x07f1bbe2 */(puVar5);
  return;
}

