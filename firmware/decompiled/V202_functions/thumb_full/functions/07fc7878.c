/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


int FUN_07fc7878(void)

{
  char cVar1;
  uint in_r3;
  int iVar2;
  uint uVar3;
  uint uVar4;
  uint local_18;
  
  cVar1 = '\0';
  local_18 = in_r3 & 0xffffff00;
  uVar4 = *(int *)(DAT_07fc78b8 + 0x44) - 1U &
          *(int *)(DAT_07fc78b8 + 0x3c) - *(int *)(DAT_07fc78b8 + 0x40);
  if (6 < uVar4) {
    uVar3 = 0;
    iVar2 = DAT_07fc78b8 + 0x3c;
    do {
      if (uVar4 == uVar3) {
        cVar1 = '\x01';
        goto LAB_07fc78b4;
      }
      FUN_07fc3008(iVar2,uVar3,&local_18);
      uVar3 = uVar3 + 1;
    } while ((char)local_18 == '\x01');
    cVar1 = -1;
  }
LAB_07fc78b4:
  return (int)cVar1;
}

