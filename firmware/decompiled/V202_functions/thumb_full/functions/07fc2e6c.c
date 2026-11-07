/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc2e6c(uint param_1,undefined2 param_2,undefined2 param_3)

{
  int iVar1;
  
  FUN_07fc432c();
  iVar1 = DAT_07fc31dc;
  *(undefined2 *)(DAT_07fc31dc + 0x42) = param_3;
  *(undefined4 *)(iVar1 + 0x70) = 0;
  iVar1 = DAT_07fc2e9c;
  *(undefined2 *)(DAT_07fc2e9c + 0xe) = param_2;
  *(short *)(iVar1 + 0xc) = (short)param_1;
  if (param_1 < *(ushort *)(iVar1 + 10)) {
    *(short *)(iVar1 + 10) = (short)param_1;
  }
  if (param_1 < 0x1e) {
    FUN_07fc2ea0();
  }
  return;
}

