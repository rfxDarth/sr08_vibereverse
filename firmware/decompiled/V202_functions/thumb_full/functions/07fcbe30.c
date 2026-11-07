/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


int FUN_07fcbe30(int param_1,undefined4 param_2,undefined1 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  
  iVar2 = DAT_07fcbe50;
  *(undefined1 *)(DAT_07fcbe50 + param_1 * 0x10) = 1;
  iVar2 = iVar2 + param_1 * 0x10;
  *(undefined4 *)(iVar2 + 0xc) = param_4;
  *(undefined4 *)(iVar2 + 4) = param_2;
  *(undefined1 *)(iVar2 + 1) = param_3;
  uVar1 = FUN_07fc432c();
  *(undefined4 *)(iVar2 + 8) = uVar1;
  return param_1;
}

