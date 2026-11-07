/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc3d6c(int param_1,int param_2,int param_3,int param_4,undefined4 param_5,int param_6)

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
    FUN_07fc3dd8(local_18,local_1c,local_20);
    iVar2 = param_3 * param_3 + param_2 * param_2;
    param_4 = (int)local_20[0];
    if (-1 < *(char *)(DAT_07fc3dd4 + 7)) {
      iVar2 = iVar2 + param_4 * param_4;
    }
    sVar1 = FUN_07fc1e70(iVar2);
    param_1 = (int)sVar1;
  }
  FUN_07fc41e4(param_1,param_2,param_3,param_4,param_5);
  return;
}

