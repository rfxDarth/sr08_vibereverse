// rea decompile_all
// name: write_indexed_timing_record
// address: 0x7fccf38
// body: available
// range: 0x7fccf38-0x7fccf55 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


int write_indexed_timing_record(int slot_index,undefined4 timing_value,undefined4 data_word)

{
  undefined4 uVar1;
  int iVar2;
  
  iVar2 = DAT_07fccf58;
  *(undefined2 *)(DAT_07fccf58 + slot_index * 0x10) = 0x101;
  iVar2 = iVar2 + slot_index * 0x10;
  *(undefined4 *)(iVar2 + 0xc) = data_word;
  *(undefined4 *)(iVar2 + 4) = timing_value;
  uVar1 = request_sensor_sample_then_scale_result();
  *(undefined4 *)(iVar2 + 8) = uVar1;
  return slot_index;
}

