// rea decompile_all
// name: copy_ring_buffer_entry_if_index_available
// address: 0x7fc2fa4
// body: available
// range: 0x7fc2fa4-0x7fc2fcb inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void copy_ring_buffer_entry_if_index_available(int *queue,uint index,undefined4 destination)

{
  if (index < (*queue - queue[1] & queue[2] - 1U)) {
    __aeabi_memcpy(destination,queue[4] + queue[3] * (queue[2] - 1U & queue[1] + index),
                    queue[3]);
  }
  return;
}

