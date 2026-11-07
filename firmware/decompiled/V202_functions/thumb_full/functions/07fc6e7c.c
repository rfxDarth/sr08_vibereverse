/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc6e7c(int param_1)

{
  short sVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  
  iVar2 = DAT_07fc714c;
  if ((param_1 != 1) || (*(char *)(DAT_07fc714c + 0xe) != '\x01')) {
    *(char *)(DAT_07fc714c + 0xe) = (char)param_1;
    iVar5 = DAT_07fc6f98;
    if (param_1 == 1) {
      *(undefined2 *)(iVar2 + 0x2a) = 0;
      FUN_07fc6fa0(*(undefined4 *)(DAT_07fc6f9c + 0x14));
      return;
    }
    iVar3 = *(int *)(DAT_07fc6f98 + 0x28);
    if (*(int *)(iVar2 + 0x5c) != iVar3) {
      *(int *)(iVar2 + 0x5c) = iVar3;
      if (0xf < (uint)(iVar3 - *(int *)(iVar2 + 0x60))) {
        *(undefined2 *)(iVar2 + 0x2a) = 0;
      }
      iVar3 = DAT_07fc6f9c;
      FUN_07fc6fa0(*(undefined4 *)(DAT_07fc6f9c + 0x14));
      sVar1 = *(short *)(iVar2 + 0x2a);
      if (sVar1 != 0) {
        uVar4 = *(uint *)(iVar5 + 0x44);
        iVar3 = func_0x07f1dfe4(*(undefined4 *)(DAT_07fc6f98 + 0x40),10);
        iVar5 = DAT_07fc6f98;
        *(char *)(DAT_07fc6f9c + ((uVar4 & 1) * 6 + iVar3 & 0xff) + 0xa0) = (char)sVar1;
        *(undefined1 *)(DAT_07fc6f9c + 9) = 1;
        iVar3 = DAT_07fc6f9c;
      }
      uVar4 = *(uint *)(iVar3 + 0x14);
      if (((int)(uVar4 << 0x1d) < 0) &&
         (((0x2d < (uint)(*(int *)(iVar5 + 0x28) - *(int *)(iVar3 + 0x18)) ||
           ((*(byte *)(iVar3 + 10) == 1 && (sVar1 != 0)))) ||
          ((*(byte *)(iVar3 + 10) - 1 < 2 && (*(char *)(iVar3 + 0xf) == '\x01')))))) {
        FUN_07fc3a14(0x40000);
        uVar4 = *(uint *)(iVar3 + 0x14);
      }
      if ((uVar4 & 0x22) != 0) {
        if ((2 < *(byte *)(iVar5 + 0x18)) &&
           (FUN_07fc4f28(*(undefined1 *)(iVar3 + 2),*(undefined1 *)(iVar2 + 10),
                         *(undefined1 *)(iVar2 + 0xb),*(undefined1 *)(iVar2 + 0xc),
                         *(undefined1 *)(iVar2 + 0xd)),
           0x2c < (uint)(*(int *)(iVar5 + 0x28) - *(int *)(iVar3 + 0x20)))) {
          FUN_07fc3a14(0x20000);
          FUN_07fc3ac4(0xd);
        }
        if (0x2c < (uint)(*(int *)(iVar5 + 0x28) - *(int *)(iVar3 + 0x20))) {
          FUN_07fc3ac4(0x16);
        }
      }
      if (((*(byte *)(iVar3 + 0x14) & 0x11) != 0) &&
         (uVar4 = *(int *)(iVar5 + 0x28) - *(int *)(iVar3 + 0x20), 0x16 < uVar4)) {
        if (*(short *)(iVar2 + 0x2a) != 0) {
          FUN_07fc3ac4(10);
          uVar4 = *(int *)(iVar5 + 0x28) - *(int *)(iVar3 + 0x20);
        }
        if (0x2d < uVar4) {
          FUN_07fc3ac4(0x16);
          return;
        }
      }
    }
  }
  return;
}

