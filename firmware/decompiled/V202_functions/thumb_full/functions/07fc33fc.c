/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc33fc(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined1 *puVar3;
  int *piVar4;
  
  iVar1 = DAT_07fc3444;
  if (param_1 - 1U < 10) {
    piVar4 = (int *)(param_1 * 4 + DAT_07fc3440 + -4);
    iVar2 = *piVar4;
    if ((iVar2 != 0) && (iVar2 != DAT_07fc3444)) {
      func_0x07f1c0e8(param_1 + DAT_07fc3448 + 1,4,param_3,param_4,param_4);
      *piVar4 = iVar1;
      puVar3 = (undefined1 *)func_0x07f1bbb0(DAT_07fc3448,4,4,8);
      *puVar3 = (char)param_1;
      func_0x07f1bbe2();
    }
  }
  return;
}

