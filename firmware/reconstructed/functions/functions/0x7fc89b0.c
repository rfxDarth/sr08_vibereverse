// rea decompile_all
// name: fill_hardware_fifo_optionally_report_state_at_89b0
// address: 0x7fc89b0
// body: available
// range: 0x7fc89b0-0x7fc8a09 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void fill_hardware_fifo_optionally_report_state_at_89b0(undefined2 command,undefined1 *destination,uint byte_count)

{
  undefined2 uVar1;
  undefined2 *puVar2;
  undefined2 *puVar3;
  uint uVar4;
  
  wait_for_status_mask_0x02_set_minimum_8();
  puVar2 = DAT_07fc8b14;
  *DAT_07fc8b14 = command;
  for (uVar4 = 0; uVar4 < byte_count; uVar4 = uVar4 + 1) {
    wait_for_status_mask_0x02_set_minimum_8();
    *puVar2 = 0x100;
  }
  wait_for_status_mask_0x04_set_minimum_32();
  puVar3 = DAT_07fc8b18;
  if ((DAT_07fc8b18[0x16] & 1) != 0) {
    format_and_send_uart_message(DAT_07fc8b1c,0x9e,1);
  }
  uVar1 = *puVar3;
  for (uVar4 = 0; uVar4 < byte_count; uVar4 = uVar4 + 1) {
    wait_for_any_status_bit_or_elapsed_200();
    uVar1 = *puVar2;
    *destination = (char)uVar1;
    destination = destination + 1;
  }
  wait_for_status_mask_0x04_set_minimum_32(uVar1);
  wait_for_status_mask_0x20_clear_minimum_8();
  return;
}

