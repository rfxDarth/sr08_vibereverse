/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc2f7c(undefined4 param_1,undefined4 param_2)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  
  uVar1 = *(uint *)(DAT_07fc3004 + 0x34);
  uVar5 = *(uint *)(DAT_07fc3004 + 0x38);
  iVar2 = *(int *)(DAT_07fc3004 + 0x3c);
  iVar4 = *(int *)(DAT_07fc3004 + 0x40);
  iVar7 = *(int *)(DAT_07fc3004 + 0x44);
  do {
    if (uVar5 == uVar1) {
LAB_07fc2fca:
      FUN_07fc2ef8(DAT_07fc3004 + 0x34,param_1);
      return;
    }
    iVar6 = iVar7 + iVar4 * uVar5;
    iVar3 = func_0x07f1e0f4(iVar6,param_1,param_2);
    if (iVar3 == 0) {
      func_0x07f1e0ac(iVar6,param_1,iVar4);
      if (uVar5 != *(uint *)(DAT_07fc3004 + 0x34)) {
        return;
      }
      goto LAB_07fc2fca;
    }
    uVar5 = uVar5 + 1 & iVar2 - 1U;
  } while( true );
}

