/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc334c(int param_1)

{
  undefined1 *puVar1;
  int iVar2;
  
  iVar2 = _DAT_07fc339c + param_1 * 0x7a;
  FUN_07fc31f8(param_1,*(undefined1 *)(iVar2 + 0x7a));
  puVar1 = (undefined1 *)func_0x07fc5f38(param_1);
  *puVar1 = 1;
  puVar1[0x11] = *(undefined1 *)(iVar2 + 0x1e);
  func_0x07f1e0ac(puVar1 + 1,iVar2 + 4,0x10);
  func_0x07fc33a4(param_1);
  iVar2 = _DAT_07fc33e0;
  if (*(char *)(_DAT_07fc33e0 + 100) != '\0') {
    return;
  }
  FUN_07fccf38(0xb,1,_DAT_07fc33a0);
  *(undefined1 *)(iVar2 + 100) = 1;
  return;
}

