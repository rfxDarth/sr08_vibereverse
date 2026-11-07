/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


uint FUN_07fc33e4(undefined4 param_1,int param_2)

{
  int *piVar1;
  int iVar2;
  uint uVar3;
  
  uVar3 = 0;
  iVar2 = 0;
  piVar1 = DAT_07fc3454;
  do {
    if (iVar2 == 10) {
LAB_07fc340a:
      return uVar3 & 0xff;
    }
    if (*piVar1 == 0) {
      *piVar1 = param_2;
      uVar3 = iVar2 + 1;
      FUN_07fc575c(uVar3 & 0xff,param_1);
      goto LAB_07fc340a;
    }
    piVar1 = piVar1 + 1;
    iVar2 = iVar2 + 1;
  } while( true );
}

