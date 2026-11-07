/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc9a60(void)

{
  byte bVar1;
  
  if (2 < *(byte *)(DAT_07fc9ab8 + 0x18)) {
    FUN_07fc3134(*(undefined1 *)(DAT_07fc9ab8 + 0x20),DAT_07fc9d68 + 0x40,3,1);
    goto LAB_07fc9aa8;
  }
  bVar1 = *(byte *)(DAT_07fc9ddc + 0x30) & 3;
  if (bVar1 == 3) {
    *(undefined1 *)(DAT_07fc9d68 + 0x42) = 8;
LAB_07fc9a98:
    *(undefined1 *)(DAT_07fc9d68 + 0x41) = 8;
  }
  else {
    if (1 < bVar1) goto LAB_07fc9a98;
    if ((*(byte *)(DAT_07fc9ddc + 0x30) & 3) == 0) goto LAB_07fc9aa8;
  }
  *(undefined1 *)(DAT_07fc9d68 + 0x40) = 8;
LAB_07fc9aa8:
  *(undefined1 *)(DAT_07fc9d68 + 0x45) = 0x10;
  return;
}

