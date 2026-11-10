// rea decompile_all
// name: scan_five_masked_records_dispatch_entries_at_58fc
// address: 0x7fc58fc
// body: available
// range: 0x7fc58fc-0x7fc593f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void scan_five_masked_records_and_dispatch_entries(undefined4 param_1,uint param_2)

{
  uint uVar1;
  undefined4 *puVar2;
  uint uVar3;
  
  uVar1 = DAT_07fc5c40;
  if (param_2 < 8) {
    puVar2 = DAT_07fc5c38;
    for (uVar3 = 1; puVar2 = puVar2 + 5, uVar3 != 6; uVar3 = uVar3 + 1) {
      if (((0x2aU >> (uVar3 & 0xff) & 1) != 0) && (*(ushort *)*puVar2 == uVar1)) {
        replace_byte_in_variable_length_record_at_index(param_2,uVar3 & 0xff,0);
      }
    }
    return;
  }
  *DAT_07fc5cb4 = 200;
  *DAT_07fc5cb8 = 8;
  do {
                    /* WARNING: Do nothing block with infinite loop */
  } while( true );
}

