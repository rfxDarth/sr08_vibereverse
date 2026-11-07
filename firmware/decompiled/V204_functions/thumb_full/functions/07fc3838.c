/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc3838(int param_1)

{
  uint uVar1;
  undefined1 *puVar2;
  byte bVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  uint local_20;
  uint local_18;
  
  if (param_1 == 0) {
    if (*DAT_07fc39f0 != '\0') {
      *DAT_07fc39f0 = '\0';
      puVar2 = DAT_07fc3a14;
      iVar5 = DAT_07fc39f4;
      if (*(int *)(DAT_07fc39f4 + 0x20) != 0) {
        DAT_07fc3a14[0xa0] = 0;
        *puVar2 = 0;
        FUN_07fcd8a0();
        iVar4 = DAT_07fc3aac;
        *(undefined2 *)(DAT_07fc3aac + 0x14) = 0;
        FUN_07fc82a0();
        *(undefined1 *)(iVar4 + 0x18) = 0;
        *(undefined1 *)(iVar4 + 0x17) = 0;
        FUN_07fcd8a0();
        *(undefined4 *)(iVar5 + 0x20) = 0;
      }
      *(undefined2 *)(DAT_07fc3aac + 0x2a) = 0;
    }
    return;
  }
  if (*DAT_07fc39f0 != '\0') {
    return;
  }
  *DAT_07fc39f0 = '\x01';
  iVar4 = FUN_07fc7f94();
  iVar5 = DAT_07fc39f4;
  if (iVar4 == 0) goto LAB_07fc39dc;
  *(int *)(DAT_07fc39f4 + 0x20) = param_1;
  iVar4 = DAT_07fc3aac;
  if (param_1 != 0x4000) {
    if (param_1 == 0x40) {
      *(undefined4 *)(iVar5 + 0x34) = 0;
      FUN_07fccf38(10,500,DAT_07fc3a08);
    }
    else {
      FUN_07fc8e58(param_1);
    }
    goto LAB_07fc39dc;
  }
  uVar8 = 0;
  *(undefined1 *)(DAT_07fc3aac + 0x19) = 0;
  iVar5 = FUN_07fc7f94();
  if (iVar5 != 0) {
    FUN_07fc8850(0x18,0x40);
    FUN_07fc8850(0x19,1);
    FUN_07fc82b0();
  }
  FUN_07fc4458(100);
  FUN_07fc8850(0x8f,7);
  uVar1 = DAT_07fc39fc;
  local_18 = 0x3fc;
  local_20 = 0;
  bVar3 = 0;
  while (*(byte *)(iVar4 + 0x1c) = bVar3, uVar7 = local_20, bVar3 < 100) {
    if ((local_18 & 0xffff) <= (uVar8 & 0xffff)) break;
    *DAT_07fc3a00 = 200;
    uVar7 = (local_18 & 0xffff) + (uVar8 & 0xffff) >> 1;
    FUN_07fc8838(uVar7);
    FUN_07fc4458(0x20);
    FUN_07fc833c(1);
    FUN_07fc4458(0x21);
    iVar5 = FUN_07fc833c(1);
    iVar4 = DAT_07fc3aac;
    if (((iVar5 + (iVar5 >> 0xf) ^ iVar5 >> 0xf) & 0xffffU) <= uVar1) break;
    if ((int)uVar1 < iVar5) {
      uVar8 = uVar7 + 1;
    }
    else {
      local_18 = uVar7 - 1;
    }
    bVar3 = *(char *)(DAT_07fc3aac + 0x1c) + 1;
  }
  iVar6 = FUN_07fc833c(1);
  *(short *)(iVar4 + 0x46) = (short)iVar6;
  *(short *)(iVar4 + 0x42) = (short)uVar7;
  iVar5 = DAT_07fc3a04;
  if ((uVar7 == 0x1fe) && (iVar6 == 0)) {
    *(undefined1 *)(iVar4 + 0x36) = 0;
  }
  else {
    *(short *)(DAT_07fc3a04 + 0x48) = (short)uVar7;
    *(undefined1 *)(DAT_07fc3aac + 0x36) = 2;
    iVar4 = DAT_07fc3aac;
    *(short *)(iVar5 + 0x4c) = (short)iVar6;
    *(undefined2 *)(iVar5 + 0x4a) = *(undefined2 *)(iVar4 + 0x44);
    *(undefined2 *)(iVar5 + 0x4e) = *(undefined2 *)(iVar4 + 0x48);
    iVar6 = DAT_07fc39f4 + 0x44;
    *(undefined4 *)(iVar5 + 0x28) = 0;
    *(undefined4 *)(iVar5 + 0x2c) = 0;
    *(undefined4 *)(iVar5 + 0x30) = 8;
    *(undefined4 *)(iVar5 + 0x34) = 1;
    *(int *)(iVar5 + 0x38) = iVar6;
    FUN_07fcb178(iVar5 + 0x48);
  }
  if (*(char *)(iVar4 + 0x13) == '\'') {
    FUN_07fc7f94();
    FUN_07fc8500();
LAB_07fc39d2:
    FUN_07fc82b0();
  }
  else {
    FUN_07fc8500();
    iVar5 = FUN_07fc7f94();
    if (iVar5 != 0) goto LAB_07fc39d2;
  }
  FUN_07fc3a38(0x40000000);
LAB_07fc39dc:
  *(undefined1 *)(DAT_07fc3aa4 + 10) = 0;
  iVar5 = DAT_07fc3dd4;
  *(undefined4 *)(DAT_07fc3dd4 + 0x58) = 0;
  *(undefined4 *)(iVar5 + 0x60) = *DAT_07fc3aa8;
  return;
}

