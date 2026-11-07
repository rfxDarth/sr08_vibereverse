/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc7660(void)

{
  short sVar1;
  short sVar2;
  short sVar3;
  int iVar4;
  undefined2 uVar5;
  short sVar6;
  char cVar7;
  
  uVar5 = FUN_07fc73b8(1);
  iVar4 = DAT_07fc7950;
  *(undefined2 *)(DAT_07fc7950 + 0x3e) = uVar5;
  uVar5 = FUN_07fc75ec(1);
  *(undefined2 *)(iVar4 + 0x40) = uVar5;
  cVar7 = '\0';
  FUN_07fc73b8(0);
  FUN_07fc75ec(0);
  sVar2 = *(short *)(iVar4 + 0x40);
  sVar1 = *(short *)(iVar4 + 0x3e);
  if (sVar2 == 0 && sVar1 == 0) {
    *(undefined1 *)(iVar4 + 0x1c) = 0;
    cVar7 = *(char *)(iVar4 + 0x1e);
  }
  else if (*(char *)(iVar4 + 0x1e) != '\0') {
    if (sVar1 == sVar2) {
      cVar7 = '\x01';
      goto LAB_07fc76d8;
    }
    *(undefined1 *)(iVar4 + 0x1c) = 1;
    sVar3 = *(short *)(iVar4 + 0x46);
    cVar7 = *(char *)(iVar4 + 0x1a);
    sVar6 = sVar3;
    if (cVar7 == '\0') {
      sVar6 = sVar2;
    }
    *(int *)(DAT_07fc7960 + 0x30) = (int)sVar1 - (int)sVar6;
    if ((cVar7 == '\x01') && ((int)sVar2 < sVar3 + -0x32)) {
      *(short *)(iVar4 + 0x46) = sVar2;
    }
    cVar7 = '\x01';
  }
  if (sVar1 != sVar2) {
    return;
  }
LAB_07fc76d8:
  if (((cVar7 == '\0') && (sVar1 != 0)) && (*(char *)(iVar4 + 0x1a) != '\0')) {
    FUN_07fc78d4(0x9c,7);
    FUN_07fc78d4(0x70,0);
    *(undefined1 *)(iVar4 + 0x1e) = 1;
  }
  return;
}

