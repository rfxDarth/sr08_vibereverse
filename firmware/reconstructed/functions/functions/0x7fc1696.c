// rea decompile_all
// name: copy_two_initialized_state_blocks_install_at_1696
// address: 0x7fc1696
// body: available
// range: 0x7fc1696-0x7fc16c5 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void copy_two_initialized_state_blocks_and_install_pointers(void)

{
  int iVar1;
  
  __aeabi_memcpy(DAT_07fc16e8,DAT_07fc16e4,0x70);
  __aeabi_memcpy(DAT_07fc16ec,DAT_07fc16e4 + -0x38,0x38);
  iVar1 = DAT_07fc16e8;
  *(undefined4 *)(DAT_07fc16e8 + 0xa0) = DAT_07fc16f0;
  *(int *)(iVar1 + 0xa4) = DAT_07fc16e4 + -0x70;
  *(undefined4 *)(DAT_07fc16e8 + -0x20) = DAT_07fc16f4;
  return;
}

