// rea decompile_all
// name: initialize_output_state_halfwords_around_shared_at_bb94
// address: 0x7fcbb94
// body: available
// range: 0x7fcbb94-0x7fcbbb9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void update_mode_dependent_output_state_during_flash_transfer(void)

{
  int iVar1;
  undefined2 *puVar2;
  undefined2 uVar3;
  undefined2 uVar4;
  
  puVar2 = DAT_07fcbbc0;
  iVar1 = DAT_07fcbbbc;
  uVar4 = 8;
  uVar3 = 8;
  if (*(char *)(DAT_07fcbbbc + 2) == '\0') {
    uVar3 = 1;
  }
  DAT_07fcbbc0[1] = uVar3;
  transfer_flash_controller_word();
  if (*(char *)(iVar1 + 2) == '\0') {
    uVar4 = 1;
  }
  *puVar2 = uVar4;
  return;
}

