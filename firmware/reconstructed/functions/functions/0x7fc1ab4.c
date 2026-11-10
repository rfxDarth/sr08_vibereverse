// rea decompile_all
// name: restoring_single_precision_divide_v204_s_at_1ab4
// address: 0x7fc1ab4
// body: available
// range: 0x7fc1ab4-0x7fc1b2f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 divide_v204_software_float_values(uint numerator,uint denominator)

{
  uint uVar1;
  uint uVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  
  if (((numerator & 0x7fffffff) != 0) && ((denominator & 0x7fffffff) != 0)) {
    uVar1 = 0x800000;
    iVar6 = ((numerator & 0x7fffffff) >> 0x17) - ((denominator & 0x7fffffff) >> 0x17);
    uVar2 = (numerator & 0x7fffff) + 0x800000;
    uVar4 = (denominator & 0x7fffff) + 0x800000;
    iVar7 = iVar6 + 0x7d;
    if (uVar2 < uVar4) {
      uVar2 = uVar2 * 2;
    }
    else {
      iVar7 = iVar6 + 0x7e;
    }
    if (-1 < iVar7) {
      uVar5 = 0;
      do {
        if (uVar4 <= uVar2) {
          uVar2 = uVar2 - uVar4;
          uVar5 = uVar5 | uVar1;
        }
        uVar1 = uVar1 >> 1;
        uVar2 = uVar2 * 2;
      } while (uVar1 != 0);
      uVar3 = 0;
      if (uVar2 != 0) {
        if (uVar2 - uVar4 == 0) {
          uVar3 = 0x80000000;
        }
        else if (uVar2 < uVar4) {
          uVar3 = 1;
        }
        else {
          uVar3 = 0xfffffffe;
        }
      }
      uVar3 = round_v204_float_value_from_status(iVar7 * 0x800000 + uVar5 + ((numerator ^ denominator) & 0x80000000),uVar3);
      return uVar3;
    }
  }
  return 0;
}

