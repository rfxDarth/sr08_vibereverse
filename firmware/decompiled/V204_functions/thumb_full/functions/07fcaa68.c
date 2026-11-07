/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcaa68(void)

{
  byte bVar1;
  
  if (2 < *(byte *)(DAT_07fcaac4 + 0x58)) {
    FUN_07fc3148(*(undefined1 *)(DAT_07fcaac4 + 0x60),DAT_07fcad74 + 0x40,3,1);
    goto LAB_07fcaab2;
  }
  bVar1 = *(byte *)(DAT_07fcade8 + 0x30) & 3;
  if (bVar1 == 3) {
    *(undefined1 *)(DAT_07fcad74 + 0x42) = 8;
LAB_07fcaaa2:
    *(undefined1 *)(DAT_07fcad74 + 0x41) = 8;
  }
  else {
    if (1 < bVar1) goto LAB_07fcaaa2;
    if ((*(byte *)(DAT_07fcade8 + 0x30) & 3) == 0) goto LAB_07fcaab2;
  }
  *(undefined1 *)(DAT_07fcad74 + 0x40) = 8;
LAB_07fcaab2:
  *(undefined1 *)(DAT_07fcad74 + 0x45) = 0x10;
  return;
}

