// rea decompile_all
// name: release_and_clear_secondary_handle
// address: 0x7fcbc2a
// body: available
// range: 0x7fcbc2a-0x7fcbc39 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void release_and_clear_secondary_handle(int object)

{
  undefined4 uVar1;
  
  uVar1 = *(undefined4 *)(object + 0x10);
  *(undefined4 *)(object + 0x10) = 0;
  ke_free(uVar1);
  return;
}

