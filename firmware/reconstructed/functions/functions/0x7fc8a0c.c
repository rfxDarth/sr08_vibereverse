// rea decompile_all
// name: exchange_one_radio_word
// address: 0x7fc8a0c
// body: available
// range: 0x7fc8a0c-0x7fc8a51 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined1 exchange_one_radio_word(undefined2 command_value)

{
  undefined2 *puVar1;
  ushort *puVar2;
  uint uVar3;
  undefined1 uVar4;
  
  wait_for_status_mask_0x02_set_minimum_8();
  puVar1 = DAT_07fc8b14;
  *DAT_07fc8b14 = command_value;
  wait_for_status_mask_0x02_set_minimum_8();
  *puVar1 = 0x100;
  wait_for_status_mask_0x04_set_minimum_32();
  puVar2 = DAT_07fc8b18;
  if ((DAT_07fc8b18[0x16] & 1) == 0) {
    uVar3 = wait_for_any_status_bit_or_elapsed_200(*DAT_07fc8b18);
    uVar4 = (undefined1)*puVar1;
  }
  else {
    format_and_send_uart_message(DAT_07fc8b1c,0x76,1);
    uVar3 = (uint)*puVar2;
    uVar4 = 0;
  }
  wait_for_status_mask_0x04_set_minimum_32(uVar3);
  wait_for_status_mask_0x20_clear_minimum_8();
  return uVar4;
}

