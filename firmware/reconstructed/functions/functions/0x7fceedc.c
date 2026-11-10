// rea decompile_all
// name: write_shared_sensor_profile_fields
// address: 0x7fceedc
// body: available
// range: 0x7fceedc-0x7fceef1 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void write_shared_sensor_profile_fields(undefined1 profile_byte_0,undefined1 profile_byte_1,undefined1 profile_byte_2,undefined4 profile_word_04,
                 undefined4 profile_word_08,undefined1 profile_byte_0c)

{
  undefined1 *puVar1;
  
  puVar1 = DAT_07fceef4;
  *DAT_07fceef4 = profile_byte_0;
  puVar1[1] = profile_byte_1;
  puVar1[2] = profile_byte_2;
  *(undefined4 *)(puVar1 + 8) = profile_word_08;
  *(undefined4 *)(puVar1 + 4) = profile_word_04;
  puVar1[0xc] = profile_byte_0c;
  return;
}

