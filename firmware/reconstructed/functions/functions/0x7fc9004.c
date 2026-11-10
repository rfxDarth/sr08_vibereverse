// rea decompile_all
// name: convert_timestamp_to_calendar_fields
// address: 0x7fc9004
// body: available
// range: 0x7fc9004-0x7fc90db inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void convert_timestamp_to_calendar_fields(int timestamp_seconds,int *output_argument,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int division_remainder;
  uint uVar5;
  
  iVar1 = __aeabi_uidiv(timestamp_seconds,v204_calendar_conversion_constants,param_3,param_4,output_argument,param_3,param_4);
  __aeabi_uidiv(iVar1 + 4U & 0xffff,7);
  output_argument[6] = division_remainder;
  iVar2 = __aeabi_uidiv(timestamp_seconds,DAT_07fc90e0);
  uVar5 = iVar2 + DAT_07fc90e4;
  iVar3 = __aeabi_uidiv(uVar5,400);
  iVar2 = iVar2 * DAT_07fc90e8;
  iVar4 = __aeabi_uidiv(uVar5,100);
  iVar2 = (iVar1 + iVar2 + iVar4 + 0x16d) - ((uVar5 >> 2) + iVar3);
  iVar3 = iVar2 + 0x70;
  iVar1 = iVar1 * DAT_07fc90ec;
  if (iVar3 < 0) {
    iVar3 = is_gregorian_leap_year(uVar5);
    iVar3 = iVar2 + 0x1dd + iVar3;
  }
  else {
    uVar5 = uVar5 + 1;
  }
  iVar1 = iVar1 + timestamp_seconds;
  output_argument[7] = iVar3 + 1;
  output_argument[5] = uVar5 + DAT_07fc90f0;
  for (iVar2 = 0; iVar2 != 0xb; iVar2 = iVar2 + 1) {
    iVar4 = is_gregorian_leap_year(uVar5);
    iVar4 = iVar3 - ((uint)(iVar2 == 1 && iVar4 != 0) + (uint)(byte)(&DAT_07fc90f4)[iVar2]);
    if (iVar4 < 0) goto convert_timestamp_to_calendar_fields_label_at_07fc90aa;
    iVar3 = iVar4;
  }
  iVar2 = 0xb;
convert_timestamp_to_calendar_fields_label_at_07fc90aa:
  output_argument[3] = iVar3 + 1;
  output_argument[4] = iVar2;
  iVar3 = __aeabi_uidiv(iVar1,0xe10);
  output_argument[2] = iVar3;
  iVar1 = iVar3 * DAT_07fc9100 + iVar1;
  iVar3 = __aeabi_uidiv(iVar1,0x3c);
  *output_argument = iVar3 * -0x3c + iVar1;
  output_argument[1] = iVar3;
  return;
}

