/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fca84c(void)

{
  byte bVar1;
  
  bVar1 = *(byte *)(DAT_07fcabac + 0x30) & 3;
  if (bVar1 == 3) {
    bVar1 = *(byte *)(DAT_07fcabb0 + 0x40) | 1;
LAB_07fca872:
    bVar1 = bVar1 | 8;
  }
  else {
    if (1 < bVar1) {
      bVar1 = *(byte *)(DAT_07fcac08 + 0x40);
      goto LAB_07fca872;
    }
    if ((*(byte *)(DAT_07fcabac + 0x30) & 3) == 0) goto LAB_07fca87e;
    bVar1 = *(byte *)(DAT_07fcac08 + 0x40);
  }
  *(byte *)(DAT_07fcac08 + 0x40) = bVar1 | 0x40;
LAB_07fca87e:
  FUN_07fc3148(*(undefined4 *)(DAT_07fcac08 + 0x2c),DAT_07fcac08 + 0x42,3,1);
  return;
}

