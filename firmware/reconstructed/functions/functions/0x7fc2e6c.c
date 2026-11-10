// rea decompile_all
// name: c_reconstruction_unit_measurement_update_at_2e6c
// address: 0x7fc2e6c
// body: available
// range: 0x7fc2e6c-0x7fc2e7f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void store_measurement_value_divided_by_1000(void)

{
  undefined4 uVar1;
  
  uVar1 = request_sensor_sample_then_scale_result();
  uVar1 = __aeabi_uidiv(uVar1,1000);
  *(undefined4 *)(DAT_07fc31f0 + 0x74) = uVar1;
  return;
}

