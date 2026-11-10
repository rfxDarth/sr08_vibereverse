// rea decompile_all
// name: nul_terminated_string_length
// address: 0x7fc18f4
// body: available
// range: 0x7fc18f4-0x7fc1901 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


int nul_terminated_string_length(char *text_argument)

{
  char cVar1;
  char *pcVar2;
  
  pcVar2 = text_argument + 1;
  do {
    cVar1 = *text_argument;
    text_argument = text_argument + 1;
  } while (cVar1 != '\0');
  return (int)text_argument - (int)pcVar2;
}

