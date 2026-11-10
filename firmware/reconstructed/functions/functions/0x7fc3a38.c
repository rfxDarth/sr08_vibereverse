// rea decompile_all
// name: update_mode_flags_and_transitions
// address: 0x7fc3a38
// body: available
// range: 0x7fc3a38-0x7fc3aa1 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void update_mode_flags_and_transitions(uint mode_flags)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  
  iVar1 = DAT_07fc3e00;
  uVar3 = *(uint *)(DAT_07fc3e00 + 0x14);
  if (*(char *)(DAT_07fc3d1c + 0xc) == '\x1e') {
    *(undefined4 *)(DAT_07fc3e00 + 0x14) = 0;
  }
  else {
    uVar2 = uVar3;
    if ((mode_flags & 0xffff) != 0) {
      *(undefined4 *)(DAT_07fc3e00 + 0x20) = *DAT_07fc3aa8;
      uVar2 = uVar3 | mode_flags;
      *(uint *)(iVar1 + 0x14) = uVar2;
    }
    if (mode_flags >> 0x10 != 0) {
      uVar2 = uVar2 & ~(mode_flags >> 0x10);
      *(uint *)(iVar1 + 0x14) = uVar2;
    }
    if (uVar2 != 0) goto L_update_mode_flags_and_transitions_block_at_3a38_at_07fc3a90;
  }
  if ((uVar3 & 1) != 0) {
    emit_event_packet_when_active_mode_changes(*(undefined1 *)(DAT_07fc3dd4 + 0x2a));
    initialize_and_dispatch_three_byte_request(0x27,0,0);
  }
  if ((int)(uVar3 << 0x1e) < 0) {
    initialize_and_dispatch_three_byte_request(0x28,0,0);
  }
L_update_mode_flags_and_transitions_block_at_3a38_at_07fc3a90:
  if (uVar3 != *(uint *)(iVar1 + 0x14)) {
    start_or_stop_sensor_calibration(0);
    derive_active_sensor_range_flags_notify_at_37d0();
  }
  return;
}

