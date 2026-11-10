// rea decompile_all
// name: update_measurement_display_and_mode_state
// address: 0x7fc7380
// body: available
// range: 0x7fc7380-0x7fc749f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void update_measurement_display_and_mode_state(int result_mode)

{
  short sVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  
  iVar2 = DAT_07fc7520;
  if ((result_mode != 1) || (*(char *)(DAT_07fc7520 + 0xd) != '\x01')) {
    *(char *)(DAT_07fc7520 + 0xd) = (char)result_mode;
    piVar5 = DAT_07fc74a0;
    if (result_mode == 1) {
      *(undefined2 *)(iVar2 + 0x2a) = 0;
      conditional_mode_updates_using_two_display_at_74a8(*(undefined4 *)(DAT_07fc75c8 + 0x14));
      return;
    }
    iVar3 = *DAT_07fc74a0;
    if (*(int *)(iVar2 + 0x5c) != iVar3) {
      *(int *)(iVar2 + 0x5c) = iVar3;
      if (0xf < (uint)(iVar3 - *(int *)(iVar2 + 0x60))) {
        *(undefined2 *)(iVar2 + 0x2a) = 0;
      }
      iVar3 = DAT_07fc75c8;
      conditional_mode_updates_using_two_display_at_74a8(*(undefined4 *)(DAT_07fc75c8 + 0x14));
      sVar1 = *(short *)(iVar2 + 0x2a);
      if (sVar1 != 0) {
        uVar4 = piVar5[7];
        iVar3 = __aeabi_idiv(DAT_07fc74a0[6],10);
        piVar5 = DAT_07fc74a0;
        *(char *)(DAT_07fc75c8 + ((uVar4 & 1) * 6 + iVar3 & 0xff) + 0xa0) = (char)sVar1;
        *(undefined1 *)(DAT_07fc75c8 + 9) = 1;
        iVar3 = DAT_07fc75c8;
      }
      uVar4 = *(uint *)(iVar3 + 0x14);
      if (((int)(uVar4 << 0x1d) < 0) &&
         (((0x2d < (uint)(*piVar5 - *(int *)(iVar3 + 0x18)) ||
           ((*(byte *)(iVar3 + 10) == 1 && (sVar1 != 0)))) ||
          ((*(byte *)(iVar3 + 10) - 1 < 2 && (*(char *)(iVar3 + 0xf) == '\x01')))))) {
        update_mode_flags_and_transitions(0x40000);
        uVar4 = *(uint *)(iVar3 + 0x14);
      }
      if ((uVar4 & 0x22) != 0) {
        if ((2 < *(byte *)(DAT_07fc74a4 + 0x58)) &&
           (build_event_header_and_fourteen_byte_scratch_area(*(undefined1 *)(iVar3 + 2),*(undefined1 *)(iVar2 + 9),
                         *(undefined1 *)(iVar2 + 10),*(undefined1 *)(iVar2 + 0xb),
                         *(undefined1 *)(iVar2 + 0xc)),
           0x2c < (uint)(*piVar5 - *(int *)(iVar3 + 0x20)))) {
          update_mode_flags_and_transitions(0x20000);
          switch_display_state_and_run_hooks(0xd);
        }
        if (0x2c < (uint)(*piVar5 - *(int *)(iVar3 + 0x20))) {
          switch_display_state_and_run_hooks(0x16);
        }
      }
      if (((*(byte *)(iVar3 + 0x14) & 0x11) != 0) &&
         (uVar4 = *piVar5 - *(int *)(iVar3 + 0x20), 0x16 < uVar4)) {
        if (*(short *)(iVar2 + 0x2a) != 0) {
          switch_display_state_and_run_hooks(10);
          uVar4 = *piVar5 - *(int *)(iVar3 + 0x20);
        }
        if (0x2d < uVar4) {
          switch_display_state_and_run_hooks(0x16);
          return;
        }
      }
    }
  }
  return;
}

