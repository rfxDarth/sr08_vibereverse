/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc3134(uint param_1,undefined1 *param_2,int param_3,int param_4)

{
  undefined4 uVar1;
  byte *pbVar2;
  byte extraout_r1;
  byte bVar3;
  byte bVar4;
  uint uVar5;
  uint uVar6;
  undefined4 local_20;
  byte local_1c [8];
  
  local_20 = -param_3;
  uVar6 = 1;
  uVar5 = 0;
  while (local_20 != uVar5) {
    uVar1 = func_0x07f1dfb8(param_1,uVar6);
    func_0x07f1dfb8(uVar1,10);
    bVar3 = extraout_r1;
    if (param_1 < uVar6) {
      bVar3 = 0x10;
    }
    bVar4 = extraout_r1;
    if (uVar5 - 1 < uVar5) {
      bVar4 = bVar3;
    }
    if (param_4 != 1) {
      bVar4 = extraout_r1;
    }
    local_1c[uVar5 + param_3 + -1] = bVar4;
    uVar6 = uVar6 * 10;
    uVar5 = uVar5 - 1;
  }
  pbVar2 = local_1c;
  for (; param_3 != 0; param_3 = param_3 + -1) {
    *param_2 = (&DAT_07fc31ac)[*pbVar2];
    param_2 = param_2 + 1;
    pbVar2 = pbVar2 + 1;
  }
  return;
}

