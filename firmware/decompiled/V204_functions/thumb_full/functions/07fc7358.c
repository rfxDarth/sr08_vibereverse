/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined1 FUN_07fc7358(uint param_1)

{
  int iVar1;
  int iVar2;
  
  iVar1 = -0x14;
  do {
    if (iVar1 == 0) {
      return 4;
    }
    iVar2 = _DAT_07fc737c + iVar1;
    iVar1 = iVar1 + 2;
  } while (*(byte *)(iVar2 + 0x7a) != param_1);
  return *(undefined1 *)(_DAT_07fc737c + iVar1 + 0x79);
}

