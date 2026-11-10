// rea decompile_all
// name: search_circular_record_queue_insert_missing_at_2f2c
// address: 0x7fc2f2c
// body: available
// range: 0x7fc2f2c-0x7fc2f87 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void search_circular_record_queue_insert_missing_at_2f2c(undefined4 record,undefined4 limit)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  
  uVar1 = *(uint *)(v204_submission_queue_from_record_helpers + 0x34);
  uVar5 = *(uint *)(v204_submission_queue_from_record_helpers + 0x38);
  iVar2 = *(int *)(v204_submission_queue_from_record_helpers + 0x3c);
  iVar4 = *(int *)(v204_submission_queue_from_record_helpers + 0x40);
  iVar7 = *(int *)(v204_submission_queue_from_record_helpers + 0x44);
  do {
    if (uVar5 == uVar1) {
search_circular_record_queue_insert_missing_at_2f2c_label_at_07fc2f7a:
      enqueue_ring_record_if_space(v204_submission_queue_from_record_helpers + 0x34,record);
      return;
    }
    iVar6 = iVar7 + iVar4 * uVar5;
    iVar3 = memcmp(iVar6,record,limit);
    if (iVar3 == 0) {
      __aeabi_memcpy(iVar6,record,iVar4);
      if (uVar5 != *(uint *)(v204_submission_queue_from_record_helpers + 0x34)) {
        return;
      }
      goto search_circular_record_queue_insert_missing_at_2f2c_label_at_07fc2f7a;
    }
    uVar5 = uVar5 + 1 & iVar2 - 1U;
  } while( true );
}

