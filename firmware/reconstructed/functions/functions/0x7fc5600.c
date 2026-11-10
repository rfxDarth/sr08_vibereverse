// rea decompile_all
// name: validate_stored_sample_against_latest_reading_at_5600
// address: 0x7fc5600
// body: available
// range: 0x7fc5600-0x7fc564b inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


int validate_stored_sample_against_latest_reading_at_5600(uint param_1,int param_2,uint *param_3)

{
  undefined4 uVar1;
  uint uVar2;
  int division_remainder;
  uint uVar3;
  char cVar4;
  
  uVar1 = __aeabi_uidiv(param_1,DAT_07fc564c);
  __aeabi_uidiv(uVar1,7);
  cVar4 = '\0';
  perform_flash_memory_operation(param_3,param_2 * 0x24 + division_remainder * 0x2000 + 0x2e000,0x24,0);
  uVar3 = *param_3;
  uVar2 = param_1 - uVar3;
  if (param_1 < uVar3) {
    uVar2 = uVar3 - param_1;
  }
  if ((uVar3 == 0xffffffff) || (DAT_07fc5650 <= uVar2)) {
    __aeabi_memclr(param_3,0x24);
    cVar4 = -1;
  }
  return (int)cVar4;
}

