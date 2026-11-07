/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc7ad8(byte *param_1)

{
  int iVar1;
  
  iVar1 = 0xfe;
  while( true ) {
    if (iVar1 == 0) {
      return;
    }
    if ((*param_1 & param_1[1]) == 0xff) break;
    FUN_07fc7b5c();
    iVar1 = iVar1 + -1;
    param_1 = param_1 + 2;
  }
  return;
}

