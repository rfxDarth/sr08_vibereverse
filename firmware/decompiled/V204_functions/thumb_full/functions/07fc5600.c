/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


int FUN_07fc5600(uint param_1,int param_2,uint *param_3)

{
  undefined4 uVar1;
  uint uVar2;
  int extraout_r1;
  uint uVar3;
  char cVar4;
  
  uVar1 = func_0x07f1dfb8(param_1,DAT_07fc564c);
  func_0x07f1dfb8(uVar1,7);
  cVar4 = '\0';
  FUN_07fc3ea0(param_3,param_2 * 0x24 + extraout_r1 * 0x2000 + 0x2e000,0x24,0);
  uVar3 = *param_3;
  uVar2 = param_1 - uVar3;
  if (param_1 < uVar3) {
    uVar2 = uVar3 - param_1;
  }
  if ((uVar3 == 0xffffffff) || (DAT_07fc5650 <= uVar2)) {
    func_0x07f1e0de(param_3,0x24);
    cVar4 = -1;
  }
  return (int)cVar4;
}

