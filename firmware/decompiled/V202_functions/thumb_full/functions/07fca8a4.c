/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fca8a4(void)

{
  undefined2 *puVar1;
  int iVar2;
  
  *DAT_07fca8d4 = DAT_07fca8d8;
  *DAT_07fca8dc = (short)DAT_07fca8e0;
  puVar1 = DAT_07fca8e4;
  DAT_07fca8e4[1] = DAT_07fca8e4[1] & 0xfffb | 2;
  *DAT_07fca8e8 = 99;
  iVar2 = DAT_07fcab88;
  *DAT_07fca8ec = *(undefined2 *)(DAT_07fcab88 + 0x3e);
  *puVar1 = *(undefined2 *)(iVar2 + 0x3c);
  return;
}

