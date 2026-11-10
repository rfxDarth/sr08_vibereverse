// rea decompile_all
// name: return_signed_byte_maximum_first_entries_at_ee94
// address: 0x7fcee94
// body: available
// range: 0x7fcee94-0x7fceeab inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


uint return_signed_byte_maximum_first_entries_at_ee94(char *bytes_argument)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = (uint)*bytes_argument;
  iVar2 = 0;
  do {
    if ((int)uVar1 < (int)bytes_argument[iVar2]) {
      uVar1 = (int)bytes_argument[iVar2];
    }
    iVar2 = iVar2 + 1;
  } while (iVar2 < 100);
  return uVar1 & 0xff;
}

