/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4 FUN_07fc53c0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  undefined1 *puVar3;
  int iVar4;
  uint uVar5;
  undefined4 unaff_lr;
  undefined1 local_84 [96];
  undefined4 *local_24;
  undefined4 local_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  iVar2 = DAT_07fc54a0;
  piVar1 = DAT_07fc549c;
  if (*(char *)(DAT_07fc5498 + 9) == '\0') {
    *(undefined1 *)(DAT_07fc5498 + 9) = 1;
    *piVar1 = 0;
    piVar1[1] = 0;
    piVar1[2] = 0x100;
    piVar1[3] = 1;
    piVar1[4] = iVar2;
  }
  local_24 = &local_c;
  local_c = param_2;
  uStack_8 = param_3;
  uStack_4 = param_4;
  iVar2 = FUN_07fc5248(local_84,param_1);
  piVar1 = DAT_07fc549c;
  if (iVar2 - 1U < 0x60) {
    puVar3 = local_84;
    for (; iVar2 != 0; iVar2 = iVar2 + -1) {
      FUN_07fc2f26(piVar1,puVar3);
      puVar3 = puVar3 + 1;
    }
    uVar5 = piVar1[2] - 1U & *piVar1 - piVar1[1];
    iVar2 = FUN_07fc2ff0();
    iVar4 = DAT_07fc54a4 + 0x34;
    while ((0x12 < uVar5 && (iVar2 != 0))) {
      iVar2 = FUN_07fcaa48();
      if (iVar2 == 0) goto LAB_07fc547e;
      func_0x07f1e0de(local_84 + 1,0x13);
      local_84[0] = 0xf4;
      for (iVar2 = 1; iVar2 != 0x14; iVar2 = iVar2 + 1) {
        FUN_07fc3030(piVar1,local_84 + iVar2);
        FUN_07fc2fd8(piVar1);
      }
      FUN_07fc2ef8(iVar4,local_84);
      uVar5 = piVar1[2] - 1U & *piVar1 - piVar1[1];
      iVar2 = FUN_07fc2ff0();
    }
    if (uVar5 != 0) {
LAB_07fc547e:
      FUN_07fcbe30(9,1000,0,DAT_07fc54a8);
    }
  }
  return unaff_lr;
}

