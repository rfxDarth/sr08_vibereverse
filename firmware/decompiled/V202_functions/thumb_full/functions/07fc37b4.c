/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


uint FUN_07fc37b4(void)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  
  iVar2 = DAT_07fc3aa0;
  iVar1 = DAT_07fc3a80;
  uVar6 = *(uint *)(DAT_07fc3a80 + 0x14);
  uVar5 = 0;
  if (((uVar6 != 0) && (*(char *)(DAT_07fc3aa0 + 0xb) != '\x1e')) &&
     (iVar4 = FUN_07fcb460(), iVar4 == 0)) {
    if ((uVar6 & 0x7fff) >> 6 == 0) {
      if (*(char *)(iVar2 + 0x26) == '\0') {
        uVar5 = (uint)((uVar6 & 0x1d) != 0);
        if ((uVar6 & 0x22) != 0) {
          uVar5 = 2;
        }
      }
      else {
        uVar5 = 0;
        *(undefined4 *)(iVar1 + 0x14) = 0;
      }
    }
    else {
      uVar3 = 0x4000;
      do {
        uVar5 = uVar3;
        if (uVar5 < 0x40) break;
        uVar3 = uVar5 >> 1;
      } while ((uVar5 & uVar6) == 0);
    }
  }
  FUN_07fc381c(uVar5);
  return uVar5;
}

