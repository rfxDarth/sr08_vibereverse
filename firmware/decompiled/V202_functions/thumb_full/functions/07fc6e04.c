/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


ushort FUN_07fc6e04(void)

{
  ushort uVar1;
  ushort uVar2;
  ushort *puVar3;
  ushort *puVar4;
  
  puVar3 = DAT_07fc6e4c;
  uVar1 = *DAT_07fc6e4c;
  *DAT_07fc6e4c = *DAT_07fc6e4c | 1;
  *puVar3 = *puVar3 & 0xffe1;
  puVar4 = DAT_07fc6e50;
  DAT_07fc6e50[1] = 0x400;
  *puVar4 = 5;
  do {
  } while ((int)((uint)*puVar4 << 0x1d) < 0);
  uVar2 = puVar4[2];
  *puVar3 = *puVar3 & 0xfff5 | 0x14;
  *puVar3 = *puVar3 & 0xfffe;
  *puVar3 = (*puVar3 & 0xffe1) + (uVar1 & 0x1e);
  return uVar2;
}

