/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc4344(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  uint *puVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  
  piVar1 = DAT_07fc4748;
  *DAT_07fc4748 = 1;
  puVar2 = DAT_07fc474c;
  do {
  } while (*piVar1 != 0);
  uVar4 = *DAT_07fc474c;
  uVar3 = func_0x07f1dfb8(param_1 << 3,5,param_3,param_4,param_2,uVar4,0);
  do {
    *piVar1 = 1;
    do {
    } while (*piVar1 != 0);
    uVar5 = *puVar2;
    if (uVar5 < uVar4) {
      uVar5 = uVar5 + 0x5000000;
    }
  } while (uVar5 - uVar4 <= uVar3);
  return;
}

