/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


ushort FUN_07fc1fd0(void)

{
  ushort *puVar1;
  uint uVar2;
  bool bVar3;
  
  puVar1 = DAT_07fc20a4;
  *DAT_07fc20a4 = *DAT_07fc20a4 | 2;
  uVar2 = DAT_07fc1ff0;
  do {
    bVar3 = 0xfffffffe < uVar2;
    uVar2 = uVar2 + 1;
    if (bVar3) break;
  } while ((int)((uint)*puVar1 << 0x1e) < 0);
  puVar1[4] = 0;
  return puVar1[5];
}

