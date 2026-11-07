/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fccf5c(byte *param_1,int param_2)

{
  ushort *puVar1;
  
  puVar1 = DAT_07fccf7c;
  for (; param_2 != 0; param_2 = param_2 + -1) {
    do {
    } while (-1 < (int)((uint)puVar1[10] << 0x1a));
    *puVar1 = (ushort)*param_1;
    do {
    } while (-1 < (int)((uint)puVar1[10] << 0x19));
    param_1 = param_1 + 1;
  }
  return;
}

