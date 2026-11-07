/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


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

