// rea decompile_all
// name: store_mode_flag_and_copy_configuration_word
// address: 0x7fc3a18
// body: available
// range: 0x7fc3a18-0x7fc3a2d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void store_mode_flag_and_copy_configuration_word(undefined1 input)

{
  int iVar1;
  
  update_mode_flags_and_transitions(4);
  iVar1 = DAT_07fc3e00;
  *(undefined1 *)(DAT_07fc3e00 + 0xf) = input;
  *(undefined4 *)(iVar1 + 0x18) = *DAT_07fc3aa8;
  return;
}

