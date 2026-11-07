/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc57b0(uint param_1,ushort *param_2,int *param_3)

{
  int iVar1;
  int *piVar2;
  
  iVar1 = FUN_07fca05c(0xfd);
  if (param_3 == (int *)0x0) {
    *DAT_07fc5a54 = 200;
    *DAT_07fc5a58 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  if (param_2 == (ushort *)0x0) {
    *DAT_07fc5a54 = 200;
    *DAT_07fc5a58 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  piVar2 = (int *)(iVar1 + 0x10);
  do {
    piVar2 = (int *)*piVar2;
    if (piVar2 == (int *)0x0) {
      iVar1 = 0;
      *param_2 = 0;
      goto LAB_07fc57fc;
    }
  } while (*(byte *)(piVar2 + 1) != param_1);
  *param_2 = (ushort)*(byte *)((int)piVar2 + 5);
  iVar1 = (int)piVar2 + 6;
LAB_07fc57fc:
  *param_3 = iVar1;
  return;
}

