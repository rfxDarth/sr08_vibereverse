// rea decompile_all
// name: integer_square_root_newton_iteration
// address: 0x7fcd0c8
// body: available
// range: 0x7fcd0c8-0x7fcd0ed inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


uint integer_square_root_newton_iteration(uint input)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  
  uVar2 = input;
  if (input != 0) {
    do {
      iVar1 = __aeabi_uidiv(input,uVar2);
      uVar3 = iVar1 + uVar2 >> 1;
      iVar1 = uVar3 - uVar2;
      uVar2 = uVar3;
    } while (2 < iVar1 + 1U);
    return uVar3;
  }
  return 0;
}

