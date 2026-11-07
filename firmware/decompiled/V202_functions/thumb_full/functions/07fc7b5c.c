/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined2 FUN_07fc7b5c(undefined1 param_1,undefined1 param_2,undefined4 param_3,undefined4 param_4)

{
  ushort *puVar1;
  undefined2 *puVar2;
  byte *pbVar3;
  short sVar4;
  byte local_14;
  undefined1 local_13 [3];
  
  puVar1 = DAT_07fc7b98;
  pbVar3 = &local_14;
  local_13._1_2_ = (undefined2)((uint)param_4 >> 0x10);
  _local_14 = CONCAT31(CONCAT21(local_13._1_2_,param_2),param_1);
  sVar4 = 2;
  do {
    FUN_07fc1f20();
    *puVar1 = (ushort)*pbVar3;
    pbVar3 = pbVar3 + 1;
    sVar4 = sVar4 + -1;
  } while (sVar4 != 0);
  FUN_07fc1f00();
  FUN_07fc1f10();
  puVar2 = DAT_07fc7b9c;
  if ((DAT_07fc7b9c[0x16] & 1) != 0) {
    FUN_07fc521c(DAT_07fc7ba0,0xea,1);
  }
  return *puVar2;
}

