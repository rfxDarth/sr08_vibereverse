/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc3d30(undefined2 *param_1,undefined2 *param_2,short *param_3)

{
  int iVar1;
  
  *param_3 = -*param_3;
  iVar1 = DAT_07fc3d58;
  *(undefined2 *)(DAT_07fc3d58 + 0xce) = *param_1;
  *(undefined2 *)(iVar1 + 0xd0) = *param_2;
  *(short *)(iVar1 + 0xd2) = *param_3;
  FUN_07fc2f26(DAT_07fc3d5c + 0x5c,param_3);
  return;
}

