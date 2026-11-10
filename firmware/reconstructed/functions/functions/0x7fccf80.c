// rea decompile_all
// name: selects_three_most_frequent_nonzero_values_at_cf80
// address: 0x7fccf80
// body: available
// range: 0x7fccf80-0x7fcd0a9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void average_top_three_nonzero_sample_values_by_frequency(int samples,int count)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  char acStack_49 [29];
  int local_2c;
  int local_28;
  int local_24;
  int local_20;
  int local_1c;
  int local_18;
  
  __aeabi_memclr(acStack_49 + 1,0x1c);
  iVar1 = (int)acStack_49[1];
  local_24 = 0;
  iVar3 = 0;
  iVar4 = 0;
  iVar7 = 0;
  local_1c = 0;
  for (iVar2 = 0; iVar2 < count; iVar2 = (int)(char)((char)iVar2 + '\x01')) {
    acStack_49[iVar2 + 1] = '\0';
  }
  local_28 = count + -1;
  iVar2 = 0;
  while (iVar6 = iVar2, iVar6 < local_28) {
    iVar2 = (int)(char)((char)iVar6 + '\x01');
    local_20 = iVar6 << 2;
    local_2c = iVar2;
    for (; iVar2 < count; iVar2 = (int)(char)((char)iVar2 + '\x01')) {
      local_18 = iVar2 * 4;
      iVar5 = *(int *)(samples + iVar2 * 4);
      if (((*(int *)(samples + local_20) == iVar5) && (*(int *)(samples + local_20) != 0)) &&
         (iVar5 != 0)) {
        acStack_49[iVar6 + 1] = acStack_49[iVar6 + 1] + '\x01';
        *(undefined4 *)(samples + local_18) = 0;
      }
    }
    iVar2 = local_2c;
    if (*(int *)(samples + local_20) != 0) {
      acStack_49[iVar6 + 1] = acStack_49[iVar6 + 1] + '\x01';
      iVar2 = local_2c;
    }
  }
  if (*(int *)(count * 4 + samples + -4) != 0) {
    acStack_49[count] = acStack_49[count] + '\x01';
  }
  for (iVar2 = 0; iVar2 < count; iVar2 = (int)(char)((char)iVar2 + '\x01')) {
    if (iVar1 < acStack_49[iVar2 + 1]) {
      iVar3 = *(int *)(samples + iVar2 * 4);
      iVar1 = (int)acStack_49[iVar2 + 1];
    }
  }
  for (iVar2 = 0; iVar2 < count; iVar2 = (int)(char)((char)iVar2 + '\x01')) {
    iVar6 = (int)acStack_49[iVar2 + 1];
    if (((local_24 < iVar6) && (iVar6 <= iVar1)) &&
       (iVar5 = *(int *)(samples + iVar2 * 4), iVar5 != iVar3)) {
      local_24 = iVar6;
      iVar4 = iVar5;
    }
  }
  for (iVar1 = 0; iVar1 < count; iVar1 = (int)(char)((char)iVar1 + '\x01')) {
    iVar2 = (int)acStack_49[iVar1 + 1];
    if (((local_1c < iVar2) && (iVar2 <= local_24)) &&
       ((iVar6 = *(int *)(samples + iVar1 * 4), iVar6 != iVar4 && (iVar6 != iVar3)))) {
      local_1c = iVar2;
      iVar7 = iVar6;
    }
  }
  if (iVar4 == 0) {
    iVar4 = iVar3;
  }
  if (iVar7 == 0) {
    iVar7 = iVar3;
  }
  __aeabi_idiv(iVar3 + iVar4 + iVar7,3);
  return;
}

