// rea decompile_all
// name: read_sensor_conversion_result
// address: 0x7fc7308
// body: available
// range: 0x7fc7308-0x7fc734d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


ushort read_sensor_conversion_result(void)

{
  ushort uVar1;
  ushort uVar2;
  ushort *puVar3;
  ushort *puVar4;
  
  puVar3 = DAT_07fc7350;
  uVar1 = *DAT_07fc7350;
  *DAT_07fc7350 = *DAT_07fc7350 | 1;
  *puVar3 = *puVar3 & 0xffe1;
  puVar4 = DAT_07fc7354;
  DAT_07fc7354[1] = 0x400;
  *puVar4 = 5;
  do {
  } while ((int)((uint)*puVar4 << 0x1d) < 0);
  uVar2 = puVar4[2];
  *puVar3 = *puVar3 & 0xfff5 | 0x14;
  *puVar3 = *puVar3 & 0xfffe;
  *puVar3 = (*puVar3 & 0xffe1) + (uVar1 & 0x1e);
  return uVar2;
}

