/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc7738(undefined4 param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = DAT_07fc7950;
  iVar1 = DAT_07fc7870;
  switch(param_1) {
  case 0:
    FUN_07fc71ac(2);
    iVar1 = DAT_07fc7950;
    *(undefined1 *)(DAT_07fc7950 + 0x1f) = 1;
    *(undefined1 *)(iVar1 + 0x16) = 1;
    return;
  case 1:
    FUN_07fc731c();
    break;
  case 2:
    FUN_07fc771c();
    break;
  case 3:
    *(undefined1 *)(DAT_07fc7870 + 0x40) = 0xf;
    *(undefined1 *)(iVar1 + 0x4e) = 5;
    *(undefined2 *)(iVar1 + 0x4c) = 0x10;
    *(undefined4 *)(iVar1 + 0x44) = 0;
    *(undefined4 *)(iVar1 + 0x48) = 0x40000;
    *(undefined2 *)(iVar1 + 0x42) = 0;
    *(undefined4 *)(iVar1 + 0x50) = 0;
    *(undefined4 *)(iVar1 + 0x54) = 0;
    *(undefined4 *)(iVar1 + 0x58) = 0;
    *(undefined1 *)(iVar1 + 0x5c) = 0;
    *(short *)(iVar1 + 0x5e) = (short)DAT_07fc77f4;
    FUN_07fc7078();
    FUN_07fc77f8();
    iVar1 = DAT_07fc7950;
    *(undefined1 *)(DAT_07fc7950 + 0x20) = 1;
    *(undefined1 *)(iVar1 + 0x15) = 1;
    return;
  case 4:
    *(undefined1 *)(DAT_07fc7950 + 0x15) = 0;
    FUN_07fc708c(1);
    *(undefined1 *)(iVar2 + 0x20) = 0;
    return;
  case 5:
    *(undefined1 *)(DAT_07fc7870 + 0x40) = 2;
    *(undefined1 *)(iVar1 + 0x5c) = 2;
    *(undefined1 *)(iVar1 + 0x42) = 0;
    FUN_07fc7078();
    FUN_07fc77f8();
    iVar1 = DAT_07fc7950;
    *(undefined1 *)(DAT_07fc7950 + 0x20) = 1;
    *(undefined1 *)(iVar1 + 0x15) = 1;
    return;
  default:
    return;
  }
  *(undefined1 *)(DAT_07fc7950 + 0x1f) = 0;
  return;
}

