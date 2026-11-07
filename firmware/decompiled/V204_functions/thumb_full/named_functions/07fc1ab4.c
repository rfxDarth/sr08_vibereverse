/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fc1ab4(uint param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  
  if (((param_1 & 0x7fffffff) != 0) && ((param_2 & 0x7fffffff) != 0)) {
    uVar1 = 0x800000;
    iVar6 = ((param_1 & 0x7fffffff) >> 0x17) - ((param_2 & 0x7fffffff) >> 0x17);
    uVar2 = (param_1 & 0x7fffff) + 0x800000;
    uVar4 = (param_2 & 0x7fffff) + 0x800000;
    iVar7 = iVar6 + 0x7d;
    if (uVar2 < uVar4) {
      uVar2 = uVar2 * 2;
    }
    else {
      iVar7 = iVar6 + 0x7e;
    }
    if (-1 < iVar7) {
      uVar5 = 0;
      do {
        if (uVar4 <= uVar2) {
          uVar2 = uVar2 - uVar4;
          uVar5 = uVar5 | uVar1;
        }
        uVar1 = uVar1 >> 1;
        uVar2 = uVar2 * 2;
      } while (uVar1 != 0);
      uVar3 = 0;
      if (uVar2 != 0) {
        if (uVar2 - uVar4 == 0) {
          uVar3 = 0x80000000;
        }
        else if (uVar2 < uVar4) {
          uVar3 = 1;
        }
        else {
          uVar3 = 0xfffffffe;
        }
      }
      uVar3 = FUN_07fc1b88(iVar7 * 0x800000 + uVar5 + ((param_1 ^ param_2) & 0x80000000),uVar3);
      return uVar3;
    }
  }
  return 0;
}

