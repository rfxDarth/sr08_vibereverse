// rea decompile_all
// name: clear_record_field_run_validation_helper_at_bbf4
// address: 0x7fcbbf4
// body: available
// range: 0x7fcbbf4-0x7fcbc1f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void clear_record_field_run_validation_helper_at_bbf4(int request_argument)

{
  int iVar1;
  
  iVar1 = *(int *)(request_argument + 0x10);
  *(undefined2 *)(iVar1 + 10) = 0;
  iVar1 = attmdb_att_set_value(*(short *)(iVar1 + 6) + 0xc,1);
  if (iVar1 != 0) {
    *DAT_07fcbc20 = 200;
    *DAT_07fcbc24 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  return;
}

