/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fc6458(undefined4 param_1,byte *param_2,undefined4 param_3,uint param_4)

{
  if (*(char *)(_DAT_07fc64a0 + (param_4 >> 8) * 0xe + 99) == '\0') {
    if (*(short *)(_DAT_07fc64a4 + 0x14) != (ushort)((ushort)param_2[1] * 0x100 + (ushort)*param_2))
    goto LAB_07fc6496;
  }
  else if ((*(short *)param_2 == 0) &&
          ((*(byte *)(_DAT_07fc64a4 + (param_4 >> 8) * 0x7a + 2) & 1) == 0)) {
LAB_07fc6496:
    FUN_07fc33c0();
    return 0;
  }
  FUN_07fc334c();
  return 0;
}

