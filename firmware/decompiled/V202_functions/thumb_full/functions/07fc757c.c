/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc757c(void)

{
  ushort uVar1;
  int iVar2;
  int iVar3;
  short sVar4;
  
  iVar3 = DAT_07fc7950;
  iVar2 = DAT_07fc78b8;
  if (*(int *)(DAT_07fc78b8 + 0x50) == 1) {
    uVar1 = *(ushort *)(DAT_07fc78b8 + 0x54);
    if (uVar1 == 0) {
      sVar4 = *(short *)(DAT_07fc78b8 + 0x58);
      if (sVar4 == 0) goto LAB_07fc75ce;
    }
    else {
      if (uVar1 == DAT_07fc75e4) goto LAB_07fc75ce;
      sVar4 = *(short *)(DAT_07fc78b8 + 0x58);
    }
    *(ushort *)(DAT_07fc7950 + 0x42) = uVar1;
    *(short *)(iVar3 + 0x46) = sVar4;
    *(undefined2 *)(iVar3 + 0x44) = *(undefined2 *)(iVar2 + 0x56);
    *(undefined2 *)(iVar3 + 0x48) = *(undefined2 *)(iVar2 + 0x5a);
    FUN_07fca148(iVar2 + 0x54,8);
    *(undefined1 *)(iVar3 + 0x1b) = 0;
    *(undefined1 *)(iVar3 + 0x1a) = 1;
    return;
  }
LAB_07fc75ce:
  *(undefined2 *)(DAT_07fc7950 + 0x42) = 0;
  *(undefined2 *)(iVar3 + 0x48) = 0;
  *(undefined4 *)(iVar3 + 0x44) = 0;
  *(undefined1 *)(iVar3 + 0x1b) = 1;
  *(undefined1 *)(iVar3 + 0x1a) = 0;
  return;
}

