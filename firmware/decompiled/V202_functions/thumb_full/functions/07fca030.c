/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fca030(undefined4 param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  iVar1 = DAT_07fca140;
  iVar3 = DAT_07fca13c;
  for (iVar4 = 0x20; iVar4 != 0; iVar4 = iVar4 + -1) {
    iVar2 = iVar1;
    if ((*(char *)(iVar3 + 0x16) == -4) || (iVar2 = DAT_07fca144, *(char *)(iVar3 + 0x16) == -3)) {
      (**(code **)(iVar2 + 8))(iVar3,param_1);
    }
    iVar3 = iVar3 + 0x18;
  }
  return;
}

