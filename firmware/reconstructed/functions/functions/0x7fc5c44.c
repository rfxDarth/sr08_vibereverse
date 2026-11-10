// rea decompile_all
// name: replace_byte_in_variable_length_record_at_index
// address: 0x7fc5c44
// body: available
// range: 0x7fc5c44-0x7fc5cb1 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void replace_byte_in_variable_length_record_at_index(uint param_1,undefined4 param_2,undefined1 param_3)

{
  undefined1 auStack_24 [8];
  int local_1c;
  short local_18 [2];
  
  if (7 < param_1) {
    *DAT_07fc5dac = 200;
    *DAT_07fc5db0 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  find_measurement_record_by_id(param_2,local_18,&local_1c);
  if (local_18[0] != 0) {
    if (local_1c != 0) {
      __aeabi_memcpy(auStack_24,local_1c,local_18[0]);
      auStack_24[param_1] = param_3;
      upsert_variable_length_list_record(param_2,local_18[0],auStack_24);
      return;
    }
    *DAT_07fc5dac = 200;
    *DAT_07fc5db0 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  *DAT_07fc5dac = 200;
  *DAT_07fc5db0 = 8;
  do {
                    /* WARNING: Do nothing block with infinite loop */
  } while( true );
}

