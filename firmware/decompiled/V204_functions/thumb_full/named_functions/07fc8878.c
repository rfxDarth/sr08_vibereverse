/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fc8878(void)

{
  int iVar1;
  undefined4 uVar2;
  
  uVar2 = DAT_07fc88d0;
  iVar1 = DAT_07fc88cc;
  if ((*(char *)(DAT_07fc88cc + 0x1b) == '\x01') &&
     (((*(short *)(DAT_07fc88cc + 0x46) < DAT_07fc88d4 ||
       (DAT_07fc88d8 < *(short *)(DAT_07fc88cc + 0x46))) || (*(char *)(DAT_07fc88cc + 0x13) != '\'')
      ))) {
    *(undefined4 *)(DAT_07fc8c34 + 0x38) = DAT_07fc88d0;
  }
  if ((*(char *)(iVar1 + 0x19) != '\x01') || (*(char *)(iVar1 + 0x1a) == '\x01')) {
    *(undefined4 *)(DAT_07fc8c34 + 0x38) = uVar2;
  }
  if ((*(short *)(iVar1 + 0x42) != 0) && (*(short *)(iVar1 + 0x42) != 0x1fe)) {
    return *(undefined4 *)(DAT_07fc8c34 + 0x38);
  }
  *(undefined4 *)(DAT_07fc8c34 + 0x38) = uVar2;
  return uVar2;
}

