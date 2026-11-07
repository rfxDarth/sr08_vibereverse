/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc57b8(uint param_1,ushort *param_2,int *param_3)

{
  int iVar1;
  int *piVar2;
  
  iVar1 = FUN_07fcb080(0xfd);
  if (param_3 == (int *)0x0) {
    *DAT_07fc5a5c = 200;
    *DAT_07fc5a60 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  if (param_2 == (ushort *)0x0) {
    *DAT_07fc5a5c = 200;
    *DAT_07fc5a60 = 8;
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
      goto LAB_07fc5804;
    }
  } while (*(byte *)(piVar2 + 1) != param_1);
  *param_2 = (ushort)*(byte *)((int)piVar2 + 5);
  iVar1 = (int)piVar2 + 6;
LAB_07fc5804:
  *param_3 = iVar1;
  return;
}

