// rea decompile_all
// name: build_command_response_from_status
// address: 0x7fca7a0
// body: available
// range: 0x7fca7a0-0x7fca7b3 inclusive
// range: 0x7fca7c8-0x7fca83d inclusive
// non_contiguous: true
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 build_command_response_from_status(int param_1,byte *param_2,undefined1 *param_3)

{
  undefined1 uVar1;
  undefined4 uVar2;
  byte bVar3;
  
  switch(param_1) {
  case 0x40:
    if (1 < *param_2) {
      param_3[1] = 7;
      uVar1 = 0xd0;
L_build_command_response_from_status_block_at_a7c8_at_07fca81a:
      *param_3 = uVar1;
      uVar2 = 0;
      bVar3 = 2;
      goto L_build_command_response_from_status_block_at_a7c8_at_07fca83a;
    }
    break;
  case 0x41:
    if (*param_2 != 0) {
      uVar1 = 6;
L_build_command_response_from_status_block_at_a7c8_at_07fca82e:
      *param_3 = uVar1;
      uVar2 = 0;
      bVar3 = 1;
      goto L_build_command_response_from_status_block_at_a7c8_at_07fca83a;
    }
    break;
  case 0x42:
    if (*param_2 != 0) {
      uVar1 = 0x40;
      goto L_build_command_response_from_status_block_at_a7c8_at_07fca82e;
    }
    break;
  case 0x43:
    if (*param_2 != 0) {
      uVar1 = 100;
      goto L_build_command_response_from_status_block_at_a7c8_at_07fca82e;
    }
    break;
  case 0x44:
    if (*param_2 != 0) {
      uVar1 = 0x32;
      goto L_build_command_response_from_status_block_at_a7c8_at_07fca82e;
    }
    break;
  default:
    if (param_1 != 7) {
      if (param_1 != 1) {
        return 1;
      }
      bVar3 = 6;
      __aeabi_memcpy(param_3,DAT_07fca840 + 2,6);
      uVar2 = 0;
      goto L_build_command_response_from_status_block_at_a7c8_at_07fca83a;
    }
    if (1 < *param_2) {
      param_3[1] = 1;
      uVar1 = 0xf4;
      goto L_build_command_response_from_status_block_at_a7c8_at_07fca81a;
    }
  }
  uVar2 = 4;
  bVar3 = 0;
L_build_command_response_from_status_block_at_a7c8_at_07fca83a:
  *param_2 = bVar3;
  return uVar2;
}

