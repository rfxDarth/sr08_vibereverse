// rea decompile_all
// name: v204_bytes_decompiler_level_c_behavior_at_1144
// address: 0x7fc1144
// body: available
// range: 0x7fc0346-0x7fc0349 inclusive
// range: 0x7fc0adc-0x7fc0add inclusive
// range: 0x7fc1144-0x7fc1189 inclusive
// non_contiguous: true
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 dispatch_l2cap_and_smp_received_pdu(undefined4 message,char *pdu,uint destination,undefined4 source_argument)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = ke_state_get(destination);
  uVar2 = 0;
  if ((iVar1 == 0x3f) || (*(short *)(pdu + 8) != 6)) {
    uVar2 = l2cc_pdu_recv_ind_handler_func(message,pdu,destination,source_argument);
  }
  else if (iVar1 << 0x1c < 0) {
    uVar2 = 2;
  }
  else if (*pdu == '\0') {
    smpc_pdu_recv(destination >> 8,pdu + 6);
  }
  return uVar2;
}

