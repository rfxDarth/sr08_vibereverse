// rea decompile_all
// name: perform_flash_memory_operation
// address: 0x7fc3ea0
// body: available
// range: 0x7fc3ea0-0x7fc408f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


int perform_flash_memory_operation(undefined1 *buffer,uint flash_address,uint byte_count,int operation)

{
  undefined2 *puVar1;
  undefined1 uVar2;
  undefined2 uVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  char cVar10;
  undefined1 *puVar11;
  int local_2c;
  undefined2 local_24;
  uint local_18;
  
  *DAT_07fc4108 = 200;
  puVar1 = DAT_07fc4094;
  if (*(char *)(DAT_07fc4090 + 2) == '\0') {
    uVar3 = 1;
  }
  else {
    uVar3 = 8;
  }
  DAT_07fc4094[1] = uVar3;
  *puVar1 = uVar3;
  local_18 = 0;
  set_ring_s_output_mode_and_enable();
  update_mode_dependent_output_state_during_flash_transfer(0xab);
  if (operation == 1) {
    if ((*(char *)(DAT_07fc4090 + 0xe) == '\x01') && (iVar5 = read_record_flag_bit_zero(), iVar5 == 0)) {
L_perform_flash_memory_operation_at_07fc4032:
      initialize_shared_state_when_status_clear();
      cVar10 = -1;
      goto L_perform_flash_memory_operation_at_07fc408a;
    }
    set_ring_s_output_mode_and_enable(0);
    uVar9 = 0x800000 - flash_address;
    if (byte_count <= 0x800000 - flash_address) {
      uVar9 = byte_count;
    }
    local_24 = 1;
    local_18 = 0x100;
    local_2c = 0;
    uVar8 = 0;
    uVar6 = (flash_address + 0x100 & 0xffffff00) - 1;
    uVar7 = uVar9;
    while (uVar4 = local_2c, uVar8 < uVar9) {
      if (uVar6 < uVar7 + flash_address) {
        uVar7 = (uVar6 - flash_address) + 1;
      }
      uVar4 = map_record_flag_to_status_mask();
      if ((uVar4 != 0) || (uVar4 = drive_ring_s_output_state_machine(), uVar4 != 0)) break;
      set_ring_s_output_mode_and_enable(2);
      uVar3 = local_24;
      if (*(char *)(DAT_07fc4090 + 2) != '\0') {
        uVar3 = 8;
      }
      DAT_07fc4094[1] = uVar3;
      transfer_flash_controller_word(flash_address | 0x2000000);
      set_ring_s_output_mode_and_enable(0);
      uVar4 = uVar7;
      if (0xff < (uVar7 & 0xffff)) {
        uVar4 = local_18;
      }
      puVar11 = buffer + uVar8;
      for (; (uVar4 & 0xffff) != 0; uVar4 = uVar4 - 1) {
        transfer_flash_controller_word(*puVar11);
        puVar11 = puVar11 + 1;
      }
      if (*(char *)(DAT_07fc4090 + 2) == '\0') {
        uVar3 = 1;
      }
      else {
        uVar3 = 8;
      }
      *DAT_07fc4094 = uVar3;
      uVar4 = poll_output_state_table_and_report_count_advance();
      if (uVar4 != 0) break;
      uVar8 = uVar7 + uVar8;
      uVar7 = uVar9 - uVar8;
      flash_address = uVar6 + 1;
      uVar6 = uVar6 + 0x100;
    }
  }
  else if (operation == 0) {
    uVar4 = map_record_flag_to_status_mask();
    if (uVar4 == 0) {
      set_ring_s_output_mode_and_enable(2);
      if (*(char *)(DAT_07fc4090 + 2) == '\0') {
        uVar3 = 1;
      }
      else {
        uVar3 = 8;
      }
      DAT_07fc4094[1] = uVar3;
      transfer_flash_controller_word(flash_address | 0x3000000);
      set_ring_s_output_mode_and_enable(0);
      if (0x800000 < byte_count + flash_address) {
        byte_count = 0x800000 - flash_address;
      }
      for (; byte_count != 0; byte_count = byte_count - 1) {
        uVar2 = transfer_flash_controller_word(0);
        *buffer = uVar2;
        buffer = buffer + 1;
      }
      if (*(char *)(DAT_07fc439c + 2) == '\0') {
        uVar3 = 1;
      }
      else {
        uVar3 = 8;
      }
      *DAT_07fc4094 = uVar3;
      uVar4 = 0;
    }
  }
  else {
    if ((*(char *)(DAT_07fc439c + 0xe) == '\x01') && (iVar5 = read_record_flag_bit_zero(), iVar5 == 0))
    goto L_perform_flash_memory_operation_at_07fc4032;
    uVar9 = byte_count + DAT_07fc409c >> 0xc;
    if (uVar9 == 0) {
      uVar9 = 1;
    }
    flash_address = flash_address & DAT_07fc4098;
    uVar4 = 0xff;
    for (; uVar9 != 0; uVar9 = uVar9 - 1) {
      *DAT_07fc4108 = 200;
      uVar4 = map_record_flag_to_status_mask();
      if ((uVar4 != 0) || (uVar4 = drive_ring_s_output_state_machine(), uVar4 != 0)) break;
      set_ring_s_output_mode_and_enable(2);
      update_mode_dependent_output_state_during_flash_transfer(flash_address | 0x20000000);
      uVar4 = poll_output_state_table_and_report_count_advance();
      if (uVar4 != 0) break;
      flash_address = DAT_07fc409c + flash_address + 1;
      uVar4 = local_18;
    }
  }
  cVar10 = (char)uVar4;
  initialize_shared_state_when_status_clear();
L_perform_flash_memory_operation_at_07fc408a:
  return (int)cVar10;
}

