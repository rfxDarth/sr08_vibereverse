/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fcb924(void)

{
  ushort *puVar1;
  
  puVar1 = DAT_07fcb95c;
  _DAT_40000074 = (_DAT_40000074 & 0xffe0ffff) + 0x20000;
  _DAT_40000000 = _DAT_40000000 & 0xfffffff8;
  *DAT_07fcb95c = *DAT_07fcb95c & 0xfffd | 1;
  *puVar1 = *puVar1 | 8;
  FUN_07fcb8d8();
  return;
}

