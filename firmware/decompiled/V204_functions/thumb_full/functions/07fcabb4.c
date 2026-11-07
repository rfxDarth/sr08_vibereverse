/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcabb4(void)

{
  int iVar1;
  undefined4 uVar2;
  uint extraout_r1;
  
  func_0x07f1dfb8(*(undefined1 *)(DAT_07fcaf54 + 0x30),10);
  iVar1 = DAT_07fcad74;
  uVar2 = DAT_07fcac1c;
  if (1 < extraout_r1) {
    if (extraout_r1 < 4) {
      *(undefined1 *)(DAT_07fcad74 + 0x44) = 0x5b;
      uVar2 = DAT_07fcac18;
    }
    else {
      uVar2 = DAT_07fcac14;
      if (extraout_r1 < 6) goto LAB_07fcabe4;
      if (7 < extraout_r1) {
        *(short *)(DAT_07fcad74 + 0x40) = (short)DAT_07fcac0c;
        return;
      }
      *(undefined1 *)(DAT_07fcad74 + 0x44) = 0x6b;
      uVar2 = DAT_07fcac10;
    }
    *(undefined4 *)(iVar1 + 0x40) = uVar2;
    return;
  }
LAB_07fcabe4:
  *(undefined4 *)(DAT_07fcad74 + 0x40) = uVar2;
  return;
}

