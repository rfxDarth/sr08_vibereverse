// rea decompile_all
// name: allocate_initialize_record_first_use_release_at_3254
// address: 0x7fc3254
// body: available
// range: 0x7fc3254-0x7fc32a5 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void allocate_initialize_record_first_use_release_at_3254(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 *puVar1;
  int iVar2;
  int *piVar3;
  
  iVar2 = *(int *)(DAT_07fc32a8 + param_1 * 4);
  piVar3 = (int *)(DAT_07fc32a8 + param_1 * 4);
  if (iVar2 == 0) {
    puVar1 = (undefined1 *)ke_msg_alloc(DAT_07fc32ac,param_1 * 0x100 + 10,4,0xe,param_4);
    *puVar1 = 9;
    *piVar3 = (int)puVar1;
    format_and_send_uart_message(s_rcp__d__d_07fc32b0,param_2,param_3);
    *(undefined2 *)(puVar1 + 0xc) = 0;
    *(undefined2 *)(puVar1 + 10) = 0;
    *(undefined2 *)(puVar1 + 8) = 600;
    *(undefined2 *)(puVar1 + 6) = 0;
    *(short *)(puVar1 + 2) = (short)param_2;
    *(short *)(puVar1 + 4) = (short)param_3;
    iVar2 = *piVar3;
  }
  ke_msg_send(iVar2);
  *piVar3 = 0;
  return;
}

