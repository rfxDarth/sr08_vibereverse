/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc1e70(uint param_1)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  
  uVar1 = 0x40000000;
  do {
    uVar2 = uVar1;
    uVar1 = uVar2 >> 2;
  } while (param_1 < uVar2);
  uVar1 = 0;
  for (; uVar2 != 0; uVar2 = uVar2 >> 2) {
    uVar3 = uVar2 + uVar1;
    if (uVar3 <= param_1) {
      uVar1 = uVar1 + uVar2 * 2;
      param_1 = param_1 - uVar3;
    }
    uVar1 = uVar1 >> 1;
  }
  return;
}

