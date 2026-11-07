/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


void FUN_07fcc8b0(void)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  byte bVar4;
  
  iVar1 = DAT_07fcc994;
  if (*(char *)(DAT_07fcc994 + 0x35) == '\x01') {
    bVar4 = *(char *)(DAT_07fcc994 + 0x36) + 1;
    *(byte *)(DAT_07fcc994 + 0x36) = bVar4;
    if (*(byte *)(iVar1 + 0x37) <= bVar4) {
      *(undefined1 *)(iVar1 + 0x35) = 0;
    }
    uVar3 = *DAT_07fcc99c;
    *DAT_07fcc99c = uVar3 + 1;
    if ((uVar3 + 1 & 1) == 0) goto LAB_07fcc8fc;
    if (*(char *)(iVar1 + 0x10) != '\0') goto LAB_07fcc90e;
    *(undefined1 *)(iVar1 + 0x10) = 1;
    uVar2 = 0x800;
  }
  else {
    *DAT_07fcc99c = *DAT_07fcc99c + 1;
LAB_07fcc8fc:
    if (*(char *)(iVar1 + 0x10) != '\x01') goto LAB_07fcc90e;
    *(undefined1 *)(iVar1 + 0x10) = 0;
    uVar2 = 0x8000000;
  }
  FUN_07fc3a38(uVar2);
LAB_07fcc90e:
  if (*(char *)(DAT_07fcc9a0 + 0xc4) == '\x01') {
    FUN_07fc24c6();
  }
  return;
}

