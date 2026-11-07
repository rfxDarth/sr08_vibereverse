/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcac20(void)

{
  byte bVar1;
  
  if (*(char *)(DAT_07fcaf98 + 8) != '\0') {
    FUN_07fc3148(*(char *)(DAT_07fcaf98 + 8),DAT_07fcad74 + 0x40,3,1);
    goto LAB_07fcac64;
  }
  bVar1 = *(byte *)(DAT_07fcaf54 + 0x30) & 3;
  if (bVar1 == 3) {
    *(undefined1 *)(DAT_07fcad74 + 0x42) = 8;
LAB_07fcac54:
    *(undefined1 *)(DAT_07fcad74 + 0x41) = 8;
  }
  else {
    if (1 < bVar1) goto LAB_07fcac54;
    if ((*(byte *)(DAT_07fcaf54 + 0x30) & 3) == 0) goto LAB_07fcac64;
  }
  *(undefined1 *)(DAT_07fcad74 + 0x40) = 8;
LAB_07fcac64:
  *(undefined1 *)(DAT_07fcad74 + 0x45) = 0x10;
  return;
}

