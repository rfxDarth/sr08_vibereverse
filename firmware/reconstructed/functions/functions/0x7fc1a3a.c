// rea decompile_all
// name: v204_software_float_multiply_preserve_split_at_1a3a
// address: 0x7fc1a3a
// body: available
// range: 0x7fc1a3a-0x7fc1ab3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


uint multiply_v204_software_float_values(uint left,uint right)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  
  if (((left & 0x7fffffff) != 0) && ((right & 0x7fffffff) != 0)) {
    iVar3 = ((left & 0x7fffffff) >> 0x17) + ((right & 0x7fffffff) >> 0x17);
    uVar1 = left & 0x7fffff;
    uVar5 = right & 0x7fffff;
    uVar2 = uVar5 * uVar1 + (uVar1 + uVar5) * 0x800000 >> 0x10;
    uVar6 = ((~uVar2 + (uVar5 >> 8) * (uVar1 >> 8) + (uVar1 + uVar5) * 0x80 >> 0x10) + 0x4001) *
            0x10000;
    iVar4 = iVar3 + -0x7f;
    if ((uVar5 * uVar1 & 0xffff) != 0) {
      uVar6 = uVar6 + 1;
    }
    uVar2 = uVar2 | uVar6;
    if (-1 < (int)uVar2) {
      uVar2 = uVar2 << 1;
      iVar4 = iVar3 + -0x80;
    }
    uVar1 = iVar4 * 0x1000000 + (uVar2 >> 7) + 1;
    uVar5 = uVar1 >> 1;
    if ((uVar2 & 0xff) == 0x80) {
      uVar5 = (uVar1 >> 2) << 1;
    }
    if (iVar4 < 0) {
      uVar5 = 0;
    }
    return uVar5 | (left ^ right) & 0x80000000;
  }
  return 0;
}

