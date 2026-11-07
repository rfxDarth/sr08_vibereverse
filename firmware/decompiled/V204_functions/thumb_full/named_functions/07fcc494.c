/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


ushort FUN_07fcc494(void)

{
  int iVar1;
  
  iVar1 = FUN_07fcb080(0xfc);
  if (iVar1 != 0) {
    return *(ushort *)(iVar1 + 10) & 1;
  }
  return 0;
}

