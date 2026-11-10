// rea decompile_all
// name: conditional_mode_updates_using_two_display_at_74a8
// address: 0x7fc74a8
// body: available
// range: 0x7fc74a8-0x7fc74d3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void conditional_mode_updates_using_two_display_at_74a8(uint param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  if ((param_1 & 0x1d) != 0) {
    emit_event_packet_when_active_mode_changes(*(undefined1 *)(DAT_07fc7520 + 0x2a));
  }
  if ((int)(param_1 << 0x1e) < 0) {
    build_event_header_and_fourteen_byte_scratch_area(*(undefined1 *)(DAT_07fc7520 + 0x2a),0,0,0,0,param_4);
  }
  return;
}

