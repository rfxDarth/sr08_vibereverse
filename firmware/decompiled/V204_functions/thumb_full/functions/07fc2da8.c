/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


ushort FUN_07fc2da8(void)

{
  ushort uVar1;
  ushort uVar2;
  int iVar3;
  
  iVar3 = FUN_07fcc494();
  uVar1 = *(ushort *)(DAT_07fc2e4c + 10);
  uVar2 = uVar1;
  if (uVar1 < 0x15) {
    uVar2 = 0x14;
  }
  if (iVar3 != 0) {
    uVar2 = uVar1;
  }
  return uVar2;
}

