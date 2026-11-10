// rea decompile_all
// name: build_publish_compact_sensor_request_record_at_3220
// address: 0x7fc3220
// body: available
// range: 0x7fc3220-0x7fc324d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void build_and_publish_compact_sensor_request_record(int index)

{
  undefined1 *puVar1;
  
  puVar1 = (undefined1 *)ke_msg_alloc(DAT_07fc3250,index * 0x100 + 10,4,2);
  *(undefined1 *)(v204_shared_state_bytes_for_slot_helpers + index * 0xe + 0x5b) = 0;
  puVar1[1] = 0x13;
  *puVar1 = 1;
  ke_msg_send();
  return;
}

