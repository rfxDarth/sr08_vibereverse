// rea decompile_all
// name: create_empty_measurement_record
// address: 0x7fc6540
// body: available
// range: 0x7fc6540-0x7fc655f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 create_empty_measurement_record(undefined4 unused_abi_argument_1,undefined4 unused_abi_argument_2,undefined4 source_task,undefined4 destination_task)

{
  undefined1 *puVar1;
  
  puVar1 = (undefined1 *)ke_msg_alloc(0xe10,destination_task,source_task,6);
  *(undefined2 *)(puVar1 + 4) = 0;
  *(undefined2 *)(puVar1 + 2) = 0;
  *puVar1 = 1;
  ke_msg_send();
  return 0;
}

