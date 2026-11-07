/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


void FUN_07fca960(void)

{
  byte bVar1;
  
  if (*(short *)(DAT_07fcaae4 + 0x2a) != 0) {
    FUN_07fc3148(*(short *)(DAT_07fcaae4 + 0x2a),DAT_07fcace0 + 0x40,3,1);
    goto LAB_07fca9a4;
  }
  bVar1 = *(byte *)(DAT_07fcacb0 + 0x30) & 3;
  if (bVar1 == 3) {
    *(undefined1 *)(DAT_07fcace0 + 0x42) = 8;
LAB_07fca994:
    *(undefined1 *)(DAT_07fcad4c + 0x41) = 8;
  }
  else {
    if (1 < bVar1) goto LAB_07fca994;
    if ((*(byte *)(DAT_07fcacb0 + 0x30) & 3) == 0) goto LAB_07fca9a4;
  }
  *(undefined1 *)(DAT_07fcad4c + 0x40) = 8;
LAB_07fca9a4:
  *(undefined1 *)(DAT_07fcad4c + 0x45) = 0x10;
  return;
}

