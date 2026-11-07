/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc7380(int param_1)

{
  short sVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  
  iVar2 = DAT_07fc7520;
  if ((param_1 != 1) || (*(char *)(DAT_07fc7520 + 0xd) != '\x01')) {
    *(char *)(DAT_07fc7520 + 0xd) = (char)param_1;
    piVar5 = DAT_07fc74a0;
    if (param_1 == 1) {
      *(undefined2 *)(iVar2 + 0x2a) = 0;
      FUN_07fc74a8(*(undefined4 *)(DAT_07fc75c8 + 0x14));
      return;
    }
    iVar3 = *DAT_07fc74a0;
    if (*(int *)(iVar2 + 0x5c) != iVar3) {
      *(int *)(iVar2 + 0x5c) = iVar3;
      if (0xf < (uint)(iVar3 - *(int *)(iVar2 + 0x60))) {
        *(undefined2 *)(iVar2 + 0x2a) = 0;
      }
      iVar3 = DAT_07fc75c8;
      FUN_07fc74a8(*(undefined4 *)(DAT_07fc75c8 + 0x14));
      sVar1 = *(short *)(iVar2 + 0x2a);
      if (sVar1 != 0) {
        uVar4 = piVar5[7];
        iVar3 = ROM___aeabi_idiv /* 0x07f1dfe4 */(DAT_07fc74a0[6],10);
        piVar5 = DAT_07fc74a0;
        *(char *)(DAT_07fc75c8 + ((uVar4 & 1) * 6 + iVar3 & 0xff) + 0xa0) = (char)sVar1;
        *(undefined1 *)(DAT_07fc75c8 + 9) = 1;
        iVar3 = DAT_07fc75c8;
      }
      uVar4 = *(uint *)(iVar3 + 0x14);
      if (((int)(uVar4 << 0x1d) < 0) &&
         (((0x2d < (uint)(*piVar5 - *(int *)(iVar3 + 0x18)) ||
           ((*(byte *)(iVar3 + 10) == 1 && (sVar1 != 0)))) ||
          ((*(byte *)(iVar3 + 10) - 1 < 2 && (*(char *)(iVar3 + 0xf) == '\x01')))))) {
        FUN_07fc3a38(0x40000);
        uVar4 = *(uint *)(iVar3 + 0x14);
      }
      if ((uVar4 & 0x22) != 0) {
        if ((2 < *(byte *)(DAT_07fc74a4 + 0x58)) &&
           (FUN_07fc5038(*(undefined1 *)(iVar3 + 2),*(undefined1 *)(iVar2 + 9),
                         *(undefined1 *)(iVar2 + 10),*(undefined1 *)(iVar2 + 0xb),
                         *(undefined1 *)(iVar2 + 0xc)),
           0x2c < (uint)(*piVar5 - *(int *)(iVar3 + 0x20)))) {
          FUN_07fc3a38(0x20000);
          FUN_07fc3b78(0xd);
        }
        if (0x2c < (uint)(*piVar5 - *(int *)(iVar3 + 0x20))) {
          FUN_07fc3b78(0x16);
        }
      }
      if (((*(byte *)(iVar3 + 0x14) & 0x11) != 0) &&
         (uVar4 = *piVar5 - *(int *)(iVar3 + 0x20), 0x16 < uVar4)) {
        if (*(short *)(iVar2 + 0x2a) != 0) {
          FUN_07fc3b78(10);
          uVar4 = *piVar5 - *(int *)(iVar3 + 0x20);
        }
        if (0x2d < uVar4) {
          FUN_07fc3b78(0x16);
          return;
        }
      }
    }
  }
  return;
}

