/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


ushort FUN_07fcb460(void)

{
  int iVar1;
  
  iVar1 = FUN_07fca05c(0xfc);
  if (iVar1 != 0) {
    return *(ushort *)(iVar1 + 10) & 1;
  }
  return 0;
}

