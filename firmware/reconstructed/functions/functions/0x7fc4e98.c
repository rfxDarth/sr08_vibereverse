// rea decompile_all
// name: handle_record_flag_and_queue_sensor_configuration
// address: 0x7fc4e98
// body: available
// range: 0x7fc4e98-0x7fc4f25 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void handle_record_flag_and_queue_sensor_configuration(void)

{
  int iVar1;
  int iVar2;
  undefined4 local_28;
  undefined4 local_24;
  undefined1 local_20;
  undefined1 auStack_1f [11];
  
  iVar2 = read_current_record_value_byte();
  if ((iVar2 == 1) && (*(char *)(v204_shared_context_bytes_for_step_accumulator + 1) != '\x01')) {
    __aeabi_memclr(auStack_1f,0xb);
    local_20 = 0;
    local_24 = DAT_07fc4f2c;
    local_28 = 0xf6;
    search_queue_and_insert_limit_twenty(&local_28);
    __aeabi_memclr((int)&local_28 + 1,0x13);
    local_28 = CONCAT31(local_28._1_3_,0xf6);
    copy_six_profile_bytes_from_offsets_two_to_seven((int)&local_28 + 1);
    search_queue_and_insert_limit_twenty(&local_28);
    build_sensor_command_packet_acquiring_shared_at_519c();
    prepare_sensor_configuration_stack_record();
    queue_computed_status_records();
    iVar1 = DAT_07fc5028;
    if (*(char *)(DAT_07fc5028 + 0x20) == '\x01') {
      initialize_and_dispatch_three_byte_request(0xb,*(undefined1 *)(DAT_07fc4f30 + 0xb),*(undefined1 *)(DAT_07fc5028 + 0x28));
    }
    *(undefined1 *)(iVar1 + 0x35) = 1;
    *DAT_07fc4f30 = 0;
    *(undefined2 *)(iVar1 + 0x36) = 0x600;
  }
  *(char *)(v204_shared_context_bytes_for_step_accumulator + 1) = (char)iVar2;
  return;
}

