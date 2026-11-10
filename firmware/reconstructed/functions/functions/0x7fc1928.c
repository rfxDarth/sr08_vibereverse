// rea decompile_all
// name: restoring_bit_quotient_bit_selection_routine_at_1928
// address: 0x7fc1928
// body: available
// range: 0x7fc1928-0x7fc1987 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


longlong divide_u64_restoring(uint dividend_low,int dividend_high,uint divisor_low,uint divisor_high)

{
  longlong lVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  bool bVar5;
  undefined8 uVar6;
  longlong lVar7;
  int local_2c;
  
  lVar1 = 0;
  iVar3 = 0x40;
  local_2c = dividend_high;
  while (iVar4 = iVar3 + -1, 0 < iVar3) {
    uVar6 = shift_unsigned_64_right(dividend_low,local_2c,iVar4);
    uVar2 = (uint)((ulonglong)uVar6 >> 0x20);
    iVar3 = iVar4;
    if (divisor_high < uVar2 || uVar2 - divisor_high < (uint)(divisor_low <= (uint)uVar6)) {
      uVar6 = __aeabi_llsl(divisor_low,divisor_high,iVar4);
      bVar5 = dividend_low < (uint)uVar6;
      dividend_low = dividend_low - (uint)uVar6;
      local_2c = (local_2c - (int)((ulonglong)uVar6 >> 0x20)) - (uint)bVar5;
      lVar7 = __aeabi_llsl(1,0,iVar4);
      lVar1 = lVar7 + lVar1;
    }
  }
  return lVar1;
}

