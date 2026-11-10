// rea decompile_all
// name: replace_state_timer_with_600_delay
// address: 0x7fc2e50
// body: available
// range: 0x7fc2e50-0x7fc2e67 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void replace_state_timer_with_600_delay(void)

{
  int iVar1;
  undefined1 uVar2;
  
  iVar1 = DAT_07fc31f0;
  replace_occupied_slot_newly_allocated_initialized_at_3410(*(undefined1 *)(DAT_07fc31f0 + 9));
  uVar2 = store_item_in_first_free_registration_slot(600,DAT_07fc2e68);
  *(undefined1 *)(iVar1 + 9) = uVar2;
  return;
}

