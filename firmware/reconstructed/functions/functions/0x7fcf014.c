// rea decompile_all
// name: fixed_point_normalized_cross_correlation_used_at_f014
// address: 0x7fcf014
// body: available
// range: 0x7fcf014-0x7fcf119 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 compute_fixed_point_normalized_cross_correlation(int left,int right,int output_argument,int count)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  
  local_2c = 0;
  local_30 = 0;
  for (iVar2 = 0; iVar2 < count; iVar2 = iVar2 + 1) {
    iVar4 = *(int *)(left + iVar2 * 4) >> 10;
    local_2c = iVar4 * iVar4 + local_2c;
    iVar4 = *(int *)(right + iVar2 * 4) >> 10;
    local_30 = iVar4 * iVar4 + local_30;
  }
  iVar2 = count * 2;
  if ((local_2c == 0) || (local_30 == 0)) {
    for (iVar4 = 0; iVar2 - iVar4 != 0 && iVar4 <= iVar2; iVar4 = iVar4 + 1) {
      *(undefined1 *)(output_argument + iVar4) = 0;
    }
  }
  else {
    for (iVar4 = 0; iVar2 - iVar4 != 0 && iVar4 <= iVar2; iVar4 = iVar4 + 1) {
      if (iVar4 < count) {
        iVar5 = 0;
        for (iVar3 = 0; iVar3 < iVar4 + 1; iVar3 = iVar3 + 1) {
          iVar5 = ((*(int *)(left + iVar3 * 4) >> 9) *
                   (*(int *)(((count - iVar4) + iVar3) * 4 + right + -4) >> 9) >> 2) + iVar5;
        }
        iVar3 = __aeabi_idiv(iVar5 << 6,local_2c);
        uVar1 = __aeabi_idiv(iVar5 * iVar3,local_30);
        *(undefined1 *)(output_argument + iVar4) = uVar1;
      }
      if (count <= iVar4) {
        if (iVar2 + -1 == iVar4) {
          uVar1 = 0;
        }
        else {
          local_28 = 0;
          for (iVar3 = 0; iVar3 < (iVar2 - iVar4) + -1; iVar3 = iVar3 + 1) {
            local_28 = ((*(int *)(((iVar4 - count) + iVar3) * 4 + left + 4) >> 9) *
                        (*(int *)(right + iVar3 * 4) >> 9) >> 2) + local_28;
          }
          iVar3 = __aeabi_idiv(local_28 << 6,local_2c);
          uVar1 = __aeabi_idiv(local_28 * iVar3,local_30);
        }
        *(undefined1 *)(output_argument + iVar4) = uVar1;
      }
    }
  }
  return 0;
}

