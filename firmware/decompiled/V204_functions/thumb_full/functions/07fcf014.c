/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fcf014(int param_1,int param_2,int param_3,int param_4)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  
  local_2c = 0;
  local_30 = 0;
  for (iVar2 = 0; iVar2 < param_4; iVar2 = iVar2 + 1) {
    iVar4 = *(int *)(param_1 + iVar2 * 4) >> 10;
    local_2c = iVar4 * iVar4 + local_2c;
    iVar4 = *(int *)(param_2 + iVar2 * 4) >> 10;
    local_30 = iVar4 * iVar4 + local_30;
  }
  iVar2 = param_4 * 2;
  if ((local_2c == 0) || (local_30 == 0)) {
    for (iVar4 = 0; iVar2 - iVar4 != 0 && iVar4 <= iVar2; iVar4 = iVar4 + 1) {
      *(undefined1 *)(param_3 + iVar4) = 0;
    }
  }
  else {
    for (iVar4 = 0; iVar2 - iVar4 != 0 && iVar4 <= iVar2; iVar4 = iVar4 + 1) {
      if (iVar4 < param_4) {
        iVar5 = 0;
        for (iVar3 = 0; iVar3 < iVar4 + 1; iVar3 = iVar3 + 1) {
          iVar5 = ((*(int *)(param_1 + iVar3 * 4) >> 9) *
                   (*(int *)(((param_4 - iVar4) + iVar3) * 4 + param_2 + -4) >> 9) >> 2) + iVar5;
        }
        iVar3 = func_0x07f1dfe4(iVar5 << 6,local_2c);
        uVar1 = func_0x07f1dfe4(iVar5 * iVar3,local_30);
        *(undefined1 *)(param_3 + iVar4) = uVar1;
      }
      if (param_4 <= iVar4) {
        if (iVar2 + -1 == iVar4) {
          uVar1 = 0;
        }
        else {
          local_28 = 0;
          for (iVar3 = 0; iVar3 < (iVar2 - iVar4) + -1; iVar3 = iVar3 + 1) {
            local_28 = ((*(int *)(((iVar4 - param_4) + iVar3) * 4 + param_1 + 4) >> 9) *
                        (*(int *)(param_2 + iVar3 * 4) >> 9) >> 2) + local_28;
          }
          iVar3 = func_0x07f1dfe4(local_28 << 6,local_2c);
          uVar1 = func_0x07f1dfe4(local_28 * iVar3,local_30);
        }
        *(undefined1 *)(param_3 + iVar4) = uVar1;
      }
    }
  }
  return 0;
}

