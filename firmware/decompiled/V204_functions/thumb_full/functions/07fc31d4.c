/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc31d4(void)

{
  int iVar1;
  undefined4 uVar2;
  
  uVar2 = FUN_07fc4440();
  iVar1 = _DAT_07fc3340;
  *(undefined1 *)(_DAT_07fc3340 + 0x30) = 0;
  *(undefined1 *)(iVar1 + 0x2c) = 0xff;
  *(undefined4 *)(_DAT_07fc33e0 + 0x3c) = uVar2;
  return;
}

