/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fcb080(uint param_1)

{
  ushort *puVar1;
  ushort *puVar2;
  int iVar3;
  
  iVar3 = 0x21;
  puVar1 = (ushort *)(DAT_07fcb168 + 0x16);
  do {
    puVar2 = puVar1;
    iVar3 = iVar3 + -1;
    if (iVar3 == 0) {
      return 0;
    }
    puVar1 = puVar2 + 0xc;
  } while (*puVar2 != param_1);
  return *(undefined4 *)(puVar2 + -3);
}

