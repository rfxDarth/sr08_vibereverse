// rea decompile_all
// name: search_next_item_decoded_marker_matches_at_7284
// address: 0x7fc7284
// body: available
// range: 0x7fc7284-0x7fc72e9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


ushort search_next_item_decoded_marker_matches_at_7284(ushort param_1)

{
  int iVar1;
  undefined1 auStack_30 [8];
  char local_28 [4];
  ushort local_24 [8];
  
  iVar1 = attmdb_get_service();
  while( true ) {
    if ((param_1 < *(ushort *)(iVar1 + 4)) || (*(ushort *)(iVar1 + 6) < param_1)) {
      return 0;
    }
    attmdb_get_attribute(param_1,auStack_30);
    attmdb_get_uuid(auStack_30,local_28,local_24,0,0);
    if (((uint)local_24[0] == DAT_07fc72ec + 0xff) && (local_28[0] == '\x02')) break;
    if ((local_24[0] == DAT_07fc72ec) && (local_28[0] == '\x02')) {
      return 0;
    }
    param_1 = param_1 + 1;
  }
  return param_1;
}

