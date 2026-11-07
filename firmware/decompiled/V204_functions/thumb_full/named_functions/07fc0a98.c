/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc0a98(int param_1)

{
  undefined2 uVar1;
  int iVar2;
  int iVar3;
  undefined1 *puVar4;
  undefined2 *puVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  
  iVar6 = *(int *)(_DAT_07fc0e9c + param_1 * 4);
  iVar7 = param_1 * 0x100;
  if (iVar6 == 0) {
    return;
  }
  iVar2 = *(int *)(iVar6 + 4);
  if (3 < *(ushort *)(iVar2 + 4)) {
    uVar1 = *(undefined2 *)(iVar2 + 2);
    iVar3 = ROM_l2cc_detect_dest /* 0x07f18e02 */(param_1,iVar2 + 6);
    if (iVar3 != _DAT_07fc0ea0) {
      uVar8 = (uint)*(ushort *)(iVar2 + 8);
      *(ushort *)(iVar2 + -6) = (ushort)iVar3 | (ushort)iVar7;
      if (0x3f < uVar8 - 0x40) {
        **(undefined1 **)(iVar6 + 4) = 0x34;
        puVar5 = (undefined2 *)ROM_ke_malloc /* 0x07f1b994 */(uVar1,2);
        ROM___aeabi_memcpy /* 0x07f1e0ac */(puVar5,iVar2 + 6,uVar1);
        *(undefined2 *)(*(int *)(iVar6 + 4) + 6) = *puVar5;
        *(undefined2 *)(*(int *)(iVar6 + 4) + 8) = puVar5[1];
        if ((uVar8 == 6) || (uVar8 == 4)) {
          if (4 < *(ushort *)(*(int *)(iVar6 + 4) + 4)) {
            *(undefined1 *)(*(int *)(iVar6 + 4) + 10) = *(undefined1 *)(puVar5 + 2);
            *(undefined1 *)(*(int *)(iVar6 + 4) + 10) = *(undefined1 *)(puVar5 + 2);
          }
LAB_07fc0ba4:
          ROM_ke_msg_send /* 0x07f1bbe2 */(*(undefined4 *)(iVar6 + 4));
        }
        else {
          iVar7 = *(int *)(iVar6 + 4);
          if (uVar8 == 5) {
            if (4 < *(ushort *)(iVar7 + 4)) {
              *(undefined1 *)(iVar7 + 10) = *(undefined1 *)(puVar5 + 2);
              *(undefined1 *)(*(int *)(iVar6 + 4) + 10) = *(undefined1 *)(puVar5 + 2);
              if (5 < *(ushort *)(*(int *)(iVar6 + 4) + 4)) {
                *(undefined1 *)(*(int *)(iVar6 + 4) + 0xb) = *(undefined1 *)((int)puVar5 + 5);
              }
            }
            goto LAB_07fc0ba4;
          }
          ROM_ke_msg_free /* 0x07f1bc36 */(iVar7 + -0xc);
        }
        ROM_ke_free /* 0x07f1ba8a */(puVar5);
        goto LAB_07fc0ad8;
      }
      iVar2 = ROM_gapc_search_lecb_channel /* 0x07f14f10 */(param_1,uVar8,3);
      if ((iVar2 != 0) && (*(char *)(iVar2 + 0xe) == '\x01')) {
        *(undefined1 *)(iVar2 + 0xe) = 0x34;
        puVar4 = (undefined1 *)ROM_ke_msg_alloc /* 0x07f1bbb0 */(_DAT_07fc0ea4,iVar7 + 10,iVar7 + 6,4);
        *(undefined2 *)(puVar4 + 2) = *(undefined2 *)(iVar2 + 0xc);
        *puVar4 = 0x10;
        ROM_ke_msg_send /* 0x07f1bbe2 */();
      }
    }
    iVar2 = *(int *)(iVar6 + 4);
  }
  ROM_ke_msg_free /* 0x07f1bc36 */(iVar2 + -0xc);
LAB_07fc0ad8:
  *(undefined4 *)(iVar6 + 4) = 0;
  return;
}

