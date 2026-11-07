/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc8018(int param_1)

{
  byte bVar1;
  
  if (param_1 == 0) {
    bVar1 = 0x7c;
  }
  else {
    bVar1 = 0x7f;
  }
  *(byte *)(DAT_07fc803c + 5) = ~bVar1;
  FUN_07fc8680();
  FUN_07fc82b0();
  *(undefined1 *)(DAT_07fc832c + 0x11) = 1;
  return;
}

