// rea decompile_all
// name: enqueue_ring_record_overwriting_oldest
// address: 0x7fc2ed6
// body: available
// range: 0x7fc2ed6-0x7fc2efb inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void enqueue_ring_record_overwriting_oldest(uint *queue,undefined4 source_record)

{
  if ((queue[2] - 1 & queue[1] + ~*queue) == 0) {
    advance_queue_tail_if_nonempty(queue);
  }
  enqueue_ring_record_if_space(queue,source_record);
  return;
}

