/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc4e24(int param_1,int param_2)

{
  int iVar1;
  undefined1 auStack_1f [15];
  
  iVar1 = DAT_07fc511c;
  *(int *)(DAT_07fc511c + 0x38) = *(int *)(DAT_07fc511c + 0x38) + param_1;
  func_0x07f1e0de(auStack_1f,0xf);
  if ((((int)((uint)*(byte *)(iVar1 + 0x14) << 0x1c) < 0) && (*(byte *)(iVar1 + 0x10) < 5)) &&
     ((1 << (uint)*(byte *)(iVar1 + 0x10) & 0x16U) != 0)) {
    *(int *)(iVar1 + 0x2c) = *(int *)(iVar1 + 0x2c) + param_1;
    FUN_07fc2550();
  }
  *(uint *)(DAT_07fc4eb4 + 0x70) = *(uint *)(DAT_07fc4eb4 + 0x70) | 2;
  if (param_2 != 0) {
    *(int *)(iVar1 + 0x3c) = *(int *)(iVar1 + 0x3c) + param_1;
  }
  FUN_07fc4fa4();
  return;
}

