// rea decompile_all
// name: compare_sample_timestamp_update_record_dispatch_at_118a
// address: 0x7fc118a
// body: available
// range: 0x7fc118a-0x7fc11f7 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void compare_sample_timestamp_update_record_dispatch_at_118a(int param_1,int param_2)

{
  short sVar1;
  short sVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  
  iVar3 = DAT_07fc12dc;
  iVar5 = param_1 * 4;
  iVar4 = *(int *)(*(int *)(DAT_07fc12dc + iVar5) + 4);
  sVar1 = *(short *)(param_2 + 6);
  lld_evt_schedule_next();
  sVar2 = *(short *)(iVar4 + 0x72);
  if (((ushort)(sVar1 - sVar2) < DAT_07fc12e0) && (sVar2 != sVar1)) {
    lld_ch_map_ind(*(undefined4 *)(*(int *)(iVar3 + iVar5) + 4),sVar1);
    __aeabi_memcpy(*(int *)(iVar3 + iVar5) + 0x1f,param_2 + 1,5);
    ke_state_set(param_1 * 0x100 + 1U & 0xffff,5);
    return;
  }
  __aeabi_memcpy(*(int *)(iVar3 + iVar5) + 0x1f,param_2 + 1,5);
  llc_map_update_ind(*(undefined2 *)(iVar4 + 0x68));
  return;
}

