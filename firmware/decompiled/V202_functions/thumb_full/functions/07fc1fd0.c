/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


ushort FUN_07fc1fd0(void)

{
  ushort *puVar1;
  uint uVar2;
  bool bVar3;
  
  puVar1 = DAT_07fc20a4;
  *DAT_07fc20a4 = *DAT_07fc20a4 | 2;
  uVar2 = DAT_07fc1ff0;
  do {
    bVar3 = 0xfffffffe < uVar2;
    uVar2 = uVar2 + 1;
    if (bVar3) break;
  } while ((int)((uint)*puVar1 << 0x1e) < 0);
  puVar1[4] = 0;
  return puVar1[5];
}

