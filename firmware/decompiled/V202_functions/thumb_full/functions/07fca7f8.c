/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fca7f8(undefined4 *param_1)

{
  uint *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined2 uVar6;
  int iVar7;
  undefined1 local_3c [40];
  
  *DAT_07fca870 = (*DAT_07fca870 & 0xffe0ffff) + 0x20000;
  puVar1 = DAT_07fca874;
  *DAT_07fca874 = *DAT_07fca874 & 0xfff7ffff;
  uVar3 = DAT_07fca880;
  uVar2 = DAT_07fca87c;
  param_1[5] = DAT_07fca884;
  uVar5 = DAT_07fca88c;
  uVar4 = DAT_07fca888;
  param_1[7] = DAT_07fca890;
  param_1[8] = uVar4;
  param_1[9] = uVar2;
  param_1[10] = DAT_07fca878;
  param_1[0xb] = uVar3;
  uVar2 = DAT_07fca894;
  *param_1 = uVar5;
  param_1[1] = uVar2;
  *puVar1 = *puVar1 & 0xfffbffff;
  for (iVar7 = 0; iVar7 != 0x28; iVar7 = iVar7 + 1) {
    local_3c[iVar7] = (char)iVar7;
  }
  func_0x07f1e0ac(*DAT_07fca898 + 0x40,local_3c,0x28);
  FUN_07fca8a4();
  uVar6 = FUN_07fc6e04();
  *(undefined2 *)(DAT_07fcab88 + 0x38) = uVar6;
  FUN_07fc16f8();
  return;
}

