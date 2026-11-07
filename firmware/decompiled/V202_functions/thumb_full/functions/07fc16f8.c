/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


bool FUN_07fc16f8(void)

{
  ushort uVar1;
  ushort uVar2;
  int iVar3;
  int iVar4;
  
  iVar3 = DAT_07fc17f4;
  uVar1 = *(ushort *)(DAT_07fc17f4 + 2);
  uVar2 = *(ushort *)(DAT_07fc17f4 + 2);
  *(ushort *)(DAT_07fc17f4 + 2) = *(ushort *)(DAT_07fc17f4 + 2) & 0xfffe;
  *(ushort *)(iVar3 + 2) = *(ushort *)(iVar3 + 2) & 0xfeff;
  func_0x07f029c0();
  func_0x07f029cc();
  iVar4 = func_0x07f029b4(2,8,0);
  *(ushort *)(iVar3 + 2) = *(ushort *)(iVar3 + 2) & 0xfffe | uVar1 & 1;
  *(ushort *)(iVar3 + 2) = *(ushort *)(iVar3 + 2) & 0xfeff | uVar2 & 0x100;
  return iVar4 != 0;
}

