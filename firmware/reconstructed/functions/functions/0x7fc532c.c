// rea decompile_all
// name: variadic_sr08_format_builder_assembly_preserves_at_532c
// address: 0x7fc532c
// body: available
// range: 0x7fc532c-0x7fc5457 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 format_and_send_uart_message(byte *format,int param_2,undefined4 param_3,undefined4 param_4)

{
  byte *pbVar1;
  int iVar2;
  int iVar3;
  char cVar4;
  undefined *puVar5;
  undefined4 uVar6;
  int *piVar7;
  int iVar8;
  byte bVar9;
  undefined4 unaff_lr;
  byte local_a0 [96];
  int *local_40;
  undefined auStack_3c [24];
  byte *local_24;
  int local_c [3];
  
  local_c[0] = param_2;
  local_c[1] = param_3;
  local_c[2] = param_4;
  piVar7 = local_c;
  local_24 = local_a0;
  iVar8 = 1 - (int)local_24;
  bVar9 = *format;
  local_40 = piVar7;
  do {
    if ((byte *)0x5f < local_24 + iVar8) break;
    if (bVar9 == 0x25) {
      bVar9 = format[1];
      pbVar1 = format + 2;
      if (bVar9 == 0x30) {
        bVar9 = *pbVar1;
        if (bVar9 == 0) break;
        cVar4 = bVar9 - 0x30;
        if (9 < (byte)(bVar9 - 0x30)) {
          cVar4 = '\0';
        }
        bVar9 = format[3];
        pbVar1 = format + 4;
      }
      else {
        cVar4 = '\0';
      }
      if ((bVar9 | 4) == 0x6c) {
        bVar9 = *pbVar1;
        pbVar1 = pbVar1 + 1;
      }
      if (bVar9 == 0x58) {
format_and_send_uart_message_label_at_07fc53d6:
        iVar2 = *piVar7;
        piVar7 = piVar7 + 1;
        if (bVar9 == 0x75) {
          uVar6 = 10;
        }
        else {
          uVar6 = 0x10;
        }
        uVar6 = format_integer_radix_zero_padded(iVar2,uVar6,bVar9 == 0x58,auStack_3c,cVar4);
        puVar5 = auStack_3c;
      }
      else {
        if (bVar9 == 99) {
          bVar9 = (byte)*piVar7;
          piVar7 = piVar7 + 1;
          goto format_and_send_uart_message_label_at_07fc5370;
        }
        if ((bVar9 == 100) || (bVar9 == 0x69)) {
          iVar2 = *piVar7;
          piVar7 = piVar7 + 1;
          puVar5 = auStack_3c;
          uVar6 = format_integer_radix_zero_padded(iVar2,10,0,puVar5,cVar4);
        }
        else {
          if (bVar9 == 0x73) {
            iVar2 = 0;
            do {
              iVar3 = iVar2;
              iVar2 = iVar3 + 1;
            } while (*(char *)(*piVar7 + iVar3) != '\0');
            append_bounded_bytes_and_terminate(&local_24,local_a0,*piVar7,iVar3);
            piVar7 = piVar7 + 1;
            goto format_and_send_uart_message_label_at_07fc541e;
          }
          if ((bVar9 == 0x75) || (bVar9 == 0x78)) goto format_and_send_uart_message_label_at_07fc53d6;
          if (bVar9 == 0) break;
          append_bounded_bytes_and_terminate(&local_24,local_a0,s_FATAL__unsupported_printf_charac_07fc5458,0x25);
          if (local_24 + iVar8 < (byte *)0x60) {
            *local_24 = bVar9;
            local_24[1] = 0;
            local_24 = local_24 + 1;
          }
          uVar6 = 2;
          puVar5 = &DAT_07fc5480;
        }
      }
      append_bounded_bytes_and_terminate(&local_24,local_a0,puVar5,uVar6);
    }
    else {
      pbVar1 = format + 1;
format_and_send_uart_message_label_at_07fc5370:
      *local_24 = bVar9;
      local_24[1] = 0;
      local_24 = local_24 + 1;
    }
format_and_send_uart_message_label_at_07fc541e:
    bVar9 = *pbVar1;
    format = pbVar1;
  } while (bVar9 != 0);
  transmit_uart_buffer(local_a0,(int)local_24 - (int)local_a0);
  return unaff_lr;
}

