// rea decompile_all
// name: update_motion_sample_history_and_activity_flags
// address: 0x7fc41e4
// body: available
// range: 0x7fc41e4-0x7fc438b inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void update_motion_sample_history_and_activity_flags(int param_1,int param_2,int param_3,int param_4,int param_5)

{
  int iVar1;
  char cVar2;
  bool bVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  
  iVar1 = DAT_07fc438c;
  iVar4 = param_1 - *(short *)(DAT_07fc438c + 0x34);
  uVar6 = iVar4 >> 0x1f;
  uVar6 = iVar4 + uVar6 ^ uVar6;
  uVar7 = DAT_07fc4390;
  iVar4 = param_2;
  if (uVar6 < 0x12d) {
    if (uVar6 < 0xfb) goto L_update_motion_sample_history_and_activity_flags_at_07fc42ae;
  }
  else if (DAT_07fc4390 + 0xc9 < (uint)(param_5 - *(int *)(DAT_07fc438c + 0x78))) {
    iVar5 = find_keyed_record_value(0x26);
    uVar7 = DAT_07fc4390;
    *(int *)(iVar1 + 0x78) = param_5;
    if ((*(char *)(DAT_07fc4434 + 0x12) != '\0') && ((*(ushort *)(iVar5 + 6) & 0xc0) == 0xc0)) {
      cVar2 = *(char *)(DAT_07fc4434 + 0x11);
      iVar4 = 1;
      if (cVar2 == '\x02') {
        *(undefined1 *)(iVar1 + 0x21) = 1;
        iVar5 = DAT_07fc4394;
        *(undefined4 *)(DAT_07fc4394 + 0x24) = 0;
        *(undefined4 *)(iVar5 + 0x28) = 0;
        store_item_in_first_free_registration_slot(1,DAT_07fc4398);
        cVar2 = *(char *)(DAT_07fc4434 + 0x11);
        uVar7 = DAT_07fc4390;
      }
      if (cVar2 == '\x01') {
        *(char *)(iVar1 + 0x20) = (char)iVar4;
        iVar5 = DAT_07fc4394;
        *(undefined4 *)(DAT_07fc4394 + 0x24) = 0;
        *(undefined4 *)(iVar5 + 0x28) = 0;
        store_item_in_first_free_registration_slot(1,DAT_07fc4398);
        uVar7 = DAT_07fc4390;
      }
    }
  }
  if ((uVar7 + 1 < (uint)(param_5 - *(int *)(iVar1 + 0x74))) &&
     (*(int *)(iVar1 + 0x74) = param_5, *(char *)(DAT_07fc439c + 0xc) == '\x10')) {
    initialize_and_dispatch_three_byte_request(6,2,0,param_3,iVar4);
    uVar7 = DAT_07fc4390;
  }
L_update_motion_sample_history_and_activity_flags_at_07fc42ae:
  *(short *)(iVar1 + 0x34) = (short)param_1;
  if (uVar7 < (uint)(param_5 - *(int *)(iVar1 + 0x68))) {
    iVar4 = param_2 - *(short *)(iVar1 + 0x2e);
    uVar7 = iVar4 >> 0x1f;
    uVar7 = iVar4 + uVar7 ^ uVar7;
    iVar4 = param_1 - *(short *)(iVar1 + 0x2c);
    uVar6 = iVar4 >> 0x1f;
    uVar6 = iVar4 + uVar6 ^ uVar6;
    if (uVar7 <= uVar6) {
      uVar7 = uVar6;
    }
    iVar4 = param_3 - *(short *)(iVar1 + 0x30);
    uVar6 = iVar4 >> 0x1f;
    uVar6 = iVar4 + uVar6 ^ uVar6;
    if (uVar6 <= uVar7) {
      uVar6 = uVar7;
    }
    iVar4 = param_4 - *(short *)(iVar1 + 0x32);
    uVar7 = iVar4 >> 0x1f;
    uVar7 = iVar4 + uVar7 ^ uVar7;
    if (uVar7 <= uVar6) {
      uVar7 = uVar6;
    }
    if (0x4f < uVar7) {
      *(uint *)(iVar1 + 0x6c) = *(uint *)(iVar1 + 0x6c) | 1;
      if (0x77 < uVar7) {
        *(undefined4 *)(DAT_07fc4394 + 0x18) = 0;
      }
      *(char *)(iVar1 + 0x10) = *(char *)(iVar1 + 0x10) + '\x01';
    }
    bVar3 = false;
    if (((uVar7 & 0xffff) < 0x50) &&
       ((*(char *)(iVar1 + 7) < '\0' ||
        (((param_4 + (param_4 >> 0xf) ^ param_4 >> 0xf) & 0xffffU) < 0xc9)))) {
      uVar7 = (param_2 + (param_2 >> 0xf) ^ param_2 >> 0xf) & 0xffff;
      if (uVar7 >> 3 < 0x7d) {
        iVar4 = (DAT_07fc4390 - uVar7) + 1;
      }
      else {
        iVar4 = uVar7 + DAT_07fc43a0;
      }
      bVar3 = ((param_3 + (param_3 >> 0xf) ^ param_3 >> 0xf) & 0xffffU) < 0xc9 && iVar4 < 0xc9;
    }
    *(int *)(iVar1 + 0x68) = param_5;
    *(short *)(iVar1 + 0x32) = (short)param_4;
    *(short *)(iVar1 + 0x30) = (short)param_3;
    *(short *)(iVar1 + 0x2e) = (short)param_2;
    *(short *)(iVar1 + 0x2c) = (short)param_1;
    *(bool *)(iVar1 + 0xf) = bVar3;
  }
  return;
}

