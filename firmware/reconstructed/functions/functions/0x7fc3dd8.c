// rea decompile_all
// name: copy_three_signed_coordinate_values_display_at_3dd8
// address: 0x7fc3dd8
// body: available
// range: 0x7fc3dd8-0x7fc3dff inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void copy_three_signed_coordinates_to_display_state(undefined2 *x,undefined2 *y,short *angle)

{
  int iVar1;
  
  *angle = -*angle;
  iVar1 = DAT_07fc3e00;
  *(undefined2 *)(DAT_07fc3e00 + 0xce) = *x;
  *(undefined2 *)(iVar1 + 0xd0) = *y;
  *(short *)(iVar1 + 0xd2) = *angle;
  enqueue_ring_record_overwriting_oldest(DAT_07fc3e04 + 0x5c,angle);
  return;
}

