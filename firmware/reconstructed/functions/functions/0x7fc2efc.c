// rea decompile_all
// name: advance_ring_s_queue_head_submit_at_2efc
// address: 0x7fc2efc
// body: available
// range: 0x7fc2efc-0x7fc2f27 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void advance_ring_s_queue_and_submit_entry(undefined4 value)

{
  int iVar1;
  uint uVar2;
  
  iVar1 = v204_submission_queue_from_record_helpers;
  uVar2 = *(int *)(v204_submission_queue_from_record_helpers + 0x3c) - 1;
  if ((uVar2 & *(int *)(v204_submission_queue_from_record_helpers + 0x38) + ~*(uint *)(v204_submission_queue_from_record_helpers + 0x34)) != 0) {
    uVar2 = uVar2 & *(int *)(v204_submission_queue_from_record_helpers + 0x38) - 1U;
    __aeabi_memcpy(*(int *)(v204_submission_queue_from_record_helpers + 0x44) + *(int *)(v204_submission_queue_from_record_helpers + 0x40) * uVar2,value);
    *(uint *)(iVar1 + 0x38) = uVar2;
  }
  return;
}

