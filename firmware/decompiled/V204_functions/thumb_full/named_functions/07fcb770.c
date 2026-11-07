/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcb770(int *param_1)

{
  byte local_24;
  byte local_23;
  byte local_22;
  byte local_21;
  byte local_20;
  byte local_1f;
  byte local_1c;
  byte local_1b;
  byte local_1a;
  byte local_19;
  byte local_18;
  byte local_17;
  
  FUN_07fc7f68(2,&local_1c,6);
  FUN_07fc7f68(8,&local_24,6);
  *param_1 = (uint)local_1b * 0x100 + (uint)local_1c + (uint)local_1a * 0x10000;
  param_1[1] = (uint)local_18 * 0x100 + (uint)local_19 + (uint)local_17 * 0x10000;
  param_1[2] = (uint)local_23 * 0x100 + (uint)local_24 + (uint)local_22 * 0x10000;
  param_1[3] = (uint)local_20 * 0x100 + (uint)local_21 + (uint)local_1f * 0x10000;
  return;
}

