// rea decompile_all
// name: configure_command_record
// address: 0x7fc8134
// body: available
// range: 0x7fc8134-0x7fc8297 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void configure_command_record(int param_1)

{
  int iVar1;
  int iVar2;
  undefined1 uVar3;
  undefined2 uVar4;
  byte bVar5;
  byte bVar6;
  char cVar7;
  undefined1 unaff_r6;
  char cVar8;
  undefined1 local_30;
  undefined1 local_2c;
  undefined1 local_28;
  undefined1 local_24;
  undefined4 local_1c;
  
  ensure_radio_profile_then_scan_paired_bytes(DAT_07fc8298);
  iVar1 = DAT_07fc829c;
  *(undefined1 *)(DAT_07fc829c + 0x53) = 0x83;
  if (param_1 == 1) {
    *(undefined1 *)(iVar1 + 0x13) = 0x30;
    *(undefined1 *)(iVar1 + 0x11) = 0x30;
    *(undefined1 *)(iVar1 + 0xf) = 8;
    *(undefined1 *)(iVar1 + 0xd) = 8;
    bVar5 = 0x10;
    cVar7 = '\x01';
    bVar6 = 0x20;
    cVar8 = '\0';
    unaff_r6 = 10;
    local_1c = 0x19;
    local_2c = 0;
    local_30 = 0;
    uVar3 = 0;
    local_28 = 0;
    local_24 = 0;
  }
  else if (param_1 == 2) {
    *(undefined1 *)(iVar1 + 0x53) = 0x80;
    *(undefined1 *)(iVar1 + 0x15) = 0x88;
    uVar3 = 0x40;
    *(undefined1 *)(iVar1 + 0x13) = 0x40;
    *(undefined1 *)(iVar1 + 0x11) = 0x40;
    *(undefined1 *)(iVar1 + 0xf) = 0x40;
    *(undefined1 *)(iVar1 + 0xd) = 0x40;
    *(undefined1 *)(iVar1 + 3) = 0xff;
    local_24 = 2;
    local_28 = 4;
    cVar7 = '\0';
    local_1c = 0x19;
    cVar8 = '\x01';
    unaff_r6 = 0;
    local_2c = 0;
    local_30 = 0;
    bVar6 = 0;
    bVar5 = 0;
  }
  else if (param_1 == 0x2000) {
    unaff_r6 = 0;
    *(undefined1 *)(iVar1 + 0x53) = 0;
    local_24 = 2;
    bVar5 = 0x40;
    cVar8 = '\x01';
    uVar3 = 0x20;
    local_1c = 0x19;
    cVar7 = '\x01';
    local_30 = 0x20;
    local_2c = 0x20;
    bVar6 = 0;
    local_28 = 1;
  }
  else {
    local_1c = 100;
    if (param_1 == 0x800) {
      local_2c = 0x20;
      local_30 = 0;
      local_28 = 1;
      bVar5 = 0;
    }
    else if (param_1 == 0x1000) {
      bVar5 = 0x40;
      local_2c = 8;
      local_30 = 8;
      local_28 = 1;
    }
    else {
      uVar3 = 0;
      if (param_1 != 0x400) {
        cVar8 = '\x01';
        cVar7 = '\x01';
        bVar5 = 0;
        local_28 = 0;
        local_24 = 0;
        bVar6 = bVar5;
        goto L_configure_command_record_at_07fc823c;
      }
      bVar5 = 0x40;
      local_30 = 0x20;
      local_2c = 0;
      local_28 = 0;
    }
    cVar8 = '\x01';
    unaff_r6 = 0;
    cVar7 = '\x01';
    uVar3 = 0;
    local_24 = 0;
    bVar6 = 0;
  }
L_configure_command_record_at_07fc823c:
  *(undefined1 *)(iVar1 + 0x25) = uVar3;
  *(undefined1 *)(iVar1 + 0x23) = local_30;
  *(undefined1 *)(iVar1 + 0x21) = local_2c;
  *(byte *)(iVar1 + 0x29) = bVar5 | local_24;
  *(byte *)(iVar1 + 0x27) = bVar6 | local_28;
  *(undefined1 *)(iVar1 + 0x1f) = unaff_r6;
  iVar2 = DAT_07fc8568;
  *(undefined1 *)(DAT_07fc8568 + 0x1b) = 0;
  uVar4 = __aeabi_uidiv(32000,local_1c);
  *(char *)(iVar1 + 5) = (char)uVar4;
  *(char *)(iVar1 + 7) = (char)((ushort)uVar4 >> 8);
  *(char *)(iVar1 + 0x19) = cVar8 * 'P' + cVar7 * -0x60 + '\x0f';
  ensure_radio_profile_then_scan_paired_bytes(iVar1);
  configure_radio_state_and_send_command_6a();
  *(undefined1 *)(iVar2 + 0x11) = 1;
  return;
}

