// rea decompile_all
// name: convert_quotient_remainder_sequence_ring_s_at_3148
// address: 0x7fc3148
// body: available
// range: 0x7fc3148-0x7fc31bf inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void convert_quotient_remainder_sequence_ring_s_at_3148(uint value,undefined1 *output_argument,int digit_count,int display_mode)

{
  undefined4 uVar1;
  byte *pbVar2;
  byte division_remainder;
  byte bVar3;
  byte bVar4;
  uint uVar5;
  uint uVar6;
  undefined4 local_20;
  byte local_1c [8];
  
  local_20 = -digit_count;
  uVar6 = 1;
  uVar5 = 0;
  while (local_20 != uVar5) {
    uVar1 = __aeabi_uidiv(value,uVar6);
    __aeabi_uidiv(uVar1,10);
    bVar3 = division_remainder;
    if (value < uVar6) {
      bVar3 = 0x10;
    }
    bVar4 = division_remainder;
    if (uVar5 - 1 < uVar5) {
      bVar4 = bVar3;
    }
    if (display_mode != 1) {
      bVar4 = division_remainder;
    }
    local_1c[uVar5 + digit_count + -1] = bVar4;
    uVar6 = uVar6 * 10;
    uVar5 = uVar5 - 1;
  }
  pbVar2 = local_1c;
  for (; digit_count != 0; digit_count = digit_count + -1) {
    *output_argument = (&DAT_07fc31c0)[*pbVar2];
    output_argument = output_argument + 1;
    pbVar2 = pbVar2 + 1;
  }
  return;
}

