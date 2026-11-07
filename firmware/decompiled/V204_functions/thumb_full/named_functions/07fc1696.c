/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc1696(void)

{
  int iVar1;
  
  ROM___aeabi_memcpy /* 0x07f1e0ac */(DAT_07fc16e8,DAT_07fc16e4,0x70);
  ROM___aeabi_memcpy /* 0x07f1e0ac */(DAT_07fc16ec,DAT_07fc16e4 + -0x38,0x38);
  iVar1 = DAT_07fc16e8;
  *(undefined4 *)(DAT_07fc16e8 + 0xa0) = DAT_07fc16f0;
  *(int *)(iVar1 + 0xa4) = DAT_07fc16e4 + -0x70;
  *(undefined4 *)(DAT_07fc16e8 + -0x20) = DAT_07fc16f4;
  return;
}

