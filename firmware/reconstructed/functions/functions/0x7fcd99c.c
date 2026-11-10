// rea decompile_all
// name: applies_pending_record_operation_item_while_at_d99c
// address: 0x7fcd99c
// body: available
// range: 0x7fcd99c-0x7fcd9c1 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 applies_pending_record_operation_item_while_at_d99c(int items,uint count)

{
  undefined4 uVar1;
  uint uVar2;
  
  uVar2 = 0;
  uVar1 = 0;
  if (*(int *)(v204_record_operation_config + 4) != 0) {
    for (; uVar2 < count; uVar2 = uVar2 + 1 & 0xff) {
      update_sensor_signal_state_from_sample(*(undefined4 *)(items + uVar2 * 4));
    }
    uVar1 = 1;
  }
  return uVar1;
}

