// rea decompile_all
// name: stage_and_program_flash_region_3c000
// address: 0x7fc5200
// body: available
// range: 0x7fc5200-0x7fc5227 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void stage_and_program_flash_region_3c000(void)

{
  int iVar1;
  
  iVar1 = DAT_07fc54f4;
  *(undefined4 *)(DAT_07fc54f4 + 0x30) = *DAT_07fc5228;
  erase_flash_range(0x3c000,0x2000);
  perform_flash_memory_operation(iVar1 + 0x30,0x3c000,0x70,1);
  return;
}

