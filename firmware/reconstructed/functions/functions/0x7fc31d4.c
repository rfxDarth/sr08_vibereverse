// rea decompile_all
// name: reset_transition_state_and_store_scaled_value
// address: 0x7fc31d4
// body: available
// range: 0x7fc31d4-0x7fc31ed inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void reset_transition_state_and_store_scaled_value(void)

{
  int iVar1;
  undefined4 uVar2;
  
  uVar2 = request_sensor_sample_then_scale_result();
  iVar1 = DAT_07fc3340;
  *(undefined1 *)(DAT_07fc3340 + 0x30) = 0;
  *(undefined1 *)(iVar1 + 0x2c) = 0xff;
  *(undefined4 *)(v204_shared_state_bytes_for_slot_helpers + 0x3c) = uVar2;
  return;
}

