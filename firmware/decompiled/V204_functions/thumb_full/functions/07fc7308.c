/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


ushort FUN_07fc7308(void)

{
  ushort uVar1;
  ushort uVar2;
  ushort *puVar3;
  ushort *puVar4;
  
  puVar3 = DAT_07fc7350;
  uVar1 = *DAT_07fc7350;
  *DAT_07fc7350 = *DAT_07fc7350 | 1;
  *puVar3 = *puVar3 & 0xffe1;
  puVar4 = DAT_07fc7354;
  DAT_07fc7354[1] = 0x400;
  *puVar4 = 5;
  do {
  } while ((int)((uint)*puVar4 << 0x1d) < 0);
  uVar2 = puVar4[2];
  *puVar3 = *puVar3 & 0xfff5 | 0x14;
  *puVar3 = *puVar3 & 0xfffe;
  *puVar3 = (*puVar3 & 0xffe1) + (uVar1 & 0x1e);
  return uVar2;
}

