/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fca64c(void)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  byte *pbVar7;
  undefined1 local_1c [4];
  undefined1 local_18;
  undefined1 local_17;
  undefined1 local_16;
  
  iVar1 = FUN_07fcb080(0x26);
  iVar3 = DAT_07fca77c;
  if (*(char *)(DAT_07fca77c + 0x20) == '\x01') {
    FUN_07fc33e4(1,DAT_07fca780);
    iVar3 = DAT_07fca790;
    pbVar7 = (byte *)(iVar1 + 0x22);
    iVar6 = DAT_07fca77c;
    while ((*pbVar7 < 4 && (*(char *)(iVar6 + 0x20) != '\0'))) {
      iVar4 = *(int *)(iVar3 + 0x24);
      if (iVar4 < 4) {
        iVar6 = *(int *)(iVar3 + 0x28) + 1;
        *(int *)(iVar3 + 0x28) = iVar6;
        if ((int)(uint)*(byte *)(DAT_07fca798 + iVar4 * 5) <= iVar6) {
          *(int *)(iVar3 + 0x24) = iVar4 + 1;
          *(undefined4 *)(iVar3 + 0x28) = 0;
          if (2 < iVar4) {
            *(undefined1 *)(DAT_07fca77c + 0x20) = 0;
            *(undefined4 *)(iVar3 + 0x24) = 0;
            *(undefined4 *)(iVar3 + 0x28) = 0;
          }
        }
        iVar6 = DAT_07fca77c;
        if (*DAT_07fcaa44 != '\0') {
          FUN_07fc3ab0(0,DAT_07fca798 + iVar4 * 5 + 1,4);
          iVar6 = DAT_07fca77c;
        }
      }
      else {
        *(undefined1 *)(iVar6 + 0x20) = 0;
        *(undefined4 *)(iVar3 + 0x24) = 0;
        *(undefined4 *)(iVar3 + 0x28) = 0;
      }
    }
    iVar6 = func_0x07f1bf1a(DAT_07fca784 & *(ushort *)(iVar1 + 2));
    iVar3 = DAT_07fca77c;
    if ((iVar6 == 0) && (3 < *pbVar7)) {
      *pbVar7 = 0;
    }
  }
  if (*(char *)(iVar3 + 0x21) == '\x01') {
    FUN_07fc33e4(1,DAT_07fca780);
    iVar4 = DAT_07fca794;
    iVar6 = DAT_07fca790;
    pbVar7 = (byte *)(iVar1 + 0x22);
    iVar3 = DAT_07fca77c;
    while ((*pbVar7 < 4 && (*(char *)(iVar3 + 0x21) != '\0'))) {
      func_0x07f1e0ac(local_1c,&DAT_07fca788,7);
      iVar2 = *(int *)(iVar6 + 0x24);
      iVar5 = iVar2 + 1;
      *(int *)(iVar6 + 0x24) = iVar5;
      iVar3 = DAT_07fca77c;
      iVar2 = iVar2 * 2;
      local_18 = *(undefined1 *)(iVar4 + iVar2);
      local_17 = *(undefined1 *)(iVar4 + iVar2 + 1);
      if (iVar5 == 0xc) {
        *(undefined1 *)(DAT_07fca77c + 0x21) = 0;
        local_16 = 0;
        local_1c[0] = 0;
        *(undefined4 *)(iVar6 + 0x24) = 0;
      }
      if (*DAT_07fcaa44 != '\0') {
        FUN_07fc3ab0(1,local_1c,7);
        iVar3 = DAT_07fca77c;
      }
    }
    iVar3 = func_0x07f1bf1a(DAT_07fca784 & *(ushort *)(iVar1 + 2));
    if ((iVar3 == 0) && (3 < *pbVar7)) {
      *pbVar7 = 0;
    }
  }
  return;
}

