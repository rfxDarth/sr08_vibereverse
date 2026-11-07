/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


void FUN_07fc5654(void)

{
  char cVar1;
  
  cVar1 = *(char *)(DAT_07fc5668 + 0x95) + '\n';
  if ('d' < cVar1) {
    cVar1 = '\n';
  }
  *(char *)(DAT_07fc5668 + 0x95) = cVar1;
  return;
}

