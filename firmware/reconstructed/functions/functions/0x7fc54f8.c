// rea decompile_all
// name: translate_rom_conversion_result_two_display_at_54f8
// address: 0x7fc54f8
// body: available
// range: 0x7fc54f8-0x7fc5529 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void translate_rom_result_to_display_coordinates(undefined4 value)

{
  undefined4 uVar1;
  int division_remainder;
  
  uVar1 = __aeabi_uidiv(value,DAT_07fc564c);
  __aeabi_uidiv(uVar1,7);
  erase_flash_range(division_remainder * 0x2000 + 0x2e000,0x2000);
  erase_flash_range(division_remainder * 0x3000 + 0x4c000);
  return;
}

