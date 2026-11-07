/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


void FUN_07fcace8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  uint uVar5;
  
  uVar5 = *(uint *)(DAT_07fcad44 + 0x2c);
  iVar1 = func_0x07f1dfb8(uVar5,0xe10,param_3,param_4,param_4);
  iVar2 = 0;
  if (DAT_07fcad48 <= uVar5) {
    iVar2 = iVar1;
  }
  FUN_07fc3148(iVar2,DAT_07fcad74 + 0x40,2,0);
  uVar3 = func_0x07f1dfb8(iVar1 * DAT_07fcad50 + uVar5 & 0xffff,0x3c);
  iVar2 = DAT_07fcad74;
  uVar4 = 0;
  if (DAT_07fcad48 <= uVar5) {
    uVar4 = uVar3;
  }
  FUN_07fc3148(uVar4,DAT_07fcad74 + 0x43,2,0);
  *(undefined1 *)(iVar2 + 0x42) = 0x48;
  return;
}

