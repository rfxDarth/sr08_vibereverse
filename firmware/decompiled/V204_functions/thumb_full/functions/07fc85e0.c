/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc85e0(void)

{
  short sVar1;
  short sVar2;
  short sVar3;
  int iVar4;
  undefined2 uVar5;
  short sVar6;
  char cVar7;
  
  uVar5 = FUN_07fc833c(1);
  iVar4 = DAT_07fc88cc;
  *(undefined2 *)(DAT_07fc88cc + 0x3e) = uVar5;
  uVar5 = FUN_07fc856c(1);
  *(undefined2 *)(iVar4 + 0x40) = uVar5;
  cVar7 = '\0';
  FUN_07fc833c(0);
  FUN_07fc856c(0);
  sVar2 = *(short *)(iVar4 + 0x40);
  sVar1 = *(short *)(iVar4 + 0x3e);
  if (sVar2 == 0 && sVar1 == 0) {
    *(undefined1 *)(iVar4 + 0x1b) = 0;
    cVar7 = *(char *)(iVar4 + 0x1d);
  }
  else if (*(char *)(iVar4 + 0x1d) != '\0') {
    if (sVar1 == sVar2) {
      cVar7 = '\x01';
      goto LAB_07fc8658;
    }
    *(undefined1 *)(iVar4 + 0x1b) = 1;
    sVar3 = *(short *)(iVar4 + 0x46);
    cVar7 = *(char *)(iVar4 + 0x19);
    sVar6 = sVar3;
    if (cVar7 == '\0') {
      sVar6 = sVar2;
    }
    *(int *)(DAT_07fc88dc + 0x38) = (int)sVar1 - (int)sVar6;
    if ((cVar7 == '\x01') && ((int)sVar2 < sVar3 + -0x32)) {
      *(short *)(iVar4 + 0x46) = sVar2;
    }
    cVar7 = '\x01';
  }
  if (sVar1 != sVar2) {
    return;
  }
LAB_07fc8658:
  if (((cVar7 == '\0') && (sVar1 != 0)) && (*(char *)(iVar4 + 0x19) != '\0')) {
    FUN_07fc8850(0x9c,7);
    FUN_07fc8850(0x70,0);
    *(undefined1 *)(iVar4 + 0x1d) = 1;
  }
  return;
}

