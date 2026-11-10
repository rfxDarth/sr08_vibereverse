// rea decompile_all
// name: map_elapsed_device_ticks_firmware_s_at_4164
// address: 0x7fc4164
// body: available
// range: 0x7fc4164-0x7fc41c9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


int map_elapsed_ticks_to_firmware_time_units(void)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = *(uint *)(DAT_07fc43ec + 0xc);
  if (uVar1 + DAT_07fc41cc <= DAT_07fc41d0) {
    iVar2 = __aeabi_uidiv(uVar1 * 0x11 + DAT_07fc41dc,DAT_07fc41e0);
    return iVar2 + 5;
  }
  if (uVar1 >> 5 < 0xe1) {
    iVar2 = __aeabi_uidiv(uVar1 & 0xffff,0x2d0);
    return iVar2 + 0x14;
  }
  if (uVar1 >> 6 < 0xe1) {
    iVar2 = __aeabi_uidiv(uVar1 & 0xffff,0x5a0);
    return iVar2 + 0x1e;
  }
  if (uVar1 <= DAT_07fc41d4) {
    iVar2 = __aeabi_uidiv(DAT_07fc41d8 - uVar1 & 0xffff,600);
    return iVar2 + 0xf;
  }
  return 5;
}

