// rea decompile_all
// name: derive_active_sensor_range_flags_notify_at_37d0
// address: 0x7fc37d0
// body: available
// range: 0x7fc37d0-0x7fc3831 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


uint derive_active_sensor_range_flags_notify_at_37d0(void)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  
  iVar2 = DAT_07fc3b54;
  iVar1 = DAT_07fc3aa4;
  uVar6 = *(uint *)(DAT_07fc3aa4 + 0x14);
  uVar5 = 0;
  if (((uVar6 != 0) && (*(char *)(DAT_07fc3b54 + 0xc) != '\x1e')) &&
     (iVar4 = read_record_flag_bit_zero(), iVar4 == 0)) {
    if ((uVar6 & 0x7fff) >> 6 == 0) {
      if (*(char *)(iVar2 + 0x26) == '\0') {
        uVar5 = (uint)((uVar6 & 0x1d) != 0);
        if ((uVar6 & 0x22) != 0) {
          uVar5 = 2;
        }
      }
      else {
        uVar5 = 0;
        *(undefined4 *)(iVar1 + 0x14) = 0;
      }
    }
    else {
      uVar3 = 0x4000;
      do {
        uVar5 = uVar3;
        if (uVar5 < 0x40) break;
        uVar3 = uVar5 >> 1;
      } while ((uVar5 & uVar6) == 0);
    }
  }
  start_or_stop_sensor_calibration(uVar5);
  return uVar5;
}

