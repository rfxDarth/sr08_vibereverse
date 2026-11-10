// rea decompile_all
// name: initialize_dispatch_three_byte_request_packet_at_259c
// address: 0x7fc259c
// body: available
// range: 0x7fc259c-0x7fc25c1 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void initialize_and_dispatch_three_byte_request(undefined1 first,undefined1 second,undefined1 third)

{
  undefined1 local_28;
  undefined1 local_27;
  undefined1 local_26;
  undefined1 auStack_25 [17];
  
  __aeabi_memclr(auStack_25,0x11);
  local_28 = first;
  local_27 = second;
  local_26 = third;
  search_circular_record_queue_insert_missing_at_2f2c(&local_28,3);
  return;
}

