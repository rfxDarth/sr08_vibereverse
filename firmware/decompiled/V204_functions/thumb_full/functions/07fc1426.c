/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc1426(int param_1)

{
  char cVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  undefined4 uVar7;
  undefined2 uStack_50;
  undefined2 uStack_4e;
  undefined2 uStack_4c;
  undefined1 auStack_4a [6];
  undefined1 uStack_44;
  byte bStack_43;
  byte bStack_42;
  undefined2 auStack_3c [2];
  uint uStack_38;
  ushort auStack_34 [2];
  undefined1 auStack_30 [8];
  uint uStack_28;
  undefined1 auStack_24 [12];
  int iStack_18;
  
  iStack_18 = param_1;
  iVar3 = func_0x07f02ae0(param_1);
  uStack_38 = (*(byte *)(iStack_18 + 4) & 0x7f) >> 6;
  auStack_34[0] = 10;
  if (DAT_07fc16d8 <= *(ushort *)(iVar3 + 0x1a) - 10) {
    return;
  }
  uVar4 = (uint)*(ushort *)(iVar3 + 0x16);
  if (uVar4 < 6) {
    return;
  }
  if (0xc80 < uVar4) {
    return;
  }
  if (500 < *(ushort *)(iVar3 + 0x18)) {
    return;
  }
  if ((int)((uint)*(ushort *)(iVar3 + 0x1a) * 10) <
      (int)(uVar4 * (*(ushort *)(iVar3 + 0x18) + 1) * 5 + 1) >> 1) {
    return;
  }
  if ((((*(char *)(iVar3 + 0x1c) == '\0') && (*(char *)(iVar3 + 0x1d) == '\0')) &&
      (*(char *)(iVar3 + 0x1e) == '\0')) &&
     ((*(char *)(iVar3 + 0x1f) == '\0' && ((*(byte *)(iVar3 + 0x20) & 0x1f) == 0)))) {
    return;
  }
  if (0xb < (*(byte *)(iVar3 + 0x21) & 0x1f) - 5) {
    return;
  }
  if (uVar4 < *(ushort *)(iVar3 + 0x14)) {
    return;
  }
  if (*(byte *)(iVar3 + 0x13) == 0) {
    return;
  }
  if (uVar4 - 1 < 9) {
    uVar4 = uVar4 - 1;
  }
  else {
    uVar4 = 8;
  }
  if (uVar4 < *(byte *)(iVar3 + 0x13)) {
    return;
  }
  uStack_28 = uStack_38;
  iVar5 = func_0x07f063c4(auStack_3c);
  iVar2 = DAT_07fc16dc;
  if (iVar5 != 0) {
    return;
  }
  *(undefined4 *)(DAT_07fc16dc + 0x1c) = 0;
  func_0x07f1e0ac(auStack_30,iVar3,6);
  if (*(char *)(iVar2 + 2) == '\0') goto LAB_07fc15e6;
  if (*(byte *)(iVar3 + 5) >> 6 == 1) {
    iVar5 = func_0x07f0c71a(iVar3);
    *(int *)(iVar2 + 0x1c) = iVar5;
    if (iVar5 == 0) {
      uVar7 = func_0x07f0c746(iVar3,auStack_24);
      *(undefined4 *)(iVar2 + 0x1c) = uVar7;
    }
    cVar1 = *(char *)(*(int *)(iVar2 + -0x54) + 10);
    if ((cVar1 == '\x01') || (cVar1 == '\x04')) {
      if (*(int *)(iVar2 + 0x1c) == 0) {
        return;
      }
      iVar5 = func_0x07f1e0f4(*(int *)(iVar2 + 0x1c) + 0x25,*(int *)(iVar2 + -0x54) + 0x10,6);
      if (iVar5 != 0) {
        return;
      }
      if (*(char *)(*(int *)(iVar2 + 0x1c) + 0x2b) != *(char *)(*(int *)(iVar2 + -0x54) + 0xf)) {
        return;
      }
    }
    if (*(int *)(iVar2 + 0x1c) != 0) {
      func_0x07f1e0ac(auStack_30,*(int *)(iVar2 + 0x1c) + 0x25,6);
      uStack_38 = (uint)*(byte *)(*(int *)(iVar2 + 0x1c) + 0x2b);
      iVar5 = func_0x07f0c404(*(int *)(iVar2 + 0x1c) + 0x25,uStack_38,auStack_34);
      if (iVar5 == 0) {
        iVar5 = func_0x07f0c404(auStack_24,1,auStack_34);
        if (iVar5 == 0) goto LAB_07fc15ba;
      }
      else if (*(char *)(*(int *)(iVar2 + 0x1c) + 0x2b) == '\0') {
        func_0x07f0b368(auStack_34[0],DAT_07fc16e0);
        func_0x07f0c404(DAT_07fc16e0,1,auStack_34);
      }
      func_0x07f0b394(auStack_34[0],*(int *)(iVar2 + 0x1c) + 0x32);
    }
  }
  else {
    iVar5 = func_0x07f0c640(iVar3,uStack_28);
    if ((iVar5 != 0) && (iVar6 = 0, *(char *)(iVar5 + 0x38) == '\0')) {
      do {
        if (*(char *)(iVar5 + iVar6 + 0x15) != '\0') {
          if (iVar6 < 0x10) {
            return;
          }
          break;
        }
        iVar6 = iVar6 + 1;
      } while (iVar6 < 0x10);
    }
  }
LAB_07fc15ba:
  cVar1 = *(char *)(*(int *)(iVar2 + -0x54) + 9);
  if ((((cVar1 == '\x02') || (cVar1 == '\x03')) && (9 < auStack_34[0])) &&
     (iVar5 = func_0x07f0c404(iVar3,uStack_28,auStack_34), iVar5 == 0)) {
    return;
  }
LAB_07fc15e6:
  iVar5 = func_0x07f0c558(iVar3,auStack_3c,0);
  if (iVar5 == 0) {
    cVar1 = *(char *)(*(int *)(iVar2 + -0x54) + 9);
    if ((cVar1 == '\x02') || (cVar1 == '\x03')) {
      uVar7 = 1;
    }
    else {
      uVar7 = 0;
    }
    iVar5 = func_0x07f0c59a(auStack_30,uStack_38,auStack_3c[0],uVar7);
    if (iVar5 == 0) {
      uStack_50 = *(undefined2 *)(iVar3 + 0x16);
      uStack_4e = *(undefined2 *)(iVar3 + 0x18);
      uStack_4c = *(undefined2 *)(iVar3 + 0x1a);
      bStack_42 = *(byte *)(iVar3 + 0x21) >> 5;
      bStack_43 = *(byte *)(iVar3 + 0x21) & 0x1f;
      func_0x07f1e0ac(auStack_4a,iVar3,6);
      uStack_44 = (undefined1)((*(byte *)(iStack_18 + 4) & 0x7f) >> 6);
      uVar7 = func_0x07f0731e(&uStack_50,iVar3,*(undefined4 *)(iVar2 + -0x28),auStack_3c[0]);
      *(undefined4 *)(iVar2 + -0x28) = uVar7;
      func_0x07f03074(&uStack_50,uVar7);
      *(undefined4 *)(iVar2 + -0x28) = 0;
      func_0x07f0646a(auStack_3c[0],iVar3 + 0x1c);
    }
    func_0x07f093aa();
    iVar3 = DAT_07fc16dc;
    if (*(char *)(DAT_07fc16dc + 0x24) != '\0') {
      func_0x07f1c0e8(9,0);
      *(undefined1 *)(iVar3 + 0x24) = 0;
    }
    func_0x07f1beb6(0);
  }
  return;
}

