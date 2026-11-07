/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


uint FUN_07fcee94(char *param_1)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = (uint)*param_1;
  iVar2 = 0;
  do {
    if ((int)uVar1 < (int)param_1[iVar2]) {
      uVar1 = (int)param_1[iVar2];
    }
    iVar2 = iVar2 + 1;
  } while (iVar2 < 100);
  return uVar1 & 0xff;
}

