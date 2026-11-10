// rea decompile_all
// name: c_xor_veneer_target_s_register_at_1a2a
// address: 0x7fc1a2a
// body: available
// range: 0x7fc1a2a-0x7fc1a31 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void c_xor_veneer_target_s_register_at_1a2a(undefined4 first,uint second)

{
  add_v204_software_float_values(first,second ^ 0x80000000);
  return;
}

