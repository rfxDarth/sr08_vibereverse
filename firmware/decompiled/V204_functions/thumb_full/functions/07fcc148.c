/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fcc148(undefined4 param_1,int param_2)

{
  char *pcVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  undefined4 uStack_5c;
  undefined2 uStack_58;
  undefined2 uStack_56;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  char cStack_38;
  undefined1 auStack_37 [31];
  undefined1 uStack_18;
  undefined1 uStack_17;
  
  pcVar1 = _DAT_07fcc2ec;
  if (*(char *)(param_2 + 2) == '\0') {
    return 0;
  }
  uVar6 = *(uint *)(_DAT_07fcc3c4 + 0x18);
  if (uVar6 != 0) {
    iVar7 = *(int *)(_DAT_07fcc3c4 + 0x1c);
    if (0x200 < iVar7 + (uint)*(byte *)(param_2 + 3)) {
      uVar3 = 7;
      goto LAB_07fcc2e0;
    }
    func_0x07f1e0ac(_DAT_07fcc2ec + iVar7,param_2 + 4);
    iVar8 = _DAT_07fcc3c4;
    uVar2 = iVar7 + (uint)*(byte *)(param_2 + 3);
    *(uint *)(_DAT_07fcc3c4 + 0x1c) = uVar2;
    if (uVar6 == uVar2) {
      FUN_07fc2e6c();
      iVar7 = _DAT_07fcc56c;
      uVar2 = *(uint *)(iVar8 + 0x1c);
      for (uVar6 = 0; uVar2 != uVar6; uVar6 = uVar6 + 1) {
        *(byte *)(iVar7 + 0x14) = *(byte *)(iVar7 + 0x14) ^ pcVar1[uVar6];
      }
      iVar4 = *(int *)(iVar8 + 0x20);
      if ((uVar2 == 0) || (iVar4 != 0)) {
        uVar6 = *(uint *)(iVar8 + 0x24);
        uStack_5c = 6;
        if (iVar4 + uVar2 <= uVar6 + 1) {
          if (uVar6 < iVar4 + uVar2) {
            uVar2 = uVar6 - iVar4;
            *(uint *)(iVar8 + 0x1c) = uVar2;
          }
          iVar4 = FUN_07fc3ea0(_DAT_07fcc2ec,*(int *)(iVar8 + 0x14) + iVar4,uVar2,1);
          iVar7 = iVar8;
joined_r0x07fcc2b2:
          uStack_5c = 6;
          iVar8 = iVar7;
          if (-1 < iVar4) {
            *(int *)(iVar7 + 0x20) = *(int *)(iVar7 + 0x20) + *(int *)(iVar7 + 0x1c);
            uStack_5c = 2;
          }
        }
      }
      else {
        uStack_17 = 0;
        uStack_18 = 0;
        uStack_5c = 0x12;
        if (((0x3f < uVar2) && (*pcVar1 == 'p')) && (pcVar1[1] == 'Q')) {
          iVar4 = (uint)(byte)pcVar1[0x28] * 0x100 + (uint)(byte)pcVar1[0x27];
          iVar5 = (uint)(byte)pcVar1[0x26] * 0x100 + (uint)(byte)pcVar1[0x25];
          if ((((iVar5 == 1) && (iVar4 == 0x17)) || (iVar4 == 0 && iVar5 == 0)) &&
             (pcVar1[0xd] == '.')) {
            iVar4 = *(int *)(pcVar1 + 4);
            *(undefined1 *)(iVar7 + 0x1c) = 1;
            *(int *)(iVar8 + 0x24) = iVar4 + 0x40;
            if (iVar4 == 0) {
              uStack_5c = 0x13;
            }
            else {
              *(undefined4 *)(iVar8 + 0x14) = 0x6c000;
              iVar4 = FUN_07fc3e90();
              iVar7 = _DAT_07fcc3c4;
              uStack_5c = 6;
              if (iVar4 == 0) {
                uStack_56 = 0xff;
                uStack_54 = *(undefined4 *)(pcVar1 + 4);
                uStack_50 = *(undefined4 *)(pcVar1 + 8);
                uStack_4c = *(undefined4 *)(pcVar1 + 0xc);
                uStack_48 = *(undefined4 *)(pcVar1 + 0x10);
                uStack_44 = *(undefined4 *)(pcVar1 + 0x14);
                uStack_40 = *(undefined4 *)(pcVar1 + 0x18);
                uStack_58 = *(undefined2 *)pcVar1;
                cStack_38 = pcVar1[0x20];
                uStack_3c = *(undefined4 *)(pcVar1 + 0x1c);
                func_0x07f1e0ac(auStack_37,pcVar1 + 0x21,0x1f);
                iVar4 = FUN_07fc3ea0(&uStack_58,*(undefined4 *)(iVar7 + 0x14),0x40,1);
                iVar8 = iVar7;
                if (-1 < iVar4) {
                  iVar4 = FUN_07fc3ea0(pcVar1 + 0x40,*(int *)(iVar7 + 0x14) + 0x40,uVar2 - 0x40,1);
                  goto joined_r0x07fcc2b2;
                }
              }
            }
          }
        }
      }
      *(undefined4 *)(iVar8 + 0x1c) = 0;
      FUN_07fcc3cc(*(undefined4 *)(iVar8 + 0x20));
      FUN_07fcc3f0(uStack_5c);
      uVar6 = *(uint *)(iVar8 + 0x18);
      uVar2 = *(uint *)(iVar8 + 0x1c);
    }
    if (uVar2 <= uVar6) {
      return 0;
    }
  }
  uVar3 = 5;
LAB_07fcc2e0:
  FUN_07fcc3f0(uVar3);
  return 0;
}

