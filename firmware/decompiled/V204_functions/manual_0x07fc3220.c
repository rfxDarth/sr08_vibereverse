/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc3220(int param_1)

{
  undefined1 *puVar1;
  
  puVar1 = (undefined1 *)func_0x07f1bbb0(_DAT_07fc3250,param_1 * 0x100 + 10,4,2);
  *(undefined1 *)(_DAT_07fc33e0 + param_1 * 0xe + 0x5b) = 0;
  puVar1[1] = 0x13;
  *puVar1 = 1;
  func_0x07f1bbe2();
  return;
}

