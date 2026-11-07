/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


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

