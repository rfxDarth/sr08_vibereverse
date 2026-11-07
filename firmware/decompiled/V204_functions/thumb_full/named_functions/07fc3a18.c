/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc3a18(undefined1 param_1)

{
  int iVar1;
  
  FUN_07fc3a38(4);
  iVar1 = DAT_07fc3e00;
  *(undefined1 *)(DAT_07fc3e00 + 0xf) = param_1;
  *(undefined4 *)(iVar1 + 0x18) = *DAT_07fc3aa8;
  return;
}

