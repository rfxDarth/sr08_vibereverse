// rea decompile_all
// name: select_fast_rom_write_allocate_initialize_at_575c
// address: 0x7fc575c
// body: available
// range: 0x7fc575c-0x7fc57a3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void select_fast_rom_write_allocate_initialize_at_575c(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined1 *puVar2;
  
  iVar1 = DAT_07fc57a8;
  if ((((int)((uint)*DAT_07fc57a4 << 0x18) < 0) && (-1 < *DAT_07fc57ac << 0x10)) &&
     ((*DAT_07fc57b0 & 1) == 0)) {
    ke_timer_set(DAT_07fc57a8 + param_1 + 2,4,param_2);
    return;
  }
  set_pending_flag_while_preserving_caller_at_5260();
  puVar2 = (undefined1 *)ke_msg_alloc(iVar1,4,4,8);
  *(undefined4 *)(puVar2 + 4) = param_2;
  *puVar2 = (char)param_1;
  ke_msg_send();
  return;
}

