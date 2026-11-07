/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc1d44(byte param_1)

{
  uint uVar1;
  uint uVar2;
  ushort uVar3;
  
  uVar1 = 1 << (param_1 - 10 & 0xff);
  uVar2 = uVar1 & 0xffff;
  uVar3 = 0;
  for (uVar2 = uVar2 + DAT_07fc1d80 ^ uVar2; (uVar2 >> 1 & 0xffff) != 0; uVar2 = uVar2 >> 1 & 0xffff
      ) {
    uVar3 = uVar3 + 1;
  }
  *DAT_07fc1d84 = (ushort)(1 << (uVar3 & 0xff)) | *DAT_07fc1d84 & ~(ushort)uVar1;
  *DAT_07fc1e44 = 1 << (uint)param_1;
  return;
}

