/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


ushort FUN_07fc2df8(void)

{
  ushort uVar1;
  ushort uVar2;
  int iVar3;
  
  iVar3 = FUN_07fcb460();
  uVar1 = *(ushort *)(DAT_07fc2e9c + 10);
  uVar2 = uVar1;
  if (uVar1 < 0x15) {
    uVar2 = 0x14;
  }
  if (iVar3 != 0) {
    uVar2 = uVar1;
  }
  return uVar2;
}

