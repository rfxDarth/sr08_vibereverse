/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc8c64(void)

{
  *DAT_07fc8c88 = 0x8000;
  DataSynchronizationBarrier(0xf);
  InstructionSynchronizationBarrier(0xf);
  *DAT_07fc8c8c = *DAT_07fc8c8c & 0xfffe;
  FUN_07fc3e60(1,2);
  return;
}

