// rea decompile_all
// name: read_eight_bytes_from_rom_helper
// address: 0x7fc045a
// body: available
// range: 0x7fc045a-0x7fc046d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void read_eight_bytes_from_rom_helper(int output_argument)

{
  undefined1 uVar1;
  int iVar2;
  
  iVar2 = 0;
  do {
    uVar1 = dia_rand();
    *(undefined1 *)(output_argument + iVar2) = uVar1;
    iVar2 = iVar2 + 1;
  } while (iVar2 < 8);
  return;
}

