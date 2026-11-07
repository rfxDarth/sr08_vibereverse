/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


uint FUN_07fcba98(undefined4 param_1)

{
  ushort *puVar1;
  uint uVar2;
  
  puVar1 = DAT_07fcbb8c;
  DAT_07fcbb8c[4] = DAT_07fcbb8c[4] & 0xfffe | 2;
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

