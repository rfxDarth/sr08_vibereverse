/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined8 FUN_07fc5d2c(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  short sVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 local_18;
  
  local_18 = param_4;
  iVar3 = FUN_07fca05c(0xfd);
  sVar1 = *(short *)(iVar3 + 4);
  sVar2 = *(short *)(param_2 + 2);
  iVar4 = func_0x07f1bf1a(param_3);
  if (iVar4 == 1) {
    uVar5 = 2;
  }
  else {
    iVar4 = FUN_07fc6d80(sVar2 + sVar1);
    if (iVar4 == 0) {
      *DAT_07fc5da4 = 200;
      *DAT_07fc5da8 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    iVar4 = FUN_07fc5a80(iVar4,&local_18);
    if (iVar4 != 0) {
      *DAT_07fc5da4 = 200;
      *DAT_07fc5da8 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    uVar5 = 1;
    func_0x07f1beb6(param_3,1);
    *(undefined1 *)(iVar3 + 0xc) = 0;
    *(int *)(iVar3 + 8) = param_2 + -0xc;
    *(char *)(iVar3 + 0xd) = (char)local_18;
    FUN_07fc5960();
  }
  return CONCAT44(param_2,uVar5);
}

