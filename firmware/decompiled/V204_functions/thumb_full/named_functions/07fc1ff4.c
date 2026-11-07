/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


int FUN_07fc1ff4(void)

{
  ushort *puVar1;
  int iVar2;
  int iVar3;
  uint3 local_18;
  undefined1 uStack_15;
  
  _local_18 = DAT_07fc2040;
  FUN_07fc2048(&local_18);
  FUN_07fc20b4(0x14);
  puVar1 = DAT_07fc20a4;
  *DAT_07fc20a4 = (*DAT_07fc20a4 & (ushort)DAT_07fc2044) + 0x40;
  iVar2 = FUN_07fc1fd0();
  FUN_07fc20b4(1);
  local_18 = (uint3)(ushort)local_18;
  FUN_07fc2048(&local_18);
  *puVar1 = (*puVar1 & (ushort)DAT_07fc2044) + 0x40;
  iVar3 = FUN_07fc1fd0();
  *puVar1 = 0;
  return iVar3 + iVar2;
}

