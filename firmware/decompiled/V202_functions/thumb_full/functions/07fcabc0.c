/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fcabc0(int param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0x10);
  *(undefined2 *)(iVar1 + 10) = 0;
  iVar1 = func_0x07f1003a(*(short *)(iVar1 + 6) + 0xc,1);
  if (iVar1 != 0) {
    *DAT_07fcabec = 200;
    *DAT_07fcabf0 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  return;
}

