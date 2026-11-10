// rea decompile_all
// name: polled_mmio_transaction_preserving_original_thumb_at_ba98
// address: 0x7fcba98
// body: available
// range: 0x7fcba98-0x7fcbacf inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


uint transfer_flash_controller_word(undefined4 value)

{
  ushort *puVar1;
  uint uVar2;
  
  puVar1 = DAT_07fcbb8c;
  DAT_07fcbb8c[4] = DAT_07fcbb8c[4] & 0xfffe | 2;
  if ((int)((uint)*puVar1 << 0x17) < 0) {
    puVar1[2] = (ushort)((uint)value >> 0x10);
  }
  puVar1[1] = (ushort)value;
  do {
  } while (-1 < (int)((uint)*puVar1 << 0x12));
  puVar1[3] = 1;
  if ((*puVar1 & 0x100) == 0) {
    uVar2 = 0;
  }
  else {
    uVar2 = (uint)puVar1[2] << 0x10;
  }
  return puVar1[1] | uVar2;
}

