/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


void FUN_07fca89c(void)

{
  byte bVar1;
  
  bVar1 = *(byte *)(DAT_07fcac04 + 0x30) & 3;
  if (bVar1 == 3) {
    bVar1 = *(byte *)(DAT_07fcac08 + 0x40) | 1;
LAB_07fca8c2:
    bVar1 = bVar1 | 8;
  }
  else {
    if (1 < bVar1) {
      bVar1 = *(byte *)(DAT_07fcac08 + 0x40);
      goto LAB_07fca8c2;
    }
    if ((*(byte *)(DAT_07fcac04 + 0x30) & 3) == 0) goto LAB_07fca8ce;
    bVar1 = *(byte *)(DAT_07fcac78 + 0x40);
  }
  *(byte *)(DAT_07fcac08 + 0x40) = bVar1 | 0x40;
LAB_07fca8ce:
  FUN_07fc3148(*(undefined4 *)(DAT_07fcac08 + 0x2c),DAT_07fcac08 + 0x42,3,1);
  return;
}

