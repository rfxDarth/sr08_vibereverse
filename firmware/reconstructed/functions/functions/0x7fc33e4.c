// rea decompile_all
// name: scan_ten_registration_slots_store_item_at_33e4
// address: 0x7fc33e4
// body: available
// range: 0x7fc33e4-0x7fc340d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


uint store_item_in_first_free_registration_slot(undefined4 value,int item)

{
  int *piVar1;
  int iVar2;
  uint uVar3;
  
  uVar3 = 0;
  iVar2 = 0;
  piVar1 = v204_registration_slot_literals.view.registration_slot_values;
  do {
    if (iVar2 == 10) {
store_item_in_first_free_registration_slot_label_at_07fc340a:
      return uVar3 & 0xff;
    }
    if (*piVar1 == 0) {
      *piVar1 = item;
      uVar3 = iVar2 + 1;
      select_fast_rom_write_allocate_initialize_at_575c(uVar3 & 0xff,value);
      goto store_item_in_first_free_registration_slot_label_at_07fc340a;
    }
    piVar1 = piVar1 + 1;
    iVar2 = iVar2 + 1;
  } while( true );
}

