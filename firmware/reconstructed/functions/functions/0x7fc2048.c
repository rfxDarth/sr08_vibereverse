// rea decompile_all
// name: initialize_control_registers_encode_four_optional_at_2048
// address: 0x7fc2048
// body: available
// range: 0x7fc2048-0x7fc20a3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void initialize_control_registers_encode_four_optional_at_2048(byte *param_1)

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

