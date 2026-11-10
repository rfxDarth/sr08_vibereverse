// rea decompile_all
// name: scale_value_directly_below_0x8000_use_at_9858
// address: 0x7fc9858
// body: available
// range: 0x7fc9858-0x7fc987d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


uint scale_value_directly_below_0x8000_use_at_9858(uint value)

{
  undefined8 uVar1;
  
  if (value >> 0xf != 0) {
    uVar1 = __aeabi_lmul(*(undefined4 *)(DAT_07fc9894 + 0x10),0,value,0);
    return ((uint)uVar1 >> 10) + (int)((ulonglong)uVar1 >> 0x20) * 0x400000;
  }
  return *(int *)(DAT_07fc9894 + 0x10) * value >> 10;
}

