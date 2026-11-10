// rea decompile_all
// name: clear_invoke_registered_callback_values_five_at_3e08
// address: 0x7fc3e08
// body: available
// range: 0x7fc3e08-0x7fc3e37 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 clear_and_invoke_registered_callback_for_five_values(uint param_1)

{
  undefined4 uVar1;
  code *pcVar2;
  int iVar3;
  undefined1 *in_stack_00000000;
  
  uVar1 = 1;
  if ((DAT_07fc3e38 <= param_1) && (param_1 <= DAT_07fc3e38 + 4)) {
    iVar3 = (param_1 + 0xf2 & 0xff) * 4;
    pcVar2 = *(code **)(DAT_07fc3e3c + iVar3);
    if (pcVar2 != (code *)0x0) {
      *(undefined4 *)(DAT_07fc3e3c + iVar3) = 0;
      (*pcVar2)();
    }
    uVar1 = 0;
    *in_stack_00000000 = 0;
  }
  return uVar1;
}

