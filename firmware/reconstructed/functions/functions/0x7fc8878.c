// rea decompile_all
// name: apply_range_mode_validity_checks_preserving_at_8878
// address: 0x7fc8878
// body: available
// range: 0x7fc8878-0x7fc88c9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 apply_range_mode_validity_checks_preserving_at_8878(void)

{
  int iVar1;
  undefined4 uVar2;
  
  uVar2 = v204_radio_range_literal_pool.view.default_range_value;
  iVar1 = v204_radio_range_literal_pool.view.device_control_state_bytes;
  if ((*(char *)(v204_radio_range_literal_pool.view.device_control_state_bytes + 0x1b) == '\x01') &&
     (((*(short *)(v204_radio_range_literal_pool.view.device_control_state_bytes + 0x46) < v204_radio_range_literal_pool.view.minimum_range_value ||
       (v204_radio_range_literal_pool.view.maximum_range_value < *(short *)(v204_radio_range_literal_pool.view.device_control_state_bytes + 0x46))) || (*(char *)(v204_radio_range_literal_pool.view.device_control_state_bytes + 0x13) != '\'')
      ))) {
    *(undefined4 *)(DAT_07fc8c34 + 0x38) = v204_radio_range_literal_pool.view.default_range_value;
  }
  if ((*(char *)(iVar1 + 0x19) != '\x01') || (*(char *)(iVar1 + 0x1a) == '\x01')) {
    *(undefined4 *)(DAT_07fc8c34 + 0x38) = uVar2;
  }
  if ((*(short *)(iVar1 + 0x42) != 0) && (*(short *)(iVar1 + 0x42) != 0x1fe)) {
    return *(undefined4 *)(DAT_07fc8c34 + 0x38);
  }
  *(undefined4 *)(DAT_07fc8c34 + 0x38) = uVar2;
  return uVar2;
}

