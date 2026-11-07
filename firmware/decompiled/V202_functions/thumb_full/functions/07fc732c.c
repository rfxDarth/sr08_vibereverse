/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc732c(void)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = DAT_07fc76fc;
  *(undefined1 *)(DAT_07fc76fc + 0x1e) = 0;
  *(undefined1 *)(iVar3 + 0x1c) = 0;
  iVar2 = DAT_07fc73b4;
  iVar1 = DAT_07fc73ac;
  if (*(char *)(iVar3 + 0x1a) == '\0') {
    *(undefined1 *)(DAT_07fc73b4 + 0x3b) = 0;
    FUN_07fc7700(iVar2 + 0x1c);
    FUN_07fc7040(1,DAT_07fc73b0,iVar1 + 0xa7);
    FUN_07fc7040(0,iVar1,1000);
  }
  else {
    *(undefined1 *)(DAT_07fc73b4 + 0x3b) = 2;
    FUN_07fc7700(iVar2 + 0x1c);
    FUN_07fc78bc(*(undefined2 *)(iVar3 + 0x42));
    FUN_07fc7040(1,DAT_07fc73b0,iVar1 + 0xa7);
    FUN_07fc7040(0,iVar1,1000);
    FUN_07fc7700(iVar2 + 0x10);
  }
  FUN_07fc78d4(0x6a,2);
  return;
}

