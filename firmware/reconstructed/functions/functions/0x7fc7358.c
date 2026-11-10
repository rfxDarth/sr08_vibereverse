// rea decompile_all
// name: search_paired_display_code_table_offset_at_7358
// address: 0x7fc7358
// body: available
// range: 0x7fc7358-0x7fc737b inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined1 search_display_code_table_from_minus20_to_zero(uint mode)

{
  int iVar1;
  int iVar2;
  
  iVar1 = -0x14;
  do {
    if (iVar1 == 0) {
      return 4;
    }
    iVar2 = v204_shared_state_bytes_for_packet_display_helpers + iVar1;
    iVar1 = iVar1 + 2;
  } while (*(byte *)(iVar2 + 0x7a) != mode);
  return *(undefined1 *)(v204_shared_state_bytes_for_packet_display_helpers + iVar1 + 0x79);
}

