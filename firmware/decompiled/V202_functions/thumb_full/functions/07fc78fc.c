/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4 FUN_07fc78fc(void)

{
  int iVar1;
  undefined4 uVar2;
  
  uVar2 = DAT_07fc7954;
  iVar1 = DAT_07fc7950;
  if ((*(char *)(DAT_07fc7950 + 0x1c) == '\x01') &&
     (((*(short *)(DAT_07fc7950 + 0x46) < DAT_07fc7958 ||
       (DAT_07fc795c < *(short *)(DAT_07fc7950 + 0x46))) || (*(char *)(DAT_07fc7950 + 0x14) != '\'')
      ))) {
    *(undefined4 *)(DAT_07fc7cb4 + 0x30) = DAT_07fc7954;
  }
  if ((*(char *)(iVar1 + 0x1a) != '\x01') || (*(char *)(iVar1 + 0x1b) == '\x01')) {
    *(undefined4 *)(DAT_07fc7cb4 + 0x30) = uVar2;
  }
  if ((*(short *)(iVar1 + 0x42) != 0) && (*(short *)(iVar1 + 0x42) != 0x1fe)) {
    return *(undefined4 *)(DAT_07fc7cb4 + 0x30);
  }
  *(undefined4 *)(DAT_07fc7cb4 + 0x30) = uVar2;
  return uVar2;
}

