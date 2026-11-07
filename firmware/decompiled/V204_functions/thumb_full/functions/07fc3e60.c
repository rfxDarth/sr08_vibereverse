/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc3e60(int param_1,uint param_2)

{
  if (param_1 == 0) {
    param_2 = *(uint *)(DAT_07fc4090 + 0x78) | param_2;
  }
  else {
    param_2 = *(uint *)(DAT_07fc4090 + 0x78) & ~param_2;
  }
  *(uint *)(DAT_07fc4090 + 0x78) = param_2;
  *(bool *)DAT_07fc3e88 = param_2 == 0;
  *(bool *)(DAT_07fc3e8c + 3) = param_2 == 0;
  return;
}

