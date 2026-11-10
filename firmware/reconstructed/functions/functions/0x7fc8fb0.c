// rea decompile_all
// name: validate_cached_text_payload_return_install_at_8fb0
// address: 0x7fc8fb0
// body: available
// range: 0x7fc8fb0-0x7fc8ff5 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined * validate_cached_text_payload_return_install_at_8fb0(byte *output_length,undefined4 unused_abi_argument_2,undefined4 unused_abi_argument_3,undefined4 operation)

{
  int iVar1;
  uint uVar2;
  undefined *puVar3;
  byte bVar4;
  uint uVar5;
  
  *output_length = 0;
  iVar1 = DAT_07fc8ff8;
  perform_flash_memory_operation(DAT_07fc8ff8 + 0x14,0x64000,0x14,0,operation);
  if (*(char *)(iVar1 + 0x14) == '+') {
    bVar4 = *(byte *)(iVar1 + 0x27);
    uVar5 = (uint)bVar4;
    if ((uVar5 != 0) && (uVar5 < 0x12)) {
      puVar3 = (undefined *)(iVar1 + 0x15);
      uVar2 = nul_terminated_string_length(puVar3);
      if (uVar2 == uVar5) goto validate_cached_text_payload_return_install_at_8fb0_label_at_07fc8ff0;
    }
  }
  *(undefined1 *)(iVar1 + 0x14) = 0x84;
  puVar3 = &DAT_07fc8ffc;
  bVar4 = 4;
validate_cached_text_payload_return_install_at_8fb0_label_at_07fc8ff0:
  *output_length = bVar4;
  return puVar3;
}

