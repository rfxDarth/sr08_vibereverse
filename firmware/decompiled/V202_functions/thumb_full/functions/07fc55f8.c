/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


int FUN_07fc55f8(uint param_1,int param_2,uint *param_3)

{
  undefined4 uVar1;
  uint uVar2;
  int extraout_r1;
  uint uVar3;
  char cVar4;
  
  uVar1 = func_0x07f1dfb8(param_1,DAT_07fc5644);
  func_0x07f1dfb8(uVar1,7);
  cVar4 = '\0';
  FUN_07fc3df8(param_3,param_2 * 0x24 + extraout_r1 * 0x2000 + 0x2e000,0x24,0);
  uVar3 = *param_3;
  uVar2 = param_1 - uVar3;
  if (param_1 < uVar3) {
    uVar2 = uVar3 - param_1;
  }
  if ((uVar3 == 0xffffffff) || (DAT_07fc5648 <= uVar2)) {
    func_0x07f1e0de(param_3,0x24);
    cVar4 = -1;
  }
  return (int)cVar4;
}

