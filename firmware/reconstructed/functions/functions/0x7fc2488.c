// rea decompile_all
// name: feature_state_gate_recovered_v204_thumb_at_2488
// address: 0x7fc2488
// body: available
// range: 0x7fc2488-0x7fc24c5 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void gate_mode_activation_on_sensor_flags(int mode)

{
  uint uVar1;
  uint uVar2;
  
  uVar1 = ensure_radio_profile_then_exchange_word(0x2a);
  uVar2 = ensure_radio_profile_then_exchange_word(0x2b);
  if (mode == 2) {
    if (((uVar1 & 1) != 0) && ((uVar2 & 0x40) == 0)) goto gate_mode_activation_on_sensor_flags_label_at_07fc24b6;
  }
  else if ((mode == 1) && (((uVar1 & 1) == 0 && ((int)(uVar2 << 0x19) < 0)))) {
gate_mode_activation_on_sensor_flags_label_at_07fc24b6:
    update_mode_flags_and_transitions(0x8000000);
    update_mode_flags_and_transitions(0x4000000);
    return;
  }
  return;
}

