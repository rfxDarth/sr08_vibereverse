/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


uint FUN_07fcd0c8(uint param_1)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  
  uVar2 = param_1;
  if (param_1 != 0) {
    do {
      iVar1 = func_0x07f1dfb8(param_1,uVar2);
      uVar3 = iVar1 + uVar2 >> 1;
      iVar1 = uVar3 - uVar2;
      uVar2 = uVar3;
    } while (2 < iVar1 + 1U);
    return uVar3;
  }
  return 0;
}

