/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc42ec(undefined4 param_1,int param_2)

{
  undefined1 *puVar1;
  undefined1 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  puVar1 = DAT_07fc4328;
  if (param_2 == 1) {
    uVar2 = 0x3b;
  }
  else {
    uVar2 = 0xab;
  }
  uVar3 = *(undefined4 *)(DAT_07fc4320 + 0x44);
  uVar4 = *(undefined4 *)(DAT_07fc4324 + 0x2c);
  *DAT_07fc4328 = uVar2;
  puVar1[1] = (char)uVar4;
  puVar1[2] = (char)uVar3;
  puVar1[3] = (char)((uint)uVar3 >> 8);
  puVar1[4] = (char)param_1;
  puVar1[5] = (char)((uint)param_1 >> 8);
  puVar1[6] = (char)((uint)param_1 >> 0x10);
  puVar1[7] = (char)((uint)param_1 >> 0x18);
  return;
}

