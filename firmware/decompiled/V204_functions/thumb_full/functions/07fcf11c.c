/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fcf11c(void)

{
  undefined4 *puVar1;
  
  *DAT_07fcf154 = 6;
  puVar1 = DAT_07fcf158;
  *DAT_07fcf158 = 0x8000;
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

