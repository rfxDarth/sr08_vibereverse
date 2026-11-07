/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


undefined4 FUN_07fc01e8(int param_1,int param_2)

{
  char cVar1;
  undefined4 uVar2;
  int iVar3;
  
  uVar2 = 1;
  iVar3 = *(int *)(*(int *)(DAT_07fc05e8 + param_1 * 4) + 0x10);
  if (param_2 == 0) {
    cVar1 = *(char *)(iVar3 + 0x16);
  }
  else {
    cVar1 = *(char *)(iVar3 + 0x1d);
  }
  if (*(char *)(iVar3 + 0x5e) == '\0') {
    if (cVar1 == '\x02') {
      return 0;
    }
    if (cVar1 == '\x04') {
      return 0;
    }
    if (cVar1 != '\x05') {
      return 1;
    }
    uVar2 = 0;
  }
  else if (cVar1 != '\x05') {
    return 1;
  }
  if (((int)((uint)*(byte *)(iVar3 + 0x19) << 0x1c) < 0) &&
     ((int)((uint)*(byte *)(iVar3 + 0x12) << 0x1c) < 0)) {
    return uVar2;
  }
  return 0;
}

