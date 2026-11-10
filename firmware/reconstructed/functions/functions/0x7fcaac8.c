// rea decompile_all
// name: format_shared_value_and_set_flag_10_at_aac8
// address: 0x7fcaac8
// body: available
// range: 0x7fcaac8-0x7fcaae3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void format_display_value_from_shared_offset_11(void)

{
  int iVar1;
  
  iVar1 = DAT_07fcad74;
  convert_quotient_remainder_sequence_ring_s_at_3148(*(undefined1 *)(v204_shared_control_state_bytes_for_display_timing + 0xb),DAT_07fcad74 + 0x40,3,1);
  *(undefined1 *)(iVar1 + 0x45) = 0x10;
  return;
}

