/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined1 FUN_07fc7a90(undefined2 param_1)

{
  undefined2 *puVar1;
  ushort *puVar2;
  uint uVar3;
  undefined1 uVar4;
  
  FUN_07fc1f20();
  puVar1 = DAT_07fc7b98;
  *DAT_07fc7b98 = param_1;
  FUN_07fc1f20();
  *puVar1 = 0x100;
  FUN_07fc1f00();
  puVar2 = DAT_07fc7b9c;
  if ((DAT_07fc7b9c[0x16] & 1) == 0) {
    uVar3 = FUN_07fc1ee8(*DAT_07fc7b9c);
    uVar4 = (undefined1)*puVar1;
  }
  else {
    FUN_07fc521c(DAT_07fc7ba0,0x76,1);
    uVar3 = (uint)*puVar2;
    uVar4 = 0;
  }
  FUN_07fc1f00(uVar3);
  FUN_07fc1f10();
  return uVar4;
}

