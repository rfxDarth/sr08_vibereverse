// rea decompile_all
// name: computes_display_segment_position_selected_sr08_at_75d4
// address: 0x7fc75d4
// body: available
// range: 0x7fc75d4-0x7fc769f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


ushort compute_display_segment_position_from_mode_table(byte *table,uint row,uint segment,uint column)

{
  ushort uVar1;
  short sVar2;
  short sVar3;
  byte *pbVar4;
  uint uVar5;
  
  if (0x16 < segment) {
    return 0;
  }
  if (table[0x21] <= row) {
    return 0;
  }
  if ((0x12 < segment) && (table[row * 0x16 + 0x17] <= column)) {
    return 0;
  }
  sVar2 = *(short *)(table + 0x1a);
  pbVar4 = table;
  for (uVar5 = row; pbVar4 = pbVar4 + 0x16, uVar5 != 0; uVar5 = uVar5 - 1) {
    sVar2 = sVar2 + (ushort)*pbVar4;
  }
  if (segment < 0x13) {
    uVar1 = sVar2 + (short)segment;
    uVar5 = (uint)*(ushort *)(table + row * 0x16 + 4);
    if ((*(ushort *)(table + row * 0x16 + 4) & 1) == 0) {
      if (segment < 0x10) {
        if (10 < segment) {
          uVar1 = 0;
        }
      }
      else {
        uVar1 = uVar1 - 5;
      }
    }
    if (0xf < segment) {
      uVar1 = (ushort)((int)(uVar5 << 0x1e) >> 0x1f) & uVar1;
    }
    if (-1 < (int)(uVar5 << 0x1d)) {
      if (segment < 0xb) {
        if (8 < segment) {
          uVar1 = 0;
        }
      }
      else {
        uVar1 = uVar1 - 2;
      }
    }
    if ((int)(uVar5 << 0x1c) < 0) {
      return uVar1;
    }
    if (8 < segment) {
      return uVar1 - 2;
    }
    if (1 < segment) {
      return uVar1 - 1;
    }
    if (segment != 1) {
      return uVar1;
    }
  }
  else {
    sVar2 = sVar2 + (ushort)table[row * 0x16 + 0x18];
    for (uVar5 = 0; column != uVar5; uVar5 = uVar5 + 1) {
      if ((int)((uint)(*(ushort *)(table + row * 0x16 + 4) >> (uVar5 & 0xff)) << 0x19) < 0) {
        sVar3 = 4;
      }
      else {
        sVar3 = 3;
      }
      sVar2 = sVar3 + sVar2;
    }
    if ((segment != 0x16) ||
       (-1 < (int)((uint)(*(ushort *)(table + row * 0x16 + 4) >> (column & 0xff)) << 0x19)))
    {
      return ((short)segment + sVar2) - 0x13;
    }
  }
  return 0;
}

