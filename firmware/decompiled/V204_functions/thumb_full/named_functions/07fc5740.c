/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc5740(uint param_1)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  
  for (iVar2 = 8; iVar2 != 0; iVar2 = iVar2 + -1) {
    uVar3 = param_1 >> 1;
    uVar1 = param_1 & 1;
    param_1 = uVar3;
    if (uVar1 != 0) {
      param_1 = uVar3 ^ DAT_07fc5758;
    }
  }
  return;
}

