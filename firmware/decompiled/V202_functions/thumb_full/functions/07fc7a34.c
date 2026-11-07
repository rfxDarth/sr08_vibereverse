/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc7a34(undefined2 param_1,undefined1 *param_2,uint param_3)

{
  undefined2 uVar1;
  undefined2 *puVar2;
  undefined2 *puVar3;
  uint uVar4;
  
  FUN_07fc1f20();
  puVar2 = DAT_07fc7b98;
  *DAT_07fc7b98 = param_1;
  for (uVar4 = 0; uVar4 < param_3; uVar4 = uVar4 + 1) {
    FUN_07fc1f20();
    *puVar2 = 0x100;
  }
  FUN_07fc1f00();
  puVar3 = DAT_07fc7b9c;
  if ((DAT_07fc7b9c[0x16] & 1) != 0) {
    FUN_07fc521c(DAT_07fc7ba0,0x9e,1);
  }
  uVar1 = *puVar3;
  for (uVar4 = 0; uVar4 < param_3; uVar4 = uVar4 + 1) {
    FUN_07fc1ee8();
    uVar1 = *puVar2;
    *param_2 = (char)uVar1;
    param_2 = param_2 + 1;
  }
  FUN_07fc1f00(uVar1);
  FUN_07fc1f10();
  return;
}

