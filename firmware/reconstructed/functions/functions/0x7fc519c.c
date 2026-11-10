// rea decompile_all
// name: build_sensor_command_packet_acquiring_shared_at_519c
// address: 0x7fc519c
// body: available
// range: 0x7fc519c-0x7fc51f1 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void build_sensor_command_packet_acquiring_shared_at_519c(void)

{
  int *piVar1;
  undefined4 uVar2;
  undefined1 local_28;
  undefined1 local_27;
  undefined1 local_26;
  undefined1 auStack_25 [6];
  undefined1 local_1f;
  undefined1 local_1e;
  undefined1 local_1d;
  undefined1 local_1c;
  undefined1 local_1b;
  undefined1 local_1a;
  undefined1 local_19;
  undefined4 local_18;
  
  piVar1 = DAT_07fc51f4;
  *DAT_07fc51f4 = 1;
  local_28 = 0xc;
  do {
  } while (*piVar1 != 0);
  uVar2 = *DAT_07fc51f8;
  copy_six_profile_bytes_from_offsets_two_to_seven(auStack_25);
  local_1a = (undefined1)((uint)uVar2 >> 8);
  local_1b = (undefined1)uVar2;
  local_19 = (undefined1)((uint)uVar2 >> 0x10);
  local_1c = 0;
  local_1d = 0x17;
  local_1e = 0;
  local_1f = 1;
  local_26 = 0;
  local_27 = 0xcc;
  local_18 = crc32_update_buffer(DAT_07fc51fc,&local_27,0xf);
  search_circular_record_queue_and_compact_if_needed(&local_28);
  return;
}

