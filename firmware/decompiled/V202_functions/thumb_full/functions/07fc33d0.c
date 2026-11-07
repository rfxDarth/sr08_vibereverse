/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


uint FUN_07fc33d0(undefined4 param_1,int param_2)

{
  int *piVar1;
  int iVar2;
  uint uVar3;
  
  uVar3 = 0;
  iVar2 = 0;
  piVar1 = DAT_07fc3440;
  do {
    if (iVar2 == 10) {
LAB_07fc33f6:
      return uVar3 & 0xff;
    }
    if (*piVar1 == 0) {
      *piVar1 = param_2;
      uVar3 = iVar2 + 1;
      FUN_07fc5754(uVar3 & 0xff,param_1);
      goto LAB_07fc33f6;
    }
    piVar1 = piVar1 + 1;
    iVar2 = iVar2 + 1;
  } while( true );
}

