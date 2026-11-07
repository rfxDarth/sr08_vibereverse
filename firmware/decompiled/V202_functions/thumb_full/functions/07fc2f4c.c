/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc2f4c(undefined4 param_1)

{
  int iVar1;
  uint uVar2;
  
  iVar1 = DAT_07fc3004;
  uVar2 = *(int *)(DAT_07fc3004 + 0x3c) - 1;
  if ((uVar2 & *(int *)(DAT_07fc3004 + 0x38) + ~*(uint *)(DAT_07fc3004 + 0x34)) != 0) {
    uVar2 = uVar2 & *(int *)(DAT_07fc3004 + 0x38) - 1U;
    func_0x07f1e0ac(*(int *)(DAT_07fc3004 + 0x44) + *(int *)(DAT_07fc3004 + 0x40) * uVar2,param_1);
    *(uint *)(iVar1 + 0x38) = uVar2;
  }
  return;
}

