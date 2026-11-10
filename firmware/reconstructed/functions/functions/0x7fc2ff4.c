// rea decompile_all
// name: submit_display_code_record_for_fd
// address: 0x7fc2ff4
// body: available
// range: 0x7fc2ff4-0x7fc3027 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void submit_display_code_record_for_fd(void)

{
  undefined1 uVar1;
  undefined1 *puVar2;
  
  puVar2 = (undefined1 *)ke_msg_alloc(v204_display_code_record_message_id,9,4,0x18);
  *puVar2 = 0x1b;
  uVar1 = search_display_code_table_from_minus20_to_zero(0xfd);
  *(undefined2 *)(puVar2 + 0x14) = 0;
  *(undefined4 *)(puVar2 + 0xc) = 0;
  *(undefined4 *)(puVar2 + 0x10) = 0;
  *(undefined4 *)(puVar2 + 4) = 4;
  *(undefined2 *)(puVar2 + 2) = 0xfd;
  puVar2[1] = uVar1;
  ke_msg_send(puVar2);
  return;
}

