// rea decompile_all
// name: replace_occupied_slot_newly_allocated_initialized_at_3410
// address: 0x7fc3410
// body: available
// range: 0x7fc3410-0x7fc3451 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void replace_occupied_slot_newly_allocated_initialized_at_3410(int slot_index,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined1 *puVar3;
  int *piVar4;
  
  iVar1 = v204_registration_slot_literals.view.registration_slot_sentinel;
  if (slot_index - 1U < 10) {
    piVar4 = (int *)(slot_index * 4 + v204_registration_slot_literals.view.registration_slot_values + -4);
    iVar2 = *piVar4;
    if ((iVar2 != 0) && (iVar2 != v204_registration_slot_literals.view.registration_slot_sentinel)) {
      ke_timer_clear(slot_index + v204_registration_slot_literals.view.registration_event_id_base + 1,4,param_3,param_4,param_4);
      *piVar4 = iVar1;
      puVar3 = (undefined1 *)ke_msg_alloc(v204_registration_slot_literals.view.registration_event_id_base,4,4,8);
      *puVar3 = (char)slot_index;
      ke_msg_send();
    }
  }
  return;
}

