// rea decompile_all
// name: queue_computed_status_records
// address: 0x7fc50b4
// body: available
// range: 0x7fc50b4-0x7fc5193 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void queue_computed_status_records(void)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  uint uVar6;
  undefined1 local_28;
  undefined1 local_27;
  undefined1 local_26;
  undefined1 local_25;
  undefined1 local_24;
  undefined1 local_23;
  undefined1 local_22;
  undefined1 local_21;
  undefined1 local_20;
  undefined1 local_1f;
  undefined1 local_1e;
  undefined1 local_1d;
  undefined1 local_1c;
  undefined1 local_1b;
  undefined1 local_1a;
  undefined1 local_19;
  undefined1 local_18;
  undefined1 local_17;
  undefined1 local_16;
  undefined1 local_15;
  
  local_28 = 3;
  iVar1 = *(int *)(v204_shared_context_bytes_for_step_accumulator + 0x38);
  local_23 = (undefined1)iVar1;
  uVar3 = *DAT_07fc5228;
  local_27 = (undefined1)uVar3;
  local_20 = (undefined1)((uint)iVar1 >> 0x18);
  local_21 = (undefined1)((uint)iVar1 >> 0x10);
  local_22 = (undefined1)((uint)iVar1 >> 8);
  local_24 = (undefined1)((uint)uVar3 >> 0x18);
  local_25 = (undefined1)((uint)uVar3 >> 0x10);
  local_26 = (undefined1)((uint)uVar3 >> 8);
  uVar6 = 0;
  if (DAT_07fc5194 <= *(uint *)(v204_shared_context_bytes_for_step_accumulator + 0x44)) {
    uVar6 = *(uint *)(v204_shared_context_bytes_for_step_accumulator + 0x44);
  }
  local_17 = (undefined1)uVar6;
  local_16 = (undefined1)(uVar6 >> 8);
  local_15 = (undefined1)(uVar6 >> 0x10);
  uVar6 = iVar1 * (uint)*(ushort *)(v204_shared_context_bytes_for_step_accumulator + 0x36);
  uVar3 = __aeabi_uidiv(uVar6 * *(byte *)(v204_shared_context_bytes_for_step_accumulator + 0x8a) * 0xe,DAT_07fc5198);
  local_1b = (undefined1)uVar3;
  uVar2 = __aeabi_uidiv((uVar6 & 0x7fffffff) >> 4,5);
  local_1f = (undefined1)uVar2;
  local_18 = (undefined1)((uint)uVar3 >> 0x18);
  local_19 = (undefined1)((uint)uVar3 >> 0x10);
  local_1a = (undefined1)((uint)uVar3 >> 8);
  local_1c = (undefined1)((uint)uVar2 >> 0x18);
  local_1d = (undefined1)((uint)uVar2 >> 0x10);
  local_1e = (undefined1)((uint)uVar2 >> 8);
  search_queue_and_insert_limit_one(&local_28);
  local_15 = 0;
  local_16 = 0;
  local_17 = 0;
  local_28 = 0x13;
  uVar4 = *DAT_07fc5228;
  local_27 = (undefined1)uVar4;
  uVar5 = *(undefined4 *)(DAT_07fc54f4 + 0x3c);
  uVar2 = *(undefined4 *)(DAT_07fc54f4 + 0x40);
  local_23 = (undefined1)uVar5;
  local_1f = (undefined1)uVar2;
  uVar3 = *(undefined4 *)(DAT_07fc54f4 + 0x48);
  local_1b = (undefined1)uVar3;
  local_24 = (undefined1)((uint)uVar4 >> 0x18);
  local_25 = (undefined1)((uint)uVar4 >> 0x10);
  local_26 = (undefined1)((uint)uVar4 >> 8);
  local_20 = (undefined1)((uint)uVar5 >> 0x18);
  local_21 = (undefined1)((uint)uVar5 >> 0x10);
  local_22 = (undefined1)((uint)uVar5 >> 8);
  local_1c = (undefined1)((uint)uVar2 >> 0x18);
  local_1d = (undefined1)((uint)uVar2 >> 0x10);
  local_1e = (undefined1)((uint)uVar2 >> 8);
  local_18 = (undefined1)((uint)uVar3 >> 0x18);
  local_19 = (undefined1)((uint)uVar3 >> 0x10);
  local_1a = (undefined1)((uint)uVar3 >> 8);
  search_queue_and_insert_limit_one(&local_28);
  return;
}

