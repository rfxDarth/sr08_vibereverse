/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fccf80(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  char acStack_49 [29];
  int local_2c;
  int local_28;
  int local_24;
  int local_20;
  int local_1c;
  int local_18;
  
  ROM___aeabi_memclr /* 0x07f1e0de */(acStack_49 + 1,0x1c);
  iVar1 = (int)acStack_49[1];
  local_24 = 0;
  iVar3 = 0;
  iVar4 = 0;
  iVar7 = 0;
  local_1c = 0;
  for (iVar2 = 0; iVar2 < param_2; iVar2 = (int)(char)((char)iVar2 + '\x01')) {
    acStack_49[iVar2 + 1] = '\0';
  }
  local_28 = param_2 + -1;
  iVar2 = 0;
  while (iVar6 = iVar2, iVar6 < local_28) {
    iVar2 = (int)(char)((char)iVar6 + '\x01');
    local_20 = iVar6 << 2;
    local_2c = iVar2;
    for (; iVar2 < param_2; iVar2 = (int)(char)((char)iVar2 + '\x01')) {
      local_18 = iVar2 * 4;
      iVar5 = *(int *)(param_1 + iVar2 * 4);
      if (((*(int *)(param_1 + local_20) == iVar5) && (*(int *)(param_1 + local_20) != 0)) &&
         (iVar5 != 0)) {
        acStack_49[iVar6 + 1] = acStack_49[iVar6 + 1] + '\x01';
        *(undefined4 *)(param_1 + local_18) = 0;
      }
    }
    iVar2 = local_2c;
    if (*(int *)(param_1 + local_20) != 0) {
      acStack_49[iVar6 + 1] = acStack_49[iVar6 + 1] + '\x01';
      iVar2 = local_2c;
    }
  }
  if (*(int *)(param_2 * 4 + param_1 + -4) != 0) {
    acStack_49[param_2] = acStack_49[param_2] + '\x01';
  }
  for (iVar2 = 0; iVar2 < param_2; iVar2 = (int)(char)((char)iVar2 + '\x01')) {
    if (iVar1 < acStack_49[iVar2 + 1]) {
      iVar3 = *(int *)(param_1 + iVar2 * 4);
      iVar1 = (int)acStack_49[iVar2 + 1];
    }
  }
  for (iVar2 = 0; iVar2 < param_2; iVar2 = (int)(char)((char)iVar2 + '\x01')) {
    iVar6 = (int)acStack_49[iVar2 + 1];
    if (((local_24 < iVar6) && (iVar6 <= iVar1)) &&
       (iVar5 = *(int *)(param_1 + iVar2 * 4), iVar5 != iVar3)) {
      local_24 = iVar6;
      iVar4 = iVar5;
    }
  }
  for (iVar1 = 0; iVar1 < param_2; iVar1 = (int)(char)((char)iVar1 + '\x01')) {
    iVar2 = (int)acStack_49[iVar1 + 1];
    if (((local_1c < iVar2) && (iVar2 <= local_24)) &&
       ((iVar6 = *(int *)(param_1 + iVar1 * 4), iVar6 != iVar4 && (iVar6 != iVar3)))) {
      local_1c = iVar2;
      iVar7 = iVar6;
    }
  }
  if (iVar4 == 0) {
    iVar4 = iVar3;
  }
  if (iVar7 == 0) {
    iVar7 = iVar3;
  }
  ROM___aeabi_idiv /* 0x07f1dfe4 */(iVar3 + iVar4 + iVar7,3);
  return;
}

