/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc1988(uint param_1,uint param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  
  uVar4 = param_1 ^ param_2;
  uVar1 = param_1;
  if ((param_1 & 0x7fffffff) < (param_2 & 0x7fffffff)) {
    uVar1 = param_2;
    param_2 = param_1;
  }
  if ((param_2 & 0x7fffffff) == 0) {
    return;
  }
  uVar7 = uVar1 >> 0x17;
  uVar8 = (uVar7 & 0xff) - ((param_2 & 0x7fffffff) >> 0x17);
  if ((int)uVar8 < 0x20) {
    iVar5 = (param_2 & 0x7fffff) + 0x800000;
    if ((int)uVar4 < 0) {
      iVar5 = -iVar5;
    }
    uVar3 = iVar5 << (0x20 - uVar8 & 0xff);
    uVar2 = (iVar5 >> (uVar8 & 0xff)) + uVar1;
    uVar6 = uVar2 >> 0x17;
    if (uVar6 != uVar7) {
      if ((int)uVar4 < 0) {
        if ((int)uVar8 < 2) {
          FUN_07fc1b98(uVar2 + uVar7 * -0x800000 + 0x800000,uVar3,uVar1 & 0x80000000,uVar7 & 0xff);
          return;
        }
        iVar5 = uVar7 * -0x800000;
        uVar7 = 0x1000000;
        uVar6 = uVar3 >> 0x1f;
        uVar2 = uVar2 * 2 + iVar5 | uVar6;
        uVar3 = uVar3 << 1;
      }
      else {
        uVar3 = uVar3 >> 1 | uVar2 * -0x80000000;
        uVar6 = uVar7 * 0x800000;
        uVar2 = (uVar2 + uVar7 * -0x800000 + 0x800000 >> 1) + uVar6;
      }
    }
  }
  else {
    uVar6 = 1;
    uVar3 = ((int)uVar4 >> 0x1f) * 2 + 1;
    uVar2 = uVar1 + ((int)uVar4 >> 0x1f);
  }
  FUN_07fc1b88(uVar2,uVar3,uVar6,uVar7,param_4);
  return;
}

