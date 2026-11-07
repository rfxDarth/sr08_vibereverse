/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fce014(void)

{
  undefined4 *puVar1;
  
  *DAT_07fce04c = 6;
  puVar1 = DAT_07fce050;
  *DAT_07fce050 = 0x8000;
  DataSynchronizationBarrier(0xf);
  InstructionSynchronizationBarrier(0xf);
  *puVar1 = 2;
  DataSynchronizationBarrier(0xf);
  InstructionSynchronizationBarrier(0xf);
  *puVar1 = 1;
  DataSynchronizationBarrier(0xf);
  InstructionSynchronizationBarrier(0xf);
  _DAT_50000000 = 0;
  enableIRQinterrupts();
  return;
}

