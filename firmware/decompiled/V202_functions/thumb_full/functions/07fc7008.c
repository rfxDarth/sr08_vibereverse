/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4 FUN_07fc7008(void)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  
  iVar1 = DAT_07fc73a8;
  uVar2 = 0;
  do {
    uVar4 = uVar2;
    if (9 < uVar4) break;
    FUN_07fc78d4(1,0);
    FUN_07fc4344(5);
    iVar3 = FUN_07fc7604(0);
    *(char *)(iVar1 + 0x14) = (char)iVar3;
    uVar2 = uVar4 + 1;
  } while (iVar3 != 0x27);
  if (9 < uVar4) {
    return 0;
  }
  return 1;
}

