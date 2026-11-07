/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc8500(void)

{
  ushort uVar1;
  int iVar2;
  int iVar3;
  short sVar4;
  
  iVar3 = DAT_07fc88cc;
  iVar2 = DAT_07fc8834;
  if (*(int *)(DAT_07fc8834 + 0x3c) == 1) {
    uVar1 = *(ushort *)(DAT_07fc8834 + 0x40);
    if (uVar1 == 0) {
      sVar4 = *(short *)(DAT_07fc8834 + 0x44);
      if (sVar4 == 0) goto LAB_07fc854e;
    }
    else {
      if (uVar1 == DAT_07fc8564) goto LAB_07fc854e;
      sVar4 = *(short *)(DAT_07fc8834 + 0x44);
    }
    *(ushort *)(DAT_07fc88cc + 0x42) = uVar1;
    *(short *)(iVar3 + 0x46) = sVar4;
    *(undefined2 *)(iVar3 + 0x44) = *(undefined2 *)(iVar2 + 0x42);
    *(undefined2 *)(iVar3 + 0x48) = *(undefined2 *)(iVar2 + 0x46);
    FUN_07fcb178(iVar2 + 0x40,8);
    *(undefined1 *)(iVar3 + 0x1a) = 0;
    *(undefined1 *)(iVar3 + 0x19) = 1;
    return;
  }
LAB_07fc854e:
  *(undefined2 *)(DAT_07fc88cc + 0x42) = 0;
  *(undefined2 *)(iVar3 + 0x48) = 0;
  *(undefined4 *)(iVar3 + 0x44) = 0;
  *(undefined1 *)(iVar3 + 0x1a) = 1;
  *(undefined1 *)(iVar3 + 0x19) = 0;
  return;
}

