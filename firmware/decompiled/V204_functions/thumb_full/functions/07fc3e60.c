/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc3e60(int clear_mask, uint bit_mask)

{
  if (clear_mask == 0) {
    bit_mask = *(uint *)(DAT_07fc4090 + 0x78) | bit_mask;
  }
  else {
    bit_mask = *(uint *)(DAT_07fc4090 + 0x78) & ~bit_mask;
  }
  *(uint *)(DAT_07fc4090 + 0x78) = bit_mask;
  *(bool *)DAT_07fc3e88 = bit_mask == 0;
  *(bool *)(DAT_07fc3e8c + 3) = bit_mask == 0;
  return;
}

