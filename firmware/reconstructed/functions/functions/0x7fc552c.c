// rea decompile_all
// name: find_latest_valid_record_within_bitset
// address: 0x7fc552c
// body: available
// range: 0x7fc552c-0x7fc55fb inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


int find_latest_valid_record_within_bitset(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  int division_remainder;
  uint uVar4;
  int iVar5;
  int iVar6;
  uint local_48;
  char local_44;
  uint local_24 [4];
  
  uVar4 = DAT_07fc564c;
  local_24[3] = 0;
  local_24[2] = 0;
  local_24[1] = 0;
  local_24[0] = 0;
  iVar6 = __aeabi_uidiv(param_1,DAT_07fc564c);
  uVar4 = iVar6 * uVar4;
  convert_timestamp_to_calendar_fields(uVar4,&local_48);
  __aeabi_uidiv(iVar6,7);
  perform_flash_memory_operation(local_24,division_remainder * 0x2000 + DAT_07fc55fc,0x10,0);
  for (iVar6 = 0; iVar6 != 0x10; iVar6 = iVar6 + 4) {
    *(uint *)((int)local_24 + iVar6) = ~*(uint *)((int)local_24 + iVar6);
  }
  uVar1 = __aeabi_uidiv(param_2,0xf);
  uVar2 = __aeabi_uidiv(param_3,0xf);
  iVar5 = uVar1 * 0x24 + division_remainder * 0x2000 + 0x2e000;
  iVar6 = 0;
  for (; uVar1 < uVar2; uVar1 = uVar1 + 1) {
    iVar3 = iVar6;
    if ((*(uint *)((int)local_24 + (uVar1 >> 3 & 0x3fc)) >> (uVar1 & 0x1f) & 1) != 0) {
      perform_flash_memory_operation(&local_48,iVar5,8,0);
      if (local_44 == '\x01') {
        iVar3 = iVar6 + 900;
      }
      if (DAT_07fc564c <= local_48 - uVar4) {
        iVar3 = iVar6;
      }
      if (local_48 < uVar4) {
        iVar3 = iVar6;
      }
    }
    iVar5 = iVar5 + 0x24;
    iVar6 = iVar3;
  }
  return iVar6;
}

