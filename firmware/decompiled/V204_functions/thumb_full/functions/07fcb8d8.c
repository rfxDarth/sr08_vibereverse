/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcb8d8(void)

{
  undefined2 *puVar1;
  int iVar2;
  
  *DAT_07fcb908 = DAT_07fcb90c;
  *DAT_07fcb910 = (short)DAT_07fcb914;
  puVar1 = DAT_07fcb918;
  DAT_07fcb918[1] = DAT_07fcb918[1] & 0xfffb | 2;
  *DAT_07fcb91c = 99;
  iVar2 = DAT_07fcbbbc;
  *DAT_07fcb920 = *(undefined2 *)(DAT_07fcbbbc + 0x3e);
  *puVar1 = *(undefined2 *)(iVar2 + 0x3c);
  return;
}

