/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc9dec(void)

{
  bool bVar1;
  ushort *puVar2;
  undefined2 *puVar3;
  undefined2 *puVar4;
  int iVar5;
  ushort *puVar6;
  int iVar7;
  int iVar8;
  
  puVar2 = DAT_07fc9f2c;
  DAT_07fc9f2c[6] = DAT_07fc9f2c[6] & 0xfffd;
  do {
  } while (-1 < (int)((uint)puVar2[8] << 0x1c));
  puVar2[0xf] = puVar2[0xf] | 0x100;
  FUN_07fc1696();
  puVar3 = DAT_07fc9f30;
  DAT_07fc9f30[1] = 0x10;
  puVar3[6] = 0x304;
  *puVar3 = 8;
  puVar3[5] = 0x308;
  puVar3[1] = 1;
  puVar3[2] = 0x307;
  puVar3[1] = 0x40;
  puVar3[8] = 0x306;
  puVar3[1] = 0x20;
  puVar3[7] = 5;
  puVar4 = DAT_07fc9f34;
  *DAT_07fc9f34 = 8;
  puVar4[5] = 0x109;
  *puVar4 = 0x10;
  puVar4[6] = 0x10a;
  *puVar3 = 0x80;
  puVar3[9] = 0;
  puVar3[0x11] = 0x20;
  puVar3[0x17] = 0x200;
  puVar3[1] = 2;
  puVar3[3] = 0xf;
  iVar8 = DAT_07fc9f38;
  for (iVar7 = 0; iVar5 = DAT_07fc9f3c, iVar7 != 0xe; iVar7 = iVar7 + 2) {
    FUN_07fc1d10(*(undefined1 *)(iVar8 + iVar7),*(undefined1 *)(iVar8 + iVar7 + 1),0x200,0,0);
  }
  for (iVar8 = 0; iVar8 != 0xc; iVar8 = iVar8 + 2) {
    FUN_07fc1d10(*(undefined1 *)(iVar5 + iVar8),*(undefined1 *)(iVar5 + iVar8 + 1),0x200,0,0);
  }
  *puVar2 = *puVar2 | 8;
  *puVar2 = *puVar2 | 3;
  puVar3 = DAT_07fc9f40;
  DAT_07fc9f40[2] = 0;
  puVar3[3] = 0;
  *puVar3 = 2;
  *DAT_07fc9f44 = (*DAT_07fc9f44 & 0xffffff) + 0x80000000;
  *(undefined4 *)(DAT_07fc9f48 + 0x4c) = DAT_07fc9f4c;
  puVar3[1] = 300;
  FUN_07fcb47c();
  *(undefined1 *)(DAT_07fc9f48 + 2) = 1;
  *DAT_07fc9f30 = 8;
  iVar8 = 0;
  bVar1 = (bool)isCurrentModePrivileged();
  if (bVar1) {
    iVar8 = isIRQinterruptsEnabled();
  }
  bVar1 = (bool)isCurrentModePrivileged();
  if (bVar1) {
    enableIRQinterrupts(1);
  }
  *puVar2 = *puVar2 | 0x800;
  puVar6 = DAT_07fc9f50;
  if (iVar8 == 0) {
    bVar1 = (bool)isCurrentModePrivileged();
    if (bVar1) {
      enableIRQinterrupts(0);
    }
  }
  else {
    bVar1 = (bool)isCurrentModePrivileged();
    if (bVar1) {
      enableIRQinterrupts(1);
    }
  }
  *DAT_07fc9f50 = 8;
  puVar6[4] = puVar6[4] & 0xfffc;
  puVar6[3] = 1;
  *puVar6 = *puVar6 | 1;
  puVar2[7] = puVar2[7] | 0x20;
  return;
}

