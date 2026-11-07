/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fcab38(short param_1)

{
  ushort *puVar1;
  
  puVar1 = DAT_07fcab58;
  *DAT_07fcab58 = *DAT_07fcab58 & 0xfffe;
  *puVar1 = param_1 << 7 | (ushort)DAT_07fcab5c & *puVar1;
  *puVar1 = *puVar1 | 1;
  return;
}

