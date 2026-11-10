// rea decompile_all
// name: initialize_display_s_image_region_fixed_at_54b4
// address: 0x7fc54b4
// body: available
// range: 0x7fc54b4-0x7fc54f1 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void initialize_display_image_region_and_fixed_header(void)

{
  int iVar1;
  
  erase_flash_range(0x2e000,0x10000);
  erase_flash_range(0x4c000,0x15000);
  iVar1 = v204_shared_context_bytes_for_display_character;
  __aeabi_memclr(v204_shared_context_bytes_for_display_character,0xd4);
  *(undefined1 *)(iVar1 + 0x8a) = 0x32;
  *(undefined1 *)(iVar1 + 0x89) = 0xaa;
  *(undefined2 *)(iVar1 + 0x94) = 0x3200;
  *(undefined2 *)(iVar1 + 0x36) = 0x3e;
  return;
}

