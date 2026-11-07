/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcab3c(void)

{
  int iVar1;
  uint extraout_r1;
  
  iVar1 = DAT_07fcad74;
  *(short *)(DAT_07fcad74 + 0x40) = (short)DAT_07fcab74;
  *(undefined1 *)(iVar1 + 0x42) = 0x52;
  func_0x07f1dfb8(*(undefined1 *)(DAT_07fcade8 + 0x30),3);
  if (extraout_r1 < 2) {
    if (extraout_r1 == 0) {
      return;
    }
  }
  else {
    *(undefined1 *)(iVar1 + 0x44) = 8;
  }
  *(undefined1 *)(iVar1 + 0x43) = 8;
  return;
}

