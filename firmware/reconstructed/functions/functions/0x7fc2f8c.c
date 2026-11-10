// rea decompile_all
// name: advance_queue_tail_if_nonempty
// address: 0x7fc2f8c
// body: available
// range: 0x7fc2f8c-0x7fc2fa3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void advance_queue_tail_if_nonempty(int *queue)

{
  if ((queue[2] - 1U & *queue - queue[1]) != 0) {
    queue[1] = queue[2] - 1U & queue[1] + 1U;
  }
  return;
}

