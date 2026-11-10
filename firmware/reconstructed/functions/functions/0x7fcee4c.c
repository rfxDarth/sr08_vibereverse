// rea decompile_all
// name: dispatch_batch_item_three_sign_extended_at_ee4c
// address: 0x7fcee4c
// body: available
// range: 0x7fcee4c-0x7fcee8f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4
dispatch_batch_item_three_sign_extended_at_ee4c(int param_1,int param_2,undefined4 param_3,undefined4 param_4,uint param_5,int param_6,
            int param_7,int param_8)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  
  uVar3 = 0;
  uVar2 = 0;
  iVar4 = param_1;
  iVar5 = param_2;
  if (*(int *)(DAT_07fcee90 + 0x1c) != 0) {
    for (; uVar3 < param_5; uVar3 = uVar3 + 1 & 0xff) {
      iVar1 = uVar3 * 2;
      process_sensor_frame_and_update_state(*(undefined4 *)(param_1 + uVar3 * 4),*(undefined4 *)(param_2 + uVar3 * 4),param_3
                   ,param_4,(int)*(short *)(param_6 + iVar1),(int)*(short *)(param_7 + iVar1),
                   (int)*(short *)(param_8 + iVar1),iVar4,iVar5);
    }
    uVar2 = 1;
  }
  return uVar2;
}

