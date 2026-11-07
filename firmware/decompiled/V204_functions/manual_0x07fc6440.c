/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fc6440(undefined4 param_1,undefined1 *param_2,undefined4 param_3,uint param_4)

{
  *(undefined1 *)(_DAT_07fc64a4 + (param_4 >> 8) * 0x7a + 0x7a) = *param_2;
  return 0;
}

