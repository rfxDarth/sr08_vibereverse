// rea decompile_all
// name: copy_scaled_payload_slice_on_mask_hit_at_2fcc
// address: 0x7fc2fcc
// body: available
// range: 0x7fc2fcc-0x7fc2ff3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 copy_scaled_payload_slice_on_mask_hit_at_2fcc(int *record,undefined4 destination)

{
  undefined4 uVar1;
  
  uVar1 = 0;
  if ((record[2] - 1U & *record - record[1]) == 0) {
    uVar1 = 0xffffffff;
  }
  else {
    __aeabi_memcpy(destination,record[4] + record[3] * record[1]);
  }
  return uVar1;
}

