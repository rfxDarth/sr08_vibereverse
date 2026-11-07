/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


void FUN_07fcaa4c(void)

{
  int iVar1;
  
  iVar1 = DAT_07fcad74 + (*(byte *)(DAT_07fcade8 + 0x30) & 3);
  *(undefined1 *)(iVar1 + 0x40) = 0x53;
  *(undefined1 *)(iVar1 + 0x41) = 0x65;
  return;
}

