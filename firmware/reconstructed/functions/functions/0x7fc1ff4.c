// rea decompile_all
// name: reproduce_two_pulse_output_sequence_used_at_1ff4
// address: 0x7fc1ff4
// body: available
// range: 0x7fc1ff4-0x7fc203d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


int reproduce_two_pulse_output_sequence_used_at_1ff4(void)

{
  ushort *puVar1;
  int iVar2;
  int iVar3;
  uint3 local_18;
  undefined1 uStack_15;
  
  _local_18 = DAT_07fc2040;
  initialize_control_registers_encode_four_optional_at_2048(&local_18);
  c_countdown_loop_v204_timing_padding_at_20b4(0x14);
  puVar1 = DAT_07fc20a4;
  *DAT_07fc20a4 = (*DAT_07fc20a4 & (ushort)DAT_07fc2044) + 0x40;
  iVar2 = wait_for_state_flag_bit_one_to_clear_and_read_result();
  c_countdown_loop_v204_timing_padding_at_20b4(1);
  local_18 = (uint3)(ushort)local_18;
  initialize_control_registers_encode_four_optional_at_2048(&local_18);
  *puVar1 = (*puVar1 & (ushort)DAT_07fc2044) + 0x40;
  iVar3 = wait_for_state_flag_bit_one_to_clear_and_read_result();
  *puVar1 = 0;
  return iVar3 + iVar2;
}

