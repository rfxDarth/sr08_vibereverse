/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


uint FUN_07fcb0d0(uint param_1)

{
  ushort *puVar1;
  ushort *puVar2;
  uint uVar3;
  int iVar4;
  
  iVar4 = 0x21;
  puVar1 = (ushort *)(DAT_07fcb168 + 0x16);
  do {
    puVar2 = puVar1;
    iVar4 = iVar4 + -1;
    if (iVar4 == 0) {
      uVar3 = 0xff;
      goto LAB_07fcb0f0;
    }
    puVar1 = puVar2 + 0xc;
  } while ((uint)*puVar2 != (param_1 & 0xff));
  uVar3 = (uint)puVar2[-1];
LAB_07fcb0f0:
  return param_1 & 0xffffff00 | uVar3;
}

