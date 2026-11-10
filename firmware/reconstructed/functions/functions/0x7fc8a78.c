// rea decompile_all
// name: wait_requested_status_mask_minimum_elapsed_at_8a78
// address: 0x7fc8a78
// body: available
// range: 0x7fc8a78-0x7fc8acd inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined8 wait_requested_status_mask_minimum_elapsed_at_8a78(ushort *status_address,uint mask,int clear_instead_of_set,uint minimum_elapsed)

{
  int *piVar1;
  uint uVar2;
  uint uVar3;
  undefined4 local_20;
  
  piVar1 = DAT_07fc8ad0;
  *DAT_07fc8ad0 = 1;
  do {
  } while (*piVar1 != 0);
  uVar2 = *DAT_07fc8ad4;
  local_20 = mask;
  do {
    uVar3 = *status_address & mask;
    if (clear_instead_of_set != 0) {
      uVar3 = (uint)((*status_address & mask) == 0);
    }
    if (uVar3 != 0) break;
    *piVar1 = 1;
    do {
    } while (*piVar1 != 0);
    local_20 = *DAT_07fc8ad4;
    uVar3 = local_20;
    if (local_20 < uVar2) {
      uVar3 = local_20 + 0x5000000;
    }
  } while (uVar3 - uVar2 < minimum_elapsed);
  return CONCAT44(local_20,minimum_elapsed);
}

