/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc3cc4(int param_1,int param_2,int param_3,int param_4,undefined4 param_5,int param_6)

{
  short sVar1;
  int iVar2;
  short local_20 [2];
  undefined2 local_1c [2];
  undefined2 local_18 [2];
  
  local_1c[0] = (undefined2)param_3;
  local_18[0] = (undefined2)param_2;
  local_20[0] = (short)param_4;
  if (param_6 == 1) {
    FUN_07fc3d30(local_18,local_1c,local_20);
    iVar2 = param_3 * param_3 + param_2 * param_2;
    param_4 = (int)local_20[0];
    if (-1 < *(char *)(DAT_07fc3d2c + 7)) {
      iVar2 = iVar2 + param_4 * param_4;
    }
    sVar1 = FUN_07fc1e70(iVar2);
    param_1 = (int)sVar1;
  }
  FUN_07fc4108(param_1,param_2,param_3,param_4,param_5);
  return;
}

