// rea decompile_all
// name: restoring_integer_square_root_v204_returns_at_1e70
// address: 0x7fc1e70
// body: available
// range: 0x7fc1e70-0x7fc1ea1 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void integer_square_root_restoring(uint input)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  
  uVar1 = 0x40000000;
  do {
    uVar2 = uVar1;
    uVar1 = uVar2 >> 2;
  } while (input < uVar2);
  uVar1 = 0;
  for (; uVar2 != 0; uVar2 = uVar2 >> 2) {
    uVar3 = uVar2 + uVar1;
    if (uVar3 <= input) {
      uVar1 = uVar1 + uVar2 * 2;
      input = input - uVar3;
    }
    uVar1 = uVar1 >> 1;
  }
  return;
}

