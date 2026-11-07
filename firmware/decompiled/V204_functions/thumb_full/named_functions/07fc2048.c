/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc2048(byte *param_1)

{
  ushort *puVar1;
  
  puVar1 = DAT_07fc20a4;
  *DAT_07fc20a4 = (ushort)DAT_07fc20a8;
  puVar1[1] = 0;
  *DAT_07fc20ac = 0x40;
  DataSynchronizationBarrier(0xf);
  InstructionSynchronizationBarrier(0xf);
  if (param_1 != (byte *)0x0) {
    *puVar1 = (ushort)*param_1 << 0xb | (ushort)DAT_07fc20b0 & *puVar1;
    *puVar1 = (ushort)param_1[1] << 6 | *puVar1 & (short)DAT_07fc244c + 0x40U;
    *puVar1 = (ushort)param_1[2] << 10 | (ushort)DAT_07fc2448 & *puVar1;
    puVar1[1] = 9;
    puVar1[1] = (ushort)param_1[3] << 1 | puVar1[1] & 0xfffd;
  }
  return;
}

