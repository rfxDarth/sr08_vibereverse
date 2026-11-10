// rea decompile_all
// name: recovered_behavior_select_two_bit_status_at_1d10
// address: 0x7fc1d10
// body: available
// range: 0x7fc1d10-0x7fc1d3d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void update_status_slots_for_group_bit(int group,uint bit,ushort low,ushort high,int alternate)

{
  int iVar1;
  
  iVar1 = DAT_07fc1d40;
  if (group == 3) {
    group = 4;
  }
  group = group * 0x20;
  if (alternate == 0) {
    *(short *)(DAT_07fc1d40 + group + 2) = (short)(1 << (bit & 0xff));
  }
  else {
    *(short *)(group + DAT_07fc1d40) = (short)(1 << (bit & 0xff));
  }
  *(ushort *)(iVar1 + bit * 2 + group + 4) = high | low;
  return;
}

