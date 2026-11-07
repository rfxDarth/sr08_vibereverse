/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4 FUN_07fc1144(undefined4 param_1,char *param_2,uint param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = func_0x07f1bf1a(param_3);
  uVar2 = 0;
  if ((iVar1 == 0x3f) || (*(short *)(param_2 + 8) != 6)) {
    uVar2 = func_0x07f156aa(param_1,param_2,param_3,param_4);
  }
  else if (iVar1 << 0x1c < 0) {
    uVar2 = 2;
  }
  else if (*param_2 == '\0') {
    func_0x07f026ca(param_3 >> 8,param_2 + 6);
  }
  return uVar2;
}

