// rea decompile_all
// name: temporarily_clear_hardware_flags_query_sensor_at_16f8
// address: 0x7fc16f8
// body: available
// range: 0x7fc16f8-0x7fc174b inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


bool temporarily_clear_hardware_flags_query_sensor_at_16f8(void)

{
  ushort uVar1;
  ushort uVar2;
  int iVar3;
  int iVar4;
  
  iVar3 = DAT_07fc17f4;
  uVar1 = *(ushort *)(DAT_07fc17f4 + 2);
  uVar2 = *(ushort *)(DAT_07fc17f4 + 2);
  *(ushort *)(DAT_07fc17f4 + 2) = *(ushort *)(DAT_07fc17f4 + 2) & 0xfffe;
  *(ushort *)(iVar3 + 2) = *(ushort *)(iVar3 + 2) & 0xfeff;
  DCoffsetCalibration();
  PllLF_IFF_MIX_CapCalibration();
  iVar4 = modulationGainCalibration(2,8,0);
  *(ushort *)(iVar3 + 2) = *(ushort *)(iVar3 + 2) & 0xfffe | uVar1 & 1;
  *(ushort *)(iVar3 + 2) = *(ushort *)(iVar3 + 2) & 0xfeff | uVar2 & 0x100;
  return iVar4 != 0;
}

