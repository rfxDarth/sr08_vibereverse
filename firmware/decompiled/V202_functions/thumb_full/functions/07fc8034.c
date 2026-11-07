/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined * FUN_07fc8034(byte *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  uint uVar2;
  undefined *puVar3;
  byte bVar4;
  uint uVar5;
  
  *param_1 = 0;
  iVar1 = DAT_07fc807c;
  FUN_07fc3df8(DAT_07fc807c + 0x14,0x64000,0x14,0,param_4);
  if (*(char *)(iVar1 + 0x14) == '+') {
    bVar4 = *(byte *)(iVar1 + 0x27);
    uVar5 = (uint)bVar4;
    if ((uVar5 != 0) && (uVar5 < 0x12)) {
      puVar3 = (undefined *)(iVar1 + 0x15);
      uVar2 = FUN_07fc18f4(puVar3);
      if (uVar2 == uVar5) goto LAB_07fc8074;
    }
  }
  *(undefined1 *)(iVar1 + 0x14) = 0x84;
  puVar3 = &DAT_07fc8080;
  bVar4 = 4;
LAB_07fc8074:
  *param_1 = bVar4;
  return puVar3;
}

