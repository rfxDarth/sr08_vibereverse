/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc24dc(undefined4 param_1)

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
  
  uVar2 = *(uint *)(DAT_07fc2590 + 0x34);
  uVar7 = *(uint *)(DAT_07fc2590 + 0x38);
  iVar5 = *(int *)(DAT_07fc2590 + 0x40);
  iVar9 = *(int *)(DAT_07fc2590 + 0x44);
  uVar3 = *(int *)(DAT_07fc2590 + 0x3c) - 1;
  uVar6 = 0;
  uVar8 = uVar7;
  do {
    if (uVar8 == uVar2) {
LAB_07fc255e:
      FUN_07fc2efc(param_1);
      return;
    }
    iVar4 = ROM_memcmp /* 0x07f1e0f4 */(iVar9 + iVar5 * uVar8,param_1,0x14);
    iVar1 = DAT_07fc2590;
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
          ROM___aeabi_memcpy /* 0x07f1e0ac */(*(int *)(iVar1 + 0x44) + iVar5,
                          *(int *)(iVar1 + 0x44) + uVar8 * *(int *)(iVar1 + 0x40));
        }
        *(uint *)(iVar1 + 0x34) = uVar3;
      }
      goto LAB_07fc255e;
    }
    uVar8 = uVar8 + 1 & uVar3;
    uVar6 = uVar6 + 1;
  } while( true );
}

