/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


short FUN_07fc5a64(uint param_1)

{
  short sVar1;
  int iVar2;
  
  iVar2 = FUN_07fca05c(0xfd);
  if (param_1 < *(byte *)(iVar2 + 6)) {
    sVar1 = *(short *)(iVar2 + 4) + (short)param_1;
  }
  else {
    sVar1 = 0;
  }
  return sVar1;
}

