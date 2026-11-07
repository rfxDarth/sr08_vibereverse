/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc2f2c(undefined4 param_1,undefined4 param_2)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  
  uVar1 = *(uint *)(DAT_07fc2f88 + 0x34);
  uVar5 = *(uint *)(DAT_07fc2f88 + 0x38);
  iVar2 = *(int *)(DAT_07fc2f88 + 0x3c);
  iVar4 = *(int *)(DAT_07fc2f88 + 0x40);
  iVar7 = *(int *)(DAT_07fc2f88 + 0x44);
  do {
    if (uVar5 == uVar1) {
LAB_07fc2f7a:
      FUN_07fc2ea8(DAT_07fc2f88 + 0x34,param_1);
      return;
    }
    iVar6 = iVar7 + iVar4 * uVar5;
    iVar3 = ROM_memcmp /* 0x07f1e0f4 */(iVar6,param_1,param_2);
    if (iVar3 == 0) {
      ROM___aeabi_memcpy /* 0x07f1e0ac */(iVar6,param_1,iVar4);
      if (uVar5 != *(uint *)(DAT_07fc2f88 + 0x34)) {
        return;
      }
      goto LAB_07fc2f7a;
    }
    uVar5 = uVar5 + 1 & iVar2 - 1U;
  } while( true );
}

