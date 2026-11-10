// rea decompile_all
// name: build_six_byte_event_header_fourteen_at_5038
// address: 0x7fc5038
// body: available
// range: 0x7fc5038-0x7fc506d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void build_event_header_and_fourteen_byte_scratch_area(undefined1 first,undefined1 second,undefined1 third,undefined1 fourth,
                 undefined1 fifth)

{
  undefined1 local_28;
  undefined1 local_27;
  undefined1 local_26;
  undefined1 local_25;
  undefined1 local_24;
  undefined1 local_23;
  undefined1 auStack_22 [14];
  
  *(undefined1 *)(v204_shared_context_bytes_for_step_accumulator + 2) = first;
  __aeabi_memclr(auStack_22,0xe);
  local_23 = fifth;
  local_28 = 0x24;
  local_27 = first;
  local_26 = second;
  local_25 = third;
  local_24 = fourth;
  search_queue_and_insert_limit_one(&local_28);
  return;
}

