// rea decompile_all
// name: schedule_callback_in_slot_eleven
// address: 0x7fcc9c8
// body: available
// range: 0x7fcc9c8-0x7fcc9fd inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void schedule_callback_in_slot_eleven(void)

{
  undefined4 uVar1;
  undefined1 *puVar2;
  
  format_and_send_uart_message(DAT_07fcca00,s_vtimer_enable_hid_timer_handler_07fcca04,0x77);
  uVar1 = prf_get_task_from_id(0x26);
  puVar2 = (undefined1 *)ke_msg_alloc(0x2600,uVar1,4,4);
  *(short *)(puVar2 + 2) = (short)DAT_07fcca24;
  *puVar2 = 0;
  ke_msg_send();
  update_indexed_delay_entry_if_changed(0xb,DAT_07fcca28);
  return;
}

