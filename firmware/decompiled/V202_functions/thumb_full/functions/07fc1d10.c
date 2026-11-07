/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc1d10(int param_1,uint param_2,ushort param_3,ushort param_4,int param_5)

{
  int iVar1;
  
  iVar1 = DAT_07fc1d40;
  if (param_1 == 3) {
    param_1 = 4;
  }
  param_1 = param_1 * 0x20;
  if (param_5 == 0) {
    *(short *)(DAT_07fc1d40 + param_1 + 2) = (short)(1 << (param_2 & 0xff));
  }
  else {
    *(short *)(param_1 + DAT_07fc1d40) = (short)(1 << (param_2 & 0xff));
  }
  *(ushort *)(iVar1 + param_2 * 2 + param_1 + 4) = param_4 | param_3;
  return;
}

