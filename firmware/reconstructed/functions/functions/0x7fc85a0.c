// rea decompile_all
// name: read_three_callback_values_between_mode_at_85a0
// address: 0x7fc85a0
// body: available
// range: 0x7fc85a0-0x7fc85db inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


int read_three_callback_values_between_mode_at_85a0(undefined4 first_index,int second_index)

{
  code *pcVar1;
  short sVar2;
  short sVar3;
  uint uVar4;
  
  send_device_command_pair(0x35,8);
  pcVar1 = DAT_07fc85dc;
  uVar4 = (*DAT_07fc85dc)(second_index - 1U & 0xff);
  sVar2 = (*pcVar1)(second_index);
  sVar3 = (*pcVar1)(first_index);
  send_device_command_pair(0x35,0);
  return (int)(short)(sVar2 * 0x10 + (short)(uVar4 >> 4) + sVar3 * 0x1000);
}

