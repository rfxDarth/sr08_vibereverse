// rea decompile_all
// name: render_current_time_charging_measurement_markers_at_a9d0
// address: 0x7fca9d0
// body: available
// range: 0x7fca9d0-0x7fcaa41 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void render_current_time_charging_measurement_markers_at_a9d0(void)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 in_r3;
  
  iVar1 = DAT_07fcad74;
  iVar3 = DAT_07fcaa48;
  if (*(char *)(DAT_07fcad70 + 0xc4) == '\x01') {
    for (iVar3 = 0x40; iVar3 != 0x45; iVar3 = iVar3 + 1) {
      *(undefined1 *)(iVar1 + iVar3) = 0x7f;
    }
    *(undefined1 *)(iVar1 + 0x45) = 0x50;
  }
  else {
    iVar4 = *(int *)(DAT_07fcaa48 + 0x20);
    iVar2 = iVar4;
    if (*(char *)(DAT_07fcad70 + 0x34) != '\0') {
      iVar2 = iVar4 + -0xc;
    }
    if (iVar4 < 0xd) {
      iVar2 = iVar4;
    }
    convert_quotient_remainder_sequence_ring_s_at_3148(iVar2,DAT_07fcad74 + 0x40,2,0,in_r3);
    convert_quotient_remainder_sequence_ring_s_at_3148(*(undefined4 *)(iVar3 + 0x1c),iVar1 + 0x43,2,0);
    if ((*(byte *)(DAT_07fcade8 + 0x30) & 1) != 0) {
      *(undefined1 *)(iVar1 + 0x42) = 0x48;
      return;
    }
  }
  return;
}

