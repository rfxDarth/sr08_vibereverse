/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc8bdc(void)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  
  piVar1 = _DAT_07fc8c28;
  uVar3 = FUN_07fc552c(*_DAT_07fc8c28 + _DAT_07fc8c2c,_DAT_07fc8c30,_DAT_07fc8c30 + 0xb4);
  iVar2 = DAT_07fc8c34;
  *(undefined4 *)(DAT_07fc8c34 + 0x2c) = uVar3;
  iVar4 = FUN_07fc552c(*piVar1,0,0x294);
  uVar5 = *(int *)(iVar2 + 0x2c) + iVar4;
  *(uint *)(iVar2 + 0x2c) = uVar5;
  uVar6 = *(uint *)(DAT_07fc8e38 + 0x44);
  if (uVar5 != uVar6) {
    if (((uVar5 < _DAT_07fc8c38 + 1) && (_DAT_07fc8c38 < uVar6)) ||
       ((_DAT_07fc8c38 < uVar5 && (uVar6 < _DAT_07fc8c38 + 1)))) {
      *(uint *)(DAT_07fc8e38 + 0x44) = uVar5;
    }
  }
  return;
}

