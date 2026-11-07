/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


ushort FUN_07fc5a6c(uint param_1)

{
  short sVar1;
  int iVar2;
  
  iVar2 = FUN_07fcb080(0xfd);
  if (param_1 < *(byte *)(iVar2 + 6)) {
    sVar1 = *(short *)(iVar2 + 4) + (short)param_1;
  }
  else {
    sVar1 = 0;
  }
  return sVar1;
}

