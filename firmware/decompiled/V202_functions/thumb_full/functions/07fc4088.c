/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


int FUN_07fc4088(void)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = *(uint *)(DAT_07fc42ac + 0x34);
  if (uVar1 + DAT_07fc40f0 <= DAT_07fc40f4) {
    iVar2 = func_0x07f1dfb8(uVar1 * 0x11 + DAT_07fc4100,DAT_07fc4104);
    return iVar2 + 5;
  }
  if (uVar1 >> 5 < 0xe1) {
    iVar2 = func_0x07f1dfb8(uVar1 & 0xffff,0x2d0);
    return iVar2 + 0x14;
  }
  if (uVar1 >> 6 < 0xe1) {
    iVar2 = func_0x07f1dfb8(uVar1 & 0xffff,0x5a0);
    return iVar2 + 0x1e;
  }
  if (uVar1 <= DAT_07fc40f8) {
    iVar2 = func_0x07f1dfb8(DAT_07fc40fc - uVar1 & 0xffff,600);
    return iVar2 + 0xf;
  }
  return 5;
}

