// rea decompile_all
// name: send_four_adjacent_field_updates_through_at_7fcc
// address: 0x7fc7fcc
// body: available
// range: 0x7fc7fcc-0x7fc7fff inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void send_four_adjacent_field_updates_through_at_7fcc(char param_1,uint param_2,uint param_3,undefined4 param_4)

{
  code *pcVar1;
  
  pcVar1 = DAT_07fc8000;
  (*DAT_07fc8000)(param_1 + -99,param_2 >> 5 & 0xff,param_3,param_4,param_4);
  (*pcVar1)(param_1 + -0x60,0);
  (*pcVar1)(param_1 + -0x5b,param_3 >> 5 & 0xff);
  (*pcVar1)(param_1 + -0x58,0);
  return;
}

