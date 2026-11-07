/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc7ce4(void)

{
  *DAT_07fc7d08 = 0x8000;
  DataSynchronizationBarrier(0xf);
  InstructionSynchronizationBarrier(0xf);
  *DAT_07fc7d0c = *DAT_07fc7d0c & 0xfffe;
  FUN_07fc3db8(1,2);
  return;
}

