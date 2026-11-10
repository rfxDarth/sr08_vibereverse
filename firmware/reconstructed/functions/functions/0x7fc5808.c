// rea decompile_all
// name: populate_measurement_record_if_empty
// address: 0x7fc5808
// body: available
// range: 0x7fc5808-0x7fc5843 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 populate_measurement_record_if_empty(undefined4 reserved_context,int sample,undefined4 measurement_id)

{
  int iVar1;
  short *psVar2;
  
  iVar1 = ke_state_get(measurement_id);
  if (iVar1 == 0) {
    iVar1 = find_keyed_record_value(0xfd);
    psVar2 = (short *)ke_msg_alloc(DAT_07fc5844,8,measurement_id,6);
    psVar2[1] = *(short *)(sample + 4);
    *(undefined1 *)(psVar2 + 2) = *(undefined1 *)(sample + 6);
    *psVar2 = *(short *)(sample + 2) + *(short *)(iVar1 + 4);
    ke_msg_send();
  }
  return 0;
}

