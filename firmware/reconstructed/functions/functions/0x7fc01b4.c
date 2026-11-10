// rea decompile_all
// name: allocate_stamp_release_clamp_timing_record_at_01b4
// address: 0x7fc01b4
// body: available
// range: 0x7fc01b4-0x7fc01e7 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 allocate_stamp_release_and_clamp_timing_record(undefined4 argument,int record)

{
  undefined2 uVar1;
  int iVar2;
  uint uVar3;
  
  iVar2 = atts_allocate_pdu(argument,3,0);
  uVar1 = gattm_get_max_mtu();
  *(undefined2 *)(iVar2 + 2) = uVar1;
  atts_send_pdu(iVar2);
  uVar3 = gattm_get_max_mtu();
  if (*(ushort *)(record + 2) <= uVar3) {
    uVar3 = (uint)*(ushort *)(record + 2);
  }
  gattc_set_mtu(argument,uVar3);
  return 0;
}

