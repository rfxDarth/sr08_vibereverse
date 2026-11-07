/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc255c(undefined4 param_1)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  
  uVar2 = *(uint *)(DAT_07fc25e8 + 0x34);
  uVar7 = *(uint *)(DAT_07fc25e8 + 0x38);
  iVar5 = *(int *)(DAT_07fc25e8 + 0x40);
  iVar9 = *(int *)(DAT_07fc25e8 + 0x44);
  uVar3 = *(int *)(DAT_07fc25e8 + 0x3c) - 1;
  uVar6 = 0;
  uVar8 = uVar7;
  do {
    if (uVar8 == uVar2) {
LAB_07fc25de:
      FUN_07fc2f4c(param_1);
      return;
    }
    iVar4 = func_0x07f1e0f4(iVar9 + iVar5 * uVar8,param_1,0x14);
    iVar1 = DAT_07fc25e8;
    if (iVar4 == 0) {
      if (uVar8 == uVar7) {
        return;
      }
      if (uVar6 < (uVar2 - uVar7 & uVar3)) {
        uVar8 = uVar7 + uVar6 & uVar3;
        uVar3 = uVar2 - 1 & uVar3;
        while (uVar8 != uVar3) {
          iVar5 = *(int *)(iVar1 + 0x40) * uVar8;
          uVar8 = *(int *)(iVar1 + 0x3c) - 1U & uVar8 + 1;
          func_0x07f1e0ac(*(int *)(iVar1 + 0x44) + iVar5,
                          *(int *)(iVar1 + 0x44) + uVar8 * *(int *)(iVar1 + 0x40));
        }
        *(uint *)(iVar1 + 0x34) = uVar3;
      }
      goto LAB_07fc25de;
    }
    uVar8 = uVar8 + 1 & uVar3;
    uVar6 = uVar6 + 1;
  } while( true );
}

