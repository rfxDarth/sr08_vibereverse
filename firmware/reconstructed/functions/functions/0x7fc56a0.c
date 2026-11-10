// rea decompile_all
// name: crc32_update_buffer
// address: 0x7fc56a0
// body: available
// range: 0x7fc56a0-0x7fc5739 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


uint crc32_update_buffer(uint param_1,byte *param_2,int param_3)

{
  code *pcVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  
  pcVar1 = DAT_07fc573c;
  if (param_2 != (byte *)0x0) {
    param_1 = ~param_1;
    for (; 7 < param_3; param_3 = param_3 + -8) {
      uVar2 = (*pcVar1)(param_1 & 0xff ^ (uint)*param_2);
      uVar2 = param_1 >> 8 ^ uVar2;
      uVar3 = (*pcVar1)((uint)param_2[1] ^ uVar2 & 0xff);
      uVar3 = uVar2 >> 8 ^ uVar3;
      uVar2 = (*pcVar1)((uint)param_2[2] ^ uVar3 & 0xff);
      uVar2 = uVar3 >> 8 ^ uVar2;
      uVar3 = (*pcVar1)((uint)param_2[3] ^ uVar2 & 0xff);
      uVar3 = uVar2 >> 8 ^ uVar3;
      uVar2 = (*pcVar1)((uint)param_2[4] ^ uVar3 & 0xff);
      uVar2 = uVar3 >> 8 ^ uVar2;
      uVar3 = (*pcVar1)((uint)param_2[5] ^ uVar2 & 0xff);
      uVar3 = uVar2 >> 8 ^ uVar3;
      uVar2 = (*pcVar1)((uint)param_2[6] ^ uVar3 & 0xff);
      uVar2 = uVar3 >> 8 ^ uVar2;
      param_1 = (*pcVar1)((uint)param_2[7] ^ uVar2 & 0xff);
      param_1 = uVar2 >> 8 ^ param_1;
      param_2 = param_2 + 8;
    }
    if (param_3 != 0) {
      iVar4 = 0;
      do {
        uVar2 = crc32_update_one_byte(param_1 & 0xff ^ (uint)param_2[iVar4]);
        param_1 = param_1 >> 8 ^ uVar2;
        iVar4 = iVar4 + 1;
      } while (param_3 != iVar4);
    }
    return ~param_1;
  }
  return 0;
}

