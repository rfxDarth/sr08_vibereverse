// rea decompile_all
// name: enqueue_ring_record_if_space
// address: 0x7fc2ea8
// body: available
// range: 0x7fc2ea8-0x7fc2ed5 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void enqueue_ring_record_if_space(uint *param_1)

{
  if ((param_1[2] - 1 & param_1[1] + ~*param_1) != 0) {
    __aeabi_memcpy(param_1[4] + param_1[3] * *param_1);
    *param_1 = param_1[2] - 1 & *param_1 + 1;
  }
  return;
}

