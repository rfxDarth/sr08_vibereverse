// rea decompile_all
// name: halt_if_rom_table_record_operation_fails
// address: 0x7fcc118
// body: available
// range: 0x7fcc118-0x7fcc147 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 set_attribute_value_and_halt_on_failure(undefined4 unused_callback_argument,undefined4 value_buffer)

{
  int iVar1;
  
  iVar1 = find_keyed_record_value(0xfc);
  iVar1 = attmdb_att_set_value(*(short *)(iVar1 + 6) + 6,4,0,value_buffer);
  if (iVar1 != 0) {
    *DAT_07fcc48c = 200;
    *DAT_07fcc490 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  return 0;
}

