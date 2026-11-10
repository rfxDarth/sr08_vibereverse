// rea decompile_all
// name: build_dispatch_byte_record_used_operation_at_3b58
// address: 0x7fc3b58
// body: available
// range: 0x7fc3b58-0x7fc3b77 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void enqueue_typed_operation_record(undefined1 input)

{
  undefined1 local_24;
  undefined1 local_23;
  undefined1 auStack_22 [18];
  
  __aeabi_memclr(auStack_22,0x12);
  local_24 = 6;
  local_23 = input;
  advance_ring_s_queue_and_submit_entry(&local_24);
  return;
}

