/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


int FUN_07fc1ff4(void)

{
  ushort *puVar1;
  int iVar2;
  int iVar3;
  uint3 local_18;
  undefined1 uStack_15;
  
  _local_18 = DAT_07fc2040;
  FUN_07fc2048(&local_18);
  FUN_07fc20bc(0x14);
  puVar1 = DAT_07fc20a4;
  *DAT_07fc20a4 = (*DAT_07fc20a4 & (ushort)DAT_07fc2044) + 0x40;
  iVar2 = FUN_07fc1fd0();
  FUN_07fc20bc(1);
  local_18 = (uint3)(ushort)local_18;
  FUN_07fc2048(&local_18);
  *puVar1 = (*puVar1 & (ushort)DAT_07fc2044) + 0x40;
  iVar3 = FUN_07fc1fd0();
  *puVar1 = 0;
  return iVar3 + iVar2;
}

