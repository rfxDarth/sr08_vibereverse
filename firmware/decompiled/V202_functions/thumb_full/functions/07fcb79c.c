/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fcb79c(void)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  byte bVar4;
  
  iVar1 = DAT_07fcb880;
  if (*(char *)(DAT_07fcb880 + 0x35) == '\x01') {
    bVar4 = *(char *)(DAT_07fcb880 + 0x36) + 1;
    *(byte *)(DAT_07fcb880 + 0x36) = bVar4;
    if (*(byte *)(iVar1 + 0x37) <= bVar4) {
      *(undefined1 *)(iVar1 + 0x35) = 0;
    }
    uVar3 = *DAT_07fcb888;
    *DAT_07fcb888 = uVar3 + 1;
    if ((uVar3 + 1 & 1) == 0) goto LAB_07fcb7e8;
    if (*(char *)(iVar1 + 0xf) != '\0') goto LAB_07fcb7fa;
    *(undefined1 *)(iVar1 + 0xf) = 1;
    uVar2 = 0x800;
  }
  else {
    *DAT_07fcb888 = *DAT_07fcb888 + 1;
LAB_07fcb7e8:
    if (*(char *)(iVar1 + 0xf) != '\x01') goto LAB_07fcb7fa;
    *(undefined1 *)(iVar1 + 0xf) = 0;
    uVar2 = 0x8000000;
  }
  FUN_07fc3a14(uVar2);
LAB_07fcb7fa:
  if (*(char *)(DAT_07fcb88c + 0xc4) == '\x01') {
    FUN_07fc2546();
  }
  return;
}

