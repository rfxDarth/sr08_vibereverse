/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4 FUN_07fca05c(uint param_1)

{
  ushort *puVar1;
  ushort *puVar2;
  int iVar3;
  
  iVar3 = 0x21;
  puVar1 = (ushort *)(DAT_07fca13c + 0x16);
  do {
    puVar2 = puVar1;
    iVar3 = iVar3 + -1;
    if (iVar3 == 0) {
      return 0;
    }
    puVar1 = puVar2 + 0xc;
  } while (*puVar2 != param_1);
  return *(undefined4 *)(puVar2 + -3);
}

