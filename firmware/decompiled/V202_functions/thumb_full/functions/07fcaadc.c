/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4 FUN_07fcaadc(void)

{
  uint uVar1;
  uint uVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  
  uVar1 = DAT_07fcab00;
  uVar5 = 0;
  do {
    uVar4 = uVar1 + 1;
    if (uVar4 == uVar5) break;
    uVar2 = FUN_07fcaac8();
    uVar4 = uVar5;
    uVar5 = uVar5 + 1;
  } while ((uVar2 & 1) != 0);
  uVar3 = 0;
  if (uVar1 < uVar4) {
    uVar3 = 0xffffffff;
  }
  return uVar3;
}

