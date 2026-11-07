/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcb82c(undefined4 *param_1)

{
  uint *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined2 uVar6;
  int iVar7;
  undefined1 local_3c [40];
  
  *DAT_07fcb8a4 = (*DAT_07fcb8a4 & 0xffe0ffff) + 0x20000;
  puVar1 = DAT_07fcb8a8;
  *DAT_07fcb8a8 = *DAT_07fcb8a8 & 0xfff7ffff;
  uVar3 = DAT_07fcb8b4;
  uVar2 = DAT_07fcb8b0;
  param_1[5] = DAT_07fcb8b8;
  uVar5 = DAT_07fcb8c0;
  uVar4 = DAT_07fcb8bc;
  param_1[7] = DAT_07fcb8c4;
  param_1[8] = uVar4;
  param_1[9] = uVar2;
  param_1[10] = DAT_07fcb8ac;
  param_1[0xb] = uVar3;
  uVar2 = DAT_07fcb8c8;
  *param_1 = uVar5;
  param_1[1] = uVar2;
  *puVar1 = *puVar1 & 0xfffbffff;
  for (iVar7 = 0; iVar7 != 0x28; iVar7 = iVar7 + 1) {
    local_3c[iVar7] = (char)iVar7;
  }
  ROM___aeabi_memcpy /* 0x07f1e0ac */(*DAT_07fcb8cc + 0x40,local_3c,0x28);
  FUN_07fcb8d8();
  uVar6 = FUN_07fc7308();
  *(undefined2 *)(DAT_07fcbbbc + 0x38) = uVar6;
  FUN_07fc16f8();
  return;
}

