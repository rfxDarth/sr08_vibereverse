// rea decompile_all
// name: dispatch_callback_table_profile_14
// address: 0x7fc3564
// body: available
// range: 0x7fc3564-0x7fc357f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void dispatch_callback_table_profile_14(undefined4 key,undefined4 first_context,undefined4 second_context,undefined4 third_context,
                 undefined4 result)

{
  search_callback_table_invoke_matching_handler_at_40a0(key,first_context,third_context,second_context,result,DAT_07fc3580,0xe,third_context);
  return;
}

