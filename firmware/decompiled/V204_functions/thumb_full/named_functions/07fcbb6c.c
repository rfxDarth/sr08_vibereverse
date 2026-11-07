/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcbb6c(short param_1)

{
  ushort *puVar1;
  
  puVar1 = DAT_07fcbb8c;
  *DAT_07fcbb8c = *DAT_07fcbb8c & 0xfffe;
  *puVar1 = param_1 << 7 | (ushort)DAT_07fcbb90 & *puVar1;
  *puVar1 = *puVar1 | 1;
  return;
}

