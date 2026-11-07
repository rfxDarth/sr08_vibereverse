/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcaae8(void)

{
  int iVar1;
  uint extraout_r1;
  undefined1 uVar2;
  
  ROM___aeabi_uidiv /* 0x07f1dfb8 */(*(undefined1 *)(DAT_07fcade8 + 0x30),6);
  iVar1 = DAT_07fcad74;
  if (extraout_r1 < 5) {
    uVar2 = 0x65;
  }
  else {
    uVar2 = 0x6d;
  }
  *(undefined1 *)(DAT_07fcad74 + 0x44) = uVar2;
  *(undefined4 *)(iVar1 + 0x40) = DAT_07fcab38;
  if (extraout_r1 < 4) {
    if (extraout_r1 == 3) goto LAB_07fcab1a;
    if (extraout_r1 < 2) {
      if (extraout_r1 == 0) {
        return;
      }
      goto LAB_07fcab26;
    }
  }
  else {
    *(undefined1 *)(iVar1 + 0x43) = 0x49;
LAB_07fcab1a:
    *(undefined1 *)(iVar1 + 0x42) = 0x49;
  }
  *(undefined1 *)(iVar1 + 0x41) = 0x49;
LAB_07fcab26:
  *(undefined1 *)(iVar1 + 0x40) = 0x5b;
  return;
}

