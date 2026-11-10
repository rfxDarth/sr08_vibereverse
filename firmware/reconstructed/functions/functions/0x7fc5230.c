// rea decompile_all
// name: prepare_stack_record_consumed_sensor_configuration_at_5230
// address: 0x7fc5230
// body: available
// range: 0x7fc5230-0x7fc5255 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void prepare_sensor_configuration_stack_record(void)

{
  undefined4 local_1c;
  undefined4 local_18;
  undefined2 local_14;
  undefined1 auStack_12 [10];
  
  __aeabi_memclr(auStack_12,10);
  local_14 = 0xbb;
  local_18 = DAT_07fc5258;
  local_1c = DAT_07fc525c;
  search_circular_record_queue_and_compact_if_needed(&local_1c);
  return;
}

