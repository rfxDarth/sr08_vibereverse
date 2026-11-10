// rea decompile_all
// name: scan_bounded_record_range_until_callback_at_87f4
// address: 0x7fc87f4
// body: available
// range: 0x7fc87f4-0x7fc8833 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


int scan_bounded_record_range_until_callback_at_87f4(void)

{
  char cVar1;
  uint in_r3;
  int iVar2;
  uint uVar3;
  uint uVar4;
  uint local_18;
  
  cVar1 = '\0';
  local_18 = in_r3 & 0xffffff00;
  uVar4 = *(int *)(v204_measurement_range_state_bytes + 0x30) - 1U &
          *(int *)(v204_measurement_range_state_bytes + 0x28) - *(int *)(v204_measurement_range_state_bytes + 0x2c);
  if (6 < uVar4) {
    uVar3 = 0;
    iVar2 = v204_measurement_range_state_bytes + 0x28;
    do {
      if (uVar4 == uVar3) {
        cVar1 = '\x01';
        goto scan_bounded_record_range_until_callback_at_87f4_label_at_07fc8830;
      }
      copy_ring_buffer_entry_if_index_available(iVar2,uVar3,&local_18);
      uVar3 = uVar3 + 1;
    } while ((char)local_18 == '\x01');
    cVar1 = -1;
  }
scan_bounded_record_range_until_callback_at_87f4_label_at_07fc8830:
  return (int)cVar1;
}

