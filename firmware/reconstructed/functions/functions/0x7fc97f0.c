// rea decompile_all
// name: accumulate_elapsed_units_store_quotient_remainder_at_97f0
// address: 0x7fc97f0
// body: available
// range: 0x7fc97f0-0x7fc9827 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void accumulate_elapsed_units_store_quotient_remainder_at_97f0(void)

{
  int iVar1;
  uint *puVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  
  puVar2 = DAT_07fc9854;
  iVar3 = scale_value_directly_below_0x8000_use_at_9858(DAT_07fc9854[2]);
  iVar5 = *(int *)(DAT_07fc98cc + 0x50);
  *(undefined4 *)(DAT_07fc98cc + 0x50) = 0;
  iVar1 = DAT_07fc9828;
  iVar5 = iVar5 + iVar3;
  uVar4 = __aeabi_uidiv(iVar5,DAT_07fc9828);
  puVar2[5] = uVar4;
  iVar5 = uVar4 * DAT_07fc982c + iVar5;
  uVar4 = 0;
  if (iVar5 != 0) {
    uVar4 = iVar1 - iVar5 & 0xffff;
  }
  puVar2[4] = uVar4;
  *puVar2 = *puVar2 | 8;
  return;
}

