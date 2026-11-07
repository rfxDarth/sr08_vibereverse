/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc8088(int param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int extraout_r1;
  uint uVar5;
  
  iVar1 = func_0x07f1dfb8(param_1,DAT_07fc8160,param_3,param_4,param_2,param_3,param_4);
  func_0x07f1dfb8(iVar1 + 4U & 0xffff,7);
  param_2[6] = extraout_r1;
  iVar2 = func_0x07f1dfb8(param_1,DAT_07fc8164);
  uVar5 = iVar2 + DAT_07fc8168;
  iVar3 = func_0x07f1dfb8(uVar5,400);
  iVar2 = iVar2 * DAT_07fc816c;
  iVar4 = func_0x07f1dfb8(uVar5,100);
  iVar2 = (iVar1 + iVar2 + iVar4 + 0x16d) - ((uVar5 >> 2) + iVar3);
  iVar3 = iVar2 + 0x70;
  iVar1 = iVar1 * DAT_07fc8170;
  if (iVar3 < 0) {
    iVar3 = FUN_07fc7cbc(uVar5);
    iVar3 = iVar2 + 0x1dd + iVar3;
  }
  else {
    uVar5 = uVar5 + 1;
  }
  iVar1 = iVar1 + param_1;
  param_2[7] = iVar3 + 1;
  param_2[5] = uVar5 + DAT_07fc8174;
  for (iVar2 = 0; iVar2 != 0xb; iVar2 = iVar2 + 1) {
    iVar4 = FUN_07fc7cbc(uVar5);
    iVar4 = iVar3 - ((uint)(iVar2 == 1 && iVar4 != 0) + (uint)(byte)(&DAT_07fc8178)[iVar2]);
    if (iVar4 < 0) goto LAB_07fc812e;
    iVar3 = iVar4;
  }
  iVar2 = 0xb;
LAB_07fc812e:
  param_2[3] = iVar3 + 1;
  param_2[4] = iVar2;
  iVar3 = func_0x07f1dfb8(iVar1,0xe10);
  param_2[2] = iVar3;
  iVar1 = iVar3 * DAT_07fc8184 + iVar1;
  iVar3 = func_0x07f1dfb8(iVar1,0x3c);
  *param_2 = iVar3 * -0x3c + iVar1;
  param_2[1] = iVar3;
  return;
}

