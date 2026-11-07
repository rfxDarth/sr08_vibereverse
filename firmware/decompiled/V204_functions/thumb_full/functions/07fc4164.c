/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


int FUN_07fc4164(void)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = *(uint *)(DAT_07fc43ec + 0xc);
  if (uVar1 + DAT_07fc41cc <= DAT_07fc41d0) {
    iVar2 = func_0x07f1dfb8(uVar1 * 0x11 + DAT_07fc41dc,DAT_07fc41e0);
    return iVar2 + 5;
  }
  if (uVar1 >> 5 < 0xe1) {
    iVar2 = func_0x07f1dfb8(uVar1 & 0xffff,0x2d0);
    return iVar2 + 0x14;
  }
  if (uVar1 >> 6 < 0xe1) {
    iVar2 = func_0x07f1dfb8(uVar1 & 0xffff,0x5a0);
    return iVar2 + 0x1e;
  }
  if (uVar1 <= DAT_07fc41d4) {
    iVar2 = func_0x07f1dfb8(DAT_07fc41d8 - uVar1 & 0xffff,600);
    return iVar2 + 0xf;
  }
  return 5;
}

