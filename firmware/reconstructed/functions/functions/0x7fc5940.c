// rea decompile_all
// name: drain_linked_record_list_clear_record_at_5940
// address: 0x7fc5940
// body: available
// range: 0x7fc5940-0x7fc5967 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void drain_linked_record_list_and_clear_head(int record_argument)

{
  int iVar1;
  int *piVar2;
  
  iVar1 = *(int *)(record_argument + 0x10);
  piVar2 = (int *)(iVar1 + 0x10);
  while (*piVar2 != 0) {
    co_list_pop_front(piVar2);
    ke_free();
  }
  *(undefined4 *)(record_argument + 0x10) = 0;
  ke_free(iVar1);
  return;
}

