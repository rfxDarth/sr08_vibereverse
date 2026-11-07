/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc17bc(int param_1)

{
  *(ushort *)(_DAT_07fc1808 + 8) =
       *(ushort *)(_DAT_07fc1808 + 8) & 0xff00 |
       (ushort)(((uint)(byte)*(undefined2 *)(_DAT_07fc1804 + 0x16) *
                 (0x800 - (param_1 - ((*(ushort *)(_DAT_07fc1804 + 0x18) & 0x7fff) >> 8)) *
                          (((*(ushort *)(_DAT_07fc1808 + 8) & 0x1fff) >> 7) + 9) & 0xffff) & 0x7ffff
                ) >> 0xb);
  return;
}

