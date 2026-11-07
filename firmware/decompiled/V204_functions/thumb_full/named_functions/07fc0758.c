/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined1 FUN_07fc0758(int param_1,uint param_2)

{
  uint uVar1;
  
  uVar1 = 0;
  while( true ) {
    if (param_2 <= uVar1) {
      return 0;
    }
    if (*(char *)(param_1 + uVar1 + 1) == '\x01') break;
    uVar1 = (uint)*(byte *)(param_1 + uVar1) + uVar1 + 1 & 0xffff;
  }
  return *(undefined1 *)(param_1 + uVar1 + 2);
}

