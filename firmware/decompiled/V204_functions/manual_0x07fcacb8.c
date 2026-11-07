/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


void FUN_07fcacb8(void)

{
  int iVar1;
  
  iVar1 = DAT_07fcad74;
  *(undefined1 *)(DAT_07fcad74 + 0x45) = 0x10;
  *(undefined4 *)(iVar1 + 0x40) = DAT_07fcaccc;
  return;
}

