/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


uint FUN_07fcaa64(undefined4 param_1)

{
  ushort *puVar1;
  uint uVar2;
  
  puVar1 = DAT_07fcab58;
  DAT_07fcab58[4] = DAT_07fcab58[4] & 0xfffe | 2;
  if ((int)((uint)*puVar1 << 0x17) < 0) {
    puVar1[2] = (ushort)((uint)param_1 >> 0x10);
  }
  puVar1[1] = (ushort)param_1;
  do {
  } while (-1 < (int)((uint)*puVar1 << 0x12));
  puVar1[3] = 1;
  if ((*puVar1 & 0x100) == 0) {
    uVar2 = 0;
  }
  else {
    uVar2 = (uint)puVar1[2] << 0x10;
  }
  return puVar1[1] | uVar2;
}

