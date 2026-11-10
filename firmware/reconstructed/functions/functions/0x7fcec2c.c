// rea decompile_all
// name: initialize_sensor_processing_state
// address: 0x7fcec2c
// body: available
// range: 0x7fcec2c-0x7fcee31 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 initialize_sensor_processing_state(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  short division_remainder;
  int division_remainder_00;
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  
  iVar3 = DAT_07fcee38;
  iVar2 = DAT_07fcee34;
  *(int *)(DAT_07fcee38 + 0x1c) = DAT_07fcee34;
  *(undefined1 *)(iVar2 + 2) = 1;
  uVar5 = 0;
  *(undefined4 *)(iVar2 + 4) = 0;
  *(undefined1 *)(iVar2 + 8) = 0;
  *(undefined1 *)(iVar2 + 10) = 0;
  *(undefined1 *)(iVar2 + 0xca0) = 4;
  *(undefined1 *)(iVar2 + 0xca1) = 0;
  __aeabi_uidiv(*(undefined4 *)(iVar3 + 8),3,param_3,param_4,param_4);
  do {
    iVar1 = uVar5 * 4 + iVar2;
    *(undefined4 *)(iVar1 + 0x288) = 0;
    *(undefined4 *)(iVar1 + 0x2d4) = 0;
    iVar1 = uVar5 * 2;
    uVar5 = uVar5 + 1 & 0xffff;
    *(short *)(iVar1 + iVar2 + 0xc74) = division_remainder + 0x61;
  } while (uVar5 < 8);
  iVar2 = *(int *)(iVar3 + 0x1c);
  uVar5 = 0;
  do {
    iVar1 = uVar5 * 4 + iVar2;
    *(undefined4 *)(iVar1 + 0x2a8) = 0;
    uVar5 = uVar5 + 1 & 0xffff;
    *(undefined4 *)(iVar1 + 0x2f4) = 0;
  } while (uVar5 < 8);
  iVar2 = *(int *)(iVar3 + 0x1c);
  uVar5 = 0;
  *(undefined4 *)(iVar2 + 0x34) = 0;
  *(undefined4 *)(iVar2 + 0x38) = 0;
  *(undefined4 *)(iVar2 + 0x3c) = 0;
  *(undefined4 *)(iVar2 + 0x40) = 0;
  *(undefined4 *)(iVar2 + 0x44) = 0;
  *(undefined4 *)(iVar2 + 0x48) = 0;
  *(undefined4 *)(iVar2 + 0x4c) = 0;
  *(undefined4 *)(iVar2 + 0x50) = 0;
  *(undefined4 *)(iVar2 + 0x54) = 0;
  *(undefined4 *)(iVar2 + 0x58) = 0;
  *(undefined4 *)(iVar2 + 0xc) = 0;
  *(undefined4 *)(iVar2 + 0x10) = 0;
  *(undefined4 *)(iVar2 + 0x14) = 0;
  *(undefined4 *)(iVar2 + 0x18) = 0;
  *(undefined4 *)(iVar2 + 0x1c) = 0;
  *(undefined4 *)(iVar2 + 0x20) = 0;
  *(undefined4 *)(iVar2 + 0x24) = 0;
  *(undefined4 *)(iVar2 + 0x28) = 0;
  *(undefined4 *)(iVar2 + 0x2c) = 0;
  *(undefined4 *)(iVar2 + 0x30) = 0;
  do {
    iVar3 = uVar5 * 4 + iVar2;
    *(undefined4 *)(iVar3 + 0x250) = 0;
    uVar5 = uVar5 + 1 & 0xffff;
    *(undefined4 *)(iVar3 + 0x26c) = 0;
  } while (uVar5 < 7);
  iVar4 = *(int *)(DAT_07fcee38 + 0x1c);
  *(undefined4 *)(iVar4 + 800) = 0;
  *(undefined4 *)(iVar4 + 0x324) = 0;
  *(undefined4 *)(iVar4 + 0x328) = 0;
  *(undefined4 *)(iVar4 + 0x32c) = 0;
  *(undefined4 *)(iVar4 + 0x330) = 0;
  *(undefined4 *)(iVar4 + 0x334) = 0;
  *(undefined4 *)(iVar4 + 0x338) = 0;
  *(undefined4 *)(iVar4 + 0x33c) = 0;
  *(undefined4 *)(iVar4 + 0x344) = 0;
  *(undefined4 *)(iVar4 + 0x348) = 0;
  *(undefined4 *)(iVar4 + 0x34c) = 0;
  *(undefined4 *)(iVar4 + 0x350) = 0;
  *(undefined4 *)(iVar4 + 0x354) = 0;
  *(undefined4 *)(iVar4 + 0x358) = 0;
  *(undefined4 *)(iVar4 + 0x35c) = 0;
  *(undefined4 *)(iVar4 + 0x360) = 0;
  *(undefined4 *)(iVar4 + 0x364) = 0;
  *(undefined4 *)(iVar4 + 0x36c) = 0;
  *(undefined4 *)(iVar4 + 0x370) = 0;
  *(undefined4 *)(iVar4 + 0x374) = 0;
  *(undefined4 *)(iVar4 + 0x378) = 0;
  *(undefined4 *)(iVar4 + 0x37c) = 0;
  iVar2 = DAT_07fcee38;
  *(undefined4 *)(iVar4 + 0x380) = 0;
  __aeabi_uidiv(*(undefined4 *)(iVar2 + 8),3,iVar3 + 0x200,iVar1 + 0x280,param_4);
  *(int *)(iVar4 + 900) = division_remainder_00 + 0x61;
  *(undefined1 *)(iVar4 + 9) = 99;
  *(undefined4 *)(iVar4 + 0x388) = 0x1880;
  iVar2 = DAT_07fcee3c;
  iVar3 = *(int *)(DAT_07fcee38 + 0x24);
  *(int *)(iVar4 + 0x390) = iVar3;
  *(int *)(iVar4 + 0x38c) = iVar3 + iVar2;
  *(undefined1 *)(DAT_07fcee38 + 1) = 0;
  *(undefined4 *)(iVar4 + 0x394) = 0;
  *(undefined4 *)(iVar4 + 0x398) = 0;
  *(undefined4 *)(iVar4 + 0x39c) = 0;
  *(undefined4 *)(iVar4 + 0x3a0) = 0;
  uVar5 = 0;
  do {
    iVar2 = uVar5 * 4 + iVar4;
    *(undefined4 *)(iVar2 + 0x46c) = 0;
    uVar5 = uVar5 + 1 & 0xffff;
    *(undefined4 *)(iVar2 + 0x4ec) = 0;
    iVar2 = DAT_07fcee38;
  } while (uVar5 < 0x20);
  uVar5 = 0;
  iVar1 = *(int *)(DAT_07fcee38 + 0x1c);
  do {
    iVar4 = uVar5 * 4 + iVar1;
    *(undefined4 *)(iVar4 + 0x3a4) = 0;
    uVar5 = uVar5 + 1 & 0xffff;
    *(undefined4 *)(iVar4 + 0x408) = 0;
  } while (uVar5 < 0x19);
  iVar1 = *(int *)(iVar2 + 0x1c);
  *(undefined1 *)(iVar1 + 0xc86) = 0;
  *(undefined1 *)(iVar1 + 0xc87) = 0;
  *(undefined1 *)(iVar1 + 0xc88) = 0;
  *(undefined1 *)(iVar1 + 0xc89) = 0;
  *(undefined1 *)(iVar1 + 0xc8a) = 0;
  *(undefined1 *)(iVar1 + 0xc8b) = 0;
  *(undefined4 *)(iVar1 + 0xc8c) = 0;
  uVar5 = 0;
  do {
    iVar4 = uVar5 * 2 + iVar1;
    *(undefined2 *)(iVar4 + 0x56c) = 0;
    *(undefined2 *)(iVar4 + 0x634) = 0;
    iVar4 = uVar5 * 8 + iVar1;
    *(undefined4 *)(iVar4 + 0x6fc) = 0;
    uVar5 = uVar5 + 1 & 0xffff;
    *(undefined4 *)(iVar4 + 0x700) = 0;
  } while (uVar5 < 100);
  uVar5 = 0;
  iVar1 = *(int *)(iVar2 + 0x1c);
  do {
    iVar4 = uVar5 * 4;
    uVar5 = uVar5 + 1 & 0xffff;
    *(undefined4 *)(iVar4 + iVar1 + 0xa1c) = 0;
  } while (uVar5 < 0x96);
  iVar1 = *(int *)(iVar2 + 0x1c);
  *(undefined1 *)(iVar1 + 0xc90) = 0;
  *(undefined2 *)(iVar1 + 0xc92) = 0;
  *(undefined1 *)(iVar1 + 0xc94) = 0;
  uVar5 = 0;
  do {
    iVar4 = iVar1 + uVar5;
    uVar5 = uVar5 + 1 & 0xffff;
    *(undefined1 *)(iVar4 + 0x1ec) = 0x40;
  } while (uVar5 < 100);
  iVar1 = *(int *)(iVar2 + 0x1c);
  uVar5 = 0;
  do {
    iVar4 = uVar5 * 4 + iVar1;
    *(undefined4 *)(iVar4 + 0x5c) = 0;
    uVar5 = uVar5 + 1 & 0xffff;
    *(undefined4 *)(iVar4 + 0x124) = 0;
  } while (uVar5 < 0x32);
  iVar1 = *(int *)(iVar2 + 0x1c);
  *(undefined1 *)(iVar1 + 0xc95) = 0;
  *(undefined4 *)(iVar1 + 0x370) = 0x40;
  iVar2 = DAT_07fcee40;
  *(undefined4 *)(iVar1 + 0xc9c) = 0;
  *(int *)(iVar1 + 0xc98) = iVar3 + iVar2;
  clear_sensor_processing_history_tables();
  return 1;
}

