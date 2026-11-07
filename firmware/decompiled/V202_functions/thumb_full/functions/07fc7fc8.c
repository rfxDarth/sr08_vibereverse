/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc7fc8(undefined4 param_1,undefined1 param_2)

{
  int iVar1;
  code *pcVar2;
  undefined1 uVar3;
  uint uVar4;
  
  iVar1 = DAT_07fc8024;
  *(undefined1 *)(DAT_07fc8024 + 0x16) = 0;
  *(undefined1 *)(iVar1 + 0x13) = param_2;
  *(undefined2 *)(iVar1 + 0x18) = 0;
  *(undefined1 *)(iVar1 + 0x15) = 0;
  FUN_07fcc798();
  *(undefined1 *)(iVar1 + 0x20) = 0;
  *(undefined1 *)(iVar1 + 0x1f) = 0;
  FUN_07fcdabc();
  FUN_07fc7008();
  uVar4 = FUN_07fc7604(0x47);
  if (uVar4 < 0x40) {
    FUN_07fc7700(DAT_07fc8028);
    pcVar2 = DAT_07fc802c;
    uVar3 = (*DAT_07fc802c)(0x45);
    iVar1 = DAT_07fc8030;
    *(undefined1 *)(DAT_07fc8030 + 3) = uVar3;
    uVar3 = (*pcVar2)(0x46);
    *(undefined1 *)(iVar1 + 5) = uVar3;
    uVar3 = (*pcVar2)(0x47);
    *(undefined1 *)(iVar1 + 7) = uVar3;
    uVar3 = (*pcVar2)(0x48);
    *(undefined1 *)(iVar1 + 9) = uVar3;
    FUN_07fc7700(iVar1);
  }
  FUN_07fc71ac(param_1);
  return;
}

