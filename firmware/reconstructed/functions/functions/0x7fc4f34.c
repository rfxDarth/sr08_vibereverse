// rea decompile_all
// name: advance_display_timing_serialize_changed_interval_at_4f34
// address: 0x7fc4f34
// body: available
// range: 0x7fc4f34-0x7fc4f9d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void advance_display_timing_and_serialize_interval_changes(int param_1,int param_2)

{
  int iVar1;
  undefined1 auStack_1f [15];
  
  iVar1 = v204_shared_context_bytes_for_step_accumulator;
  *(int *)(v204_shared_context_bytes_for_step_accumulator + 0x38) = *(int *)(v204_shared_context_bytes_for_step_accumulator + 0x38) + param_1;
  __aeabi_memclr(auStack_1f,0xf);
  if ((((int)((uint)*(byte *)(iVar1 + 0x14) << 0x1c) < 0) && (*(byte *)(iVar1 + 0x10) < 5)) &&
     ((1 << (uint)*(byte *)(iVar1 + 0x10) & 0x16U) != 0)) {
    *(int *)(iVar1 + 0x2c) = *(int *)(iVar1 + 0x2c) + param_1;
    search_queue_and_insert_limit_one();
  }
  *(uint *)(DAT_07fc4fc4 + 0x70) = *(uint *)(DAT_07fc4fc4 + 0x70) | 2;
  if (param_2 != 0) {
    *(int *)(iVar1 + 0x3c) = *(int *)(iVar1 + 0x3c) + param_1;
  }
  queue_computed_status_records();
  return;
}

