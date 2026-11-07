/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


uint FUN_07fcdd8c(char *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = (uint)*param_1;
  iVar2 = 0;
  do {
    if ((int)uVar1 < (int)param_1[iVar2]) {
      uVar1 = (int)param_1[iVar2];
    }
    iVar2 = iVar2 + 1;
  } while (iVar2 < 100);
  return uVar1 & 0xff;
}

