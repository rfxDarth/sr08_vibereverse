/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc54b4(void)

{
  int iVar1;
  
  FUN_07fc3e90(0x2e000,0x10000);
  FUN_07fc3e90(0x4c000,0x15000);
  iVar1 = DAT_07fc5668;
  ROM___aeabi_memclr /* 0x07f1e0de */(DAT_07fc5668,0xd4);
  *(undefined1 *)(iVar1 + 0x8a) = 0x32;
  *(undefined1 *)(iVar1 + 0x89) = 0xaa;
  *(undefined2 *)(iVar1 + 0x94) = 0x3200;
  *(undefined2 *)(iVar1 + 0x36) = 0x3e;
  return;
}

