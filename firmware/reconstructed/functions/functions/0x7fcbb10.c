// rea decompile_all
// name: poll_output_state_table_return_whether_at_bb10
// address: 0x7fcbb10
// body: available
// range: 0x7fcbb10-0x7fcbb31 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 poll_output_state_table_and_report_count_advance(void)

{
  uint uVar1;
  uint uVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  
  uVar1 = DAT_07fcbb34;
  uVar5 = 0;
  do {
    uVar4 = uVar1 + 1;
    if (uVar4 == uVar5) break;
    uVar2 = initialize_output_state_for_mode_five_hundred();
    uVar4 = uVar5;
    uVar5 = uVar5 + 1;
  } while ((uVar2 & 1) != 0);
  uVar3 = 0;
  if (uVar1 < uVar4) {
    uVar3 = 0xffffffff;
  }
  return uVar3;
}

