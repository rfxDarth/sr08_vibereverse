// rea decompile_all
// name: scan_paired_bytes_until_lanes_are_at_8a54
// address: 0x7fc8a54
// body: available
// range: 0x7fc8a54-0x7fc8a75 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void scan_pair_table_until_terminator(byte *pairs)

{
  int iVar1;
  
  iVar1 = 0xfe;
  while( true ) {
    if (iVar1 == 0) {
      return;
    }
    if ((*pairs & pairs[1]) == 0xff) break;
    process_two_packed_input_bytes_update_at_8ad8();
    iVar1 = iVar1 + -1;
    pairs = pairs + 2;
  }
  return;
}

