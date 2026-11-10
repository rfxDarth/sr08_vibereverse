// rea decompile_all
// name: copy_six_profile_bytes_from_offsets_two_to_seven
// address: 0x7fc72f0
// body: available
// range: 0x7fc72f0-0x7fc7303 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void copy_six_profile_bytes_from_offsets_two_to_seven(undefined1 *destination)

{
  int iVar1;
  int iVar2;
  
  iVar1 = DAT_07fc7304;
  for (iVar2 = 7; iVar2 != 1; iVar2 = iVar2 + -1) {
    *destination = *(undefined1 *)(iVar1 + iVar2);
    destination = destination + 1;
  }
  return;
}

