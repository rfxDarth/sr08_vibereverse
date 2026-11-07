/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


uint FUN_07fcbfc0(uint param_1)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  
  uVar2 = param_1;
  if (param_1 != 0) {
    do {
      iVar1 = func_0x07f1dfb8(param_1,uVar2);
      uVar3 = iVar1 + uVar2 >> 1;
      iVar1 = uVar3 - uVar2;
      uVar2 = uVar3;
    } while (2 < iVar1 + 1U);
    return uVar3;
  }
  return 0;
}

