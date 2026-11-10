// rea decompile_all
// name: helper_walks_linked_list_returns_matching_at_57b8
// address: 0x7fc57b8
// body: available
// range: 0x7fc57b8-0x7fc5807 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void find_measurement_record_by_id(uint record_id,ushort *value_length_out,int *value_bytes_out)

{
  int iVar1;
  int *piVar2;
  
  iVar1 = find_keyed_record_value(0xfd);
  if (value_bytes_out == (int *)0x0) {
    *DAT_07fc5a5c = 200;
    *DAT_07fc5a60 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  if (value_length_out == (ushort *)0x0) {
    *DAT_07fc5a5c = 200;
    *DAT_07fc5a60 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  piVar2 = (int *)(iVar1 + 0x10);
  do {
    piVar2 = (int *)*piVar2;
    if (piVar2 == (int *)0x0) {
      iVar1 = 0;
      *value_length_out = 0;
      goto find_measurement_record_by_id_label_at_07fc5804;
    }
  } while (*(byte *)(piVar2 + 1) != record_id);
  *value_length_out = (ushort)*(byte *)((int)piVar2 + 5);
  iVar1 = (int)piVar2 + 6;
find_measurement_record_by_id_label_at_07fc5804:
  *value_bytes_out = iVar1;
  return;
}

