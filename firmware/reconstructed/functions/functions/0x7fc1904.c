// rea decompile_all
// name: calls_registered_startup_callback_transfers_rom_at_1904
// address: 0x7fc1904
// body: available
// range: 0x7fc1904-0x7fc1927 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


longlong call_registered_startup_callbacks_then_transfer_to_rom(void)

{
  longlong lVar1;
  uint uVar2;
  int extraout_r1;
  uint uVar3;
  uint extraout_r2;
  uint extraout_r3;
  undefined4 *puVar4;
  int iVar5;
  int iVar6;
  bool bVar7;
  undefined8 uVar8;
  longlong lVar9;
  int iStack_2c;
  
  for (puVar4 = (undefined4 *)v204_startup_records; puVar4 < &DAT_07fd0360; puVar4 = puVar4 + 4) {
    (*(code *)puVar4[3])(*puVar4,puVar4[1],puVar4[2]);
  }
  thunk_initialize_sensor_measurement_state();
  uVar2 = (int)puVar4 << 0xd;
  lVar1 = 0;
  iVar5 = 0x40;
  iStack_2c = extraout_r1;
  while (iVar6 = iVar5 + -1, 0 < iVar5) {
    uVar8 = shift_unsigned_64_right(uVar2,iStack_2c,iVar6);
    uVar3 = (uint)((ulonglong)uVar8 >> 0x20);
    iVar5 = iVar6;
    if (extraout_r3 < uVar3 || uVar3 - extraout_r3 < (uint)(extraout_r2 <= (uint)uVar8)) {
      uVar8 = __aeabi_llsl(extraout_r2,extraout_r3,iVar6);
      bVar7 = uVar2 < (uint)uVar8;
      uVar2 = uVar2 - (uint)uVar8;
      iStack_2c = (iStack_2c - (int)((ulonglong)uVar8 >> 0x20)) - (uint)bVar7;
      lVar9 = __aeabi_llsl(1,0,iVar6);
      lVar1 = lVar9 + lVar1;
    }
  }
  return lVar1;
}

