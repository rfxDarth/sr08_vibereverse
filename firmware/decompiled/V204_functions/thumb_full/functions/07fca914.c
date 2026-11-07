/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fca914(void)

{
  int iVar1;
  uint extraout_r1;
  
  iVar1 = DAT_07fcacc8;
  *(undefined1 *)(DAT_07fcacc8 + 0x40) = 0x53;
  *(undefined1 *)(iVar1 + 0x44) = 0x65;
  func_0x07f1dfb8(*(undefined1 *)(DAT_07fcacb0 + 0x30),5);
  if (extraout_r1 < 4) {
    if (extraout_r1 == 3) goto LAB_07fca942;
    if (extraout_r1 < 2) {
      if (extraout_r1 == 0) {
        return;
      }
      goto LAB_07fca94e;
    }
  }
  else {
    *(undefined1 *)(iVar1 + 0x43) = 8;
LAB_07fca942:
    *(undefined1 *)(iVar1 + 0x42) = 8;
  }
  *(undefined1 *)(iVar1 + 0x41) = 8;
LAB_07fca94e:
  *(undefined1 *)(iVar1 + 0x40) = 0x5b;
  return;
}

