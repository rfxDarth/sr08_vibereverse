// rea decompile_all
// name: publish_per_slot_state_byte
// address: 0x7fc31f8
// body: available
// range: 0x7fc31f8-0x7fc321b inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void publish_per_slot_state_byte(int slot_index,undefined1 state_value)

{
  int iVar1;
  
  iVar1 = ke_msg_alloc(v204_per_slot_state_record_type,slot_index * 0x100 + 10,4,0x2c);
  *(undefined1 *)(iVar1 + 0x28) = state_value;
  *(undefined1 *)(iVar1 + 0x29) = 1;
  ke_msg_send();
  return;
}

