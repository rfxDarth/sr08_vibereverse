/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc5664(void)

{
  ushort *puVar1;
  
  puVar1 = DAT_07fc5684;
  DAT_07fc5684[1] = 0x14;
  *puVar1 = *puVar1 | 3;
  *puVar1 = *puVar1 | 4;
  *DAT_07fc5688 = 1;
  return;
}

