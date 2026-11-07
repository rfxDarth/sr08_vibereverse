/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc70b4(undefined4 param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = DAT_07fc73a8;
  iVar1 = DAT_07fc71a8;
  switch(param_1) {
  case 0:
    FUN_07fc71ac(*(undefined4 *)(DAT_07fc71a8 + 0x20));
    iVar1 = DAT_07fc73a8;
    *(undefined1 *)(DAT_07fc73a8 + 0x18) = 1;
    *(undefined1 *)(iVar1 + 0x16) = 1;
    return;
  case 1:
    FUN_07fc731c();
    *(undefined1 *)(DAT_07fc73a8 + 0x18) = 0;
    return;
  default:
    return;
  case 3:
    *(undefined1 *)(DAT_07fc71a8 + 0x44) = 0xf;
    *(undefined1 *)(iVar1 + 0x4c) = 5;
    *(undefined4 *)(iVar1 + 0x48) = 0x40;
    *(undefined2 *)(iVar1 + 0x50) = 0x1900;
    *(undefined2 *)(iVar1 + 0x46) = 0;
    break;
  case 4:
    *(undefined1 *)(DAT_07fc73a8 + 0x15) = 0;
    FUN_07fc708c(0);
    *(undefined1 *)(iVar2 + 0x19) = 0;
    return;
  case 5:
    *(undefined1 *)(DAT_07fc71a8 + 0x44) = 2;
    *(undefined1 *)(iVar1 + 0x50) = 2;
    *(undefined1 *)(iVar1 + 0x46) = 0;
  }
  FUN_07fc7078();
  FUN_07fc7150();
  iVar1 = DAT_07fc73a8;
  *(undefined1 *)(DAT_07fc73a8 + 0x19) = 1;
  *(undefined1 *)(iVar1 + 0x15) = 1;
  return;
}

