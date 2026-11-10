// rea decompile_all
// name: reset_related_capture_sensor_state_control_at_4fc8
// address: 0x7fc4fc8
// body: available
// range: 0x7fc4fc8-0x7fc501d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void reset_related_capture_sensor_state_control_at_4fc8(int param_1)

{
  char *pcVar1;
  int iVar2;
  
  pcVar1 = DAT_07fc5020;
  if ((((param_1 != 1) || (*DAT_07fc5020 != '\0')) && (param_1 == 0)) && (*DAT_07fc5020 == '\x01'))
  {
    update_mode_flags_and_transitions(DAT_07fc5024);
    iVar2 = DAT_07fc5028;
    if (*(char *)(DAT_07fc5028 + 0xc) != '\x16') {
      switch_display_state_and_run_hooks(0);
    }
    *(undefined2 *)(iVar2 + 0x42) = 0;
    pcVar1[0xc4] = '\0';
    pcVar1[1] = '\0';
    pcVar1[0x12] = '\0';
    pcVar1[0x11] = '\0';
    iVar2 = DAT_07fc502c;
    *(undefined2 *)(DAT_07fc502c + 0xe) = 0xffff;
    *(undefined2 *)(iVar2 + 0xc) = 0xffff;
    *(undefined2 *)(iVar2 + 10) = 500;
  }
  *pcVar1 = (char)param_1;
  format_and_send_uart_message(s_c__d_07fc5030,param_1);
  return;
}

