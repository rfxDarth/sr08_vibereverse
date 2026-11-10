// rea decompile_all
// name: resolve_record_base_add_bit_offset_at_5db4
// address: 0x7fc5db4
// body: available
// range: 0x7fc5db4-0x7fc5dd5 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 set_attribute_value_from_measurement_record(undefined4 reserved_context,int attribute_record)

{
  int iVar1;
  
  iVar1 = find_keyed_record_value(0xfd);
  attmdb_att_set_value(*(short *)(attribute_record + 2) + *(short *)(iVar1 + 4),*(undefined2 *)(attribute_record + 4),0,
                  attribute_record + 6);
  return 0;
}

