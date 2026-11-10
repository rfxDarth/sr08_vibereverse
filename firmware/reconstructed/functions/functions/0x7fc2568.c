// rea decompile_all
// name: initialize_configuration_record_defaults
// address: 0x7fc2568
// body: available
// range: 0x7fc2568-0x7fc258d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void initialize_configuration_record_defaults(void)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  uVar3 = DAT_07fc2598;
  uVar2 = DAT_07fc2594;
  iVar1 = DAT_07fc2590;
  *(undefined4 *)(DAT_07fc2590 + 0x54) = 0x14;
  *(undefined4 *)(iVar1 + 0x58) = uVar3;
  *(undefined4 *)(iVar1 + 0x34) = 0;
  *(undefined4 *)(iVar1 + 0x38) = 0;
  *(undefined4 *)(iVar1 + 0x3c) = 0x10;
  *(undefined4 *)(iVar1 + 0x40) = 0x14;
  *(undefined4 *)(iVar1 + 0x44) = uVar2;
  *(undefined4 *)(iVar1 + 0x48) = 0;
  *(undefined4 *)(iVar1 + 0x4c) = 0;
  *(undefined4 *)(iVar1 + 0x50) = 8;
  return;
}

