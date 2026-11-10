// rea decompile_all
// name: search_circular_record_queue_compact_needed_at_24dc
// address: 0x7fc24dc
// body: available
// range: 0x7fc24dc-0x7fc2567 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void search_circular_record_queue_and_compact_if_needed(undefined4 record)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  
  uVar2 = *(uint *)(DAT_07fc2590 + 0x34);
  uVar7 = *(uint *)(DAT_07fc2590 + 0x38);
  iVar5 = *(int *)(DAT_07fc2590 + 0x40);
  iVar9 = *(int *)(DAT_07fc2590 + 0x44);
  uVar3 = *(int *)(DAT_07fc2590 + 0x3c) - 1;
  uVar6 = 0;
  uVar8 = uVar7;
  do {
    if (uVar8 == uVar2) {
search_circular_record_queue_and_compact_if_needed_label_at_07fc255e:
      advance_ring_s_queue_and_submit_entry(record);
      return;
    }
    iVar4 = memcmp(iVar9 + iVar5 * uVar8,record,0x14);
    iVar1 = DAT_07fc2590;
    if (iVar4 == 0) {
      if (uVar8 == uVar7) {
        return;
      }
      if (uVar6 < (uVar2 - uVar7 & uVar3)) {
        uVar8 = uVar7 + uVar6 & uVar3;
        uVar3 = uVar2 - 1 & uVar3;
        while (uVar8 != uVar3) {
          iVar5 = *(int *)(iVar1 + 0x40) * uVar8;
          uVar8 = *(int *)(iVar1 + 0x3c) - 1U & uVar8 + 1;
          __aeabi_memcpy(*(int *)(iVar1 + 0x44) + iVar5,
                          *(int *)(iVar1 + 0x44) + uVar8 * *(int *)(iVar1 + 0x40));
        }
        *(uint *)(iVar1 + 0x34) = uVar3;
      }
      goto search_circular_record_queue_and_compact_if_needed_label_at_07fc255e;
    }
    uVar8 = uVar8 + 1 & uVar3;
    uVar6 = uVar6 + 1;
  } while( true );
}

