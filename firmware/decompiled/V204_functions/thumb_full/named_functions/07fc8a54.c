/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc8a54(byte *param_1)

{
  int iVar1;
  
  iVar1 = 0xfe;
  while( true ) {
    if (iVar1 == 0) {
      return;
    }
    if ((*param_1 & param_1[1]) == 0xff) break;
    FUN_07fc8ad8();
    iVar1 = iVar1 + -1;
    param_1 = param_1 + 2;
  }
  return;
}

