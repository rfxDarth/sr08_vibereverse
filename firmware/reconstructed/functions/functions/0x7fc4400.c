// rea decompile_all
// name: serialize_status_byte_two_global_values_at_4400
// address: 0x7fc4400
// body: available
// range: 0x7fc4400-0x7fc4431 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void serialize_status_and_global_values_with_word(undefined4 input,int status)

{
  undefined1 *puVar1;
  undefined1 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  puVar1 = DAT_07fc443c;
  if (status == 1) {
    uVar2 = 0x3b;
  }
  else {
    uVar2 = 0xab;
  }
  uVar3 = *(undefined4 *)(DAT_07fc4434 + 0x44);
  uVar4 = *(undefined4 *)(DAT_07fc4438 + 0x2c);
  *DAT_07fc443c = uVar2;
  puVar1[1] = (char)uVar4;
  puVar1[2] = (char)uVar3;
  puVar1[3] = (char)((uint)uVar3 >> 8);
  puVar1[4] = (char)input;
  puVar1[5] = (char)((uint)input >> 8);
  puVar1[6] = (char)((uint)input >> 0x10);
  puVar1[7] = (char)((uint)input >> 0x18);
  return;
}

