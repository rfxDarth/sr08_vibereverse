// rea decompile_all
// name: software_float_addition_preserving_v204_s_at_1988
// address: 0x7fc1988
// body: available
// range: 0x7fc1988-0x7fc1a29 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void add_v204_software_float_values(uint a,uint b,undefined4 unused,undefined4 rounding)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  
  uVar4 = a ^ b;
  uVar1 = a;
  if ((a & 0x7fffffff) < (b & 0x7fffffff)) {
    uVar1 = b;
    b = a;
  }
  if ((b & 0x7fffffff) == 0) {
    return;
  }
  uVar7 = uVar1 >> 0x17;
  uVar8 = (uVar7 & 0xff) - ((b & 0x7fffffff) >> 0x17);
  if ((int)uVar8 < 0x20) {
    iVar5 = (b & 0x7fffff) + 0x800000;
    if ((int)uVar4 < 0) {
      iVar5 = -iVar5;
    }
    uVar3 = iVar5 << (0x20 - uVar8 & 0xff);
    uVar2 = (iVar5 >> (uVar8 & 0xff)) + uVar1;
    uVar6 = uVar2 >> 0x17;
    if (uVar6 != uVar7) {
      if ((int)uVar4 < 0) {
        if ((int)uVar8 < 2) {
          normalize_and_round_v204_software_float(uVar2 + uVar7 * -0x800000 + 0x800000,uVar3,uVar1 & 0x80000000,uVar7 & 0xff);
          return;
        }
        iVar5 = uVar7 * -0x800000;
        uVar7 = 0x1000000;
        uVar6 = uVar3 >> 0x1f;
        uVar2 = uVar2 * 2 + iVar5 | uVar6;
        uVar3 = uVar3 << 1;
      }
      else {
        uVar3 = uVar3 >> 1 | uVar2 * -0x80000000;
        uVar6 = uVar7 * 0x800000;
        uVar2 = (uVar2 + uVar7 * -0x800000 + 0x800000 >> 1) + uVar6;
      }
    }
  }
  else {
    uVar6 = 1;
    uVar3 = ((int)uVar4 >> 0x1f) * 2 + 1;
    uVar2 = uVar1 + ((int)uVar4 >> 0x1f);
  }
  round_v204_float_value_from_status(uVar2,uVar3,uVar6,uVar7,rounding);
  return;
}

