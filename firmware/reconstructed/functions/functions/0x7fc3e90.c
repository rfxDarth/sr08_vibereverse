// rea decompile_all
// name: erase_flash_range
// address: 0x7fc3e90
// body: available
// range: 0x7fc3e90-0x7fc3e9f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void erase_flash_range(undefined4 flash_address,undefined4 byte_count)

{
  perform_flash_memory_operation(0,flash_address,byte_count,2);
  return;
}

