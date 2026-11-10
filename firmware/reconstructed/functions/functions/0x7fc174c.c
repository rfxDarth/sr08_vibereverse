// rea decompile_all
// name: configure_interrupt_registers_and_optional_mode
// address: 0x7fc174c
// body: available
// range: 0x7fc174c-0x7fc17bb inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void configure_interrupt_registers_and_optional_mode(int mode)

{
  int iVar1;
  
  *DAT_07fc17f8 = 0x100;
  DataSynchronizationBarrier(0xf);
  InstructionSynchronizationBarrier(0xf);
  *DAT_07fc17fc = 0x100;
  *DAT_07fc1800 = *DAT_07fc1800 & 0xffffff00 | 0x40;
  DAT_07fc17f8[-0x20] = 0x100;
  iVar1 = DAT_07fc17f4;
  *(ushort *)(DAT_07fc17f4 + 2) = (*(ushort *)(DAT_07fc17f4 + 2) & 0xfff9) + 4;
  *(ushort *)(iVar1 + 2) = *(ushort *)(iVar1 + 2) | 1;
  *(ushort *)(iVar1 + 2) = *(ushort *)(iVar1 + 2) | 0x38;
  *(ushort *)(iVar1 + 2) = *(ushort *)(iVar1 + 2) & 0xffbf;
  if (mode == 1) {
    *(ushort *)(iVar1 + 2) = *(ushort *)(iVar1 + 2) | 0x600;
    *(ushort *)(iVar1 + 2) = *(ushort *)(iVar1 + 2) | 0x100;
    *(ushort *)(iVar1 + 2) = *(ushort *)(iVar1 + 2) | 0x3800;
    *(ushort *)(iVar1 + 2) = *(ushort *)(iVar1 + 2) & 0xbfff;
  }
  return;
}

