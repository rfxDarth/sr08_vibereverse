// rea decompile_all
// name: process_indexed_payload_state
// address: 0x7fc11f8
// body: available
// range: 0x7fc11f8-0x7fc12c5 inclusive
// range: 0x7fc12e8-0x7fc1329 inclusive
// non_contiguous: true
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void process_indexed_payload_state(int param_1,int param_2,undefined4 param_3,uint param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  uint local_18;
  
  iVar3 = DAT_07fc12e4;
  iVar4 = param_1 * 4;
  local_18 = param_4;
  if (*(char *)(*(int *)(DAT_07fc12e4 + iVar4) + 0x48) == '$') {
    __aeabi_memcpy(*(int *)(*(int *)(DAT_07fc12e4 + iVar4) + 0x10) + 0x2e,param_2 + 5,0x10);
    *(undefined1 *)(*(int *)(iVar3 + iVar4) + 0x48) = 0x25;
    smpc_generate_f4(param_1,0);
  }
  if (*(char *)(*(int *)(iVar3 + iVar4) + 0x48) == '\f') {
    __aeabi_memcpy(*(int *)(*(int *)(iVar3 + iVar4) + 0x10) + 0x2e,param_2 + 5,0x10);
    iVar1 = *(int *)(*(int *)(iVar3 + iVar4) + 0x10);
    if ((int)((uint)*(byte *)(iVar1 + 0x5f) << 0x1c) < 0) {
      iVar1 = gapc_get_role(param_1);
      if (iVar1 == 1) {
        *(undefined1 *)(*(int *)(*(int *)(iVar3 + iVar4) + 0x10) + 0xc6) = 0;
        smpc_pdu_send(param_1,4,*(int *)(*(int *)(iVar3 + iVar4) + 0x10) + 0x1e);
        iVar3 = *(int *)(iVar3 + iVar4);
        if (*(char *)(*(int *)(iVar3 + 0x10) + 0x5e) == '\0') {
          *(undefined1 *)(iVar3 + 0x48) = 0x1b;
          smpc_generate_f5(param_1);
        }
        else {
          *(undefined1 *)(iVar3 + 0x48) = 0x1a;
          smpc_generate_g2(param_1,0);
        }
      }
      else {
        *(undefined1 *)(*(int *)(iVar3 + iVar4) + 0x48) = 7;
        smpc_generate_f4(param_1,0);
      }
      return;
    }
    iVar1 = memcmp(iVar1 + 0x1e,iVar1 + 0x2e,0x10);
    if (iVar1 == 0) {
      local_18._0_1_ = 4;
      smpc_pdu_send(param_1,5,&local_18);
      local_18 = CONCAT31(local_18._1_3_,(undefined1)local_18) | 0x60;
      uVar2 = gapc_get_role(param_1);
      smpc_pairing_end(param_1,uVar2,local_18 & 0xff,1);
      return;
    }
    *(undefined1 *)(*(int *)(iVar3 + iVar4) + 0x48) = 9;
    uVar2 = gapc_get_role(param_1);
    smpc_generate_e1(param_1,uVar2,0);
  }
  return;
}

