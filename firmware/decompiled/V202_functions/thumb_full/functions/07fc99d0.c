/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc99d0(void)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 in_r3;
  
  iVar1 = DAT_07fc9d68;
  iVar3 = DAT_07fc9ab8;
  if (*(char *)(DAT_07fc9d64 + 0xc4) == '\x01') {
    for (iVar3 = 0x40; iVar3 != 0x45; iVar3 = iVar3 + 1) {
      *(undefined1 *)(iVar1 + iVar3) = 0x7f;
    }
    *(undefined1 *)(iVar1 + 0x45) = 0x50;
  }
  else {
    iVar4 = *(int *)(DAT_07fc9ab8 + 0x48);
    iVar2 = iVar4;
    if (*(char *)(DAT_07fc9d64 + 0x34) != '\0') {
      iVar2 = iVar4 + -0xc;
    }
    if (iVar4 < 0xd) {
      iVar2 = iVar4;
    }
    FUN_07fc3134(iVar2,DAT_07fc9d68 + 0x40,2,0,in_r3);
    FUN_07fc3134(*(undefined4 *)(iVar3 + 0x44),iVar1 + 0x43,2,0);
    if ((*(byte *)(DAT_07fc9ddc + 0x30) & 1) != 0) {
      *(undefined1 *)(iVar1 + 0x42) = 0x48;
      return;
    }
  }
  return;
}

