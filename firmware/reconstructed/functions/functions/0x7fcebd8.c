// rea decompile_all
// name: serialize_current_measurement_record_mode_specific_at_ebd8
// address: 0x7fcebd8
// body: available
// range: 0x7fcebd8-0x7fcec25 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined8 serialize_measurement_record_by_mode(uint *param_1)

{
  byte bVar1;
  int iVar2;
  undefined1 uVar3;
  uint uVar4;
  uint local_20;
  undefined4 local_18;
  
  uVar3 = 0;
  iVar2 = *(int *)(DAT_07fcec28 + 0x1c);
  bVar1 = *(byte *)(iVar2 + 2);
  local_20 = (uint)bVar1;
  uVar4 = *(uint *)(iVar2 + 4);
  local_18 = (uint)CONCAT11(*(undefined1 *)(iVar2 + 0xca0),*(undefined1 *)(iVar2 + 0xc95)) << 0x10;
  if ((bVar1 == 3) || (bVar1 == 4)) {
    local_18 = CONCAT31(local_18._1_3_,*(undefined1 *)(iVar2 + 8));
    uVar3 = *(undefined1 *)(iVar2 + 0xc88);
  }
  else {
    local_18 = (uint)local_18._1_3_ << 8;
  }
  local_18._0_2_ = CONCAT11(uVar3,(undefined1)local_18);
  *param_1 = local_20;
  param_1[1] = uVar4;
  param_1[2] = local_18;
  param_1[3] = 0;
  return CONCAT44(uVar4,local_20);
}

