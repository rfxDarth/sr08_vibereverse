// rea decompile_all
// name: fun_07fc76a0_parses_variable_length_service_at_76a0
// address: 0x7fc76a0
// body: available
// range: 0x7fc76a0-0x7fc77f3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 parse_variable_length_service_record(byte *record_bytes,uint record_length,byte *record_index_out,char *parse_status_out,undefined1 *field_offset_out)

{
  ushort uVar1;
  byte bVar2;
  char cVar3;
  char cVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  byte *pbVar8;
  uint uVar9;
  
  uVar1 = *(ushort *)(record_bytes + 0x1a);
  *parse_status_out = '\x17';
  uVar9 = 0;
  uVar7 = (uint)uVar1;
  pbVar8 = record_bytes;
  do {
    uVar6 = uVar7;
    pbVar8 = pbVar8 + 0x16;
    *record_index_out = (byte)uVar9;
    uVar5 = uVar6 & 0xffff;
    if (record_length < uVar5) {
      return 0x80;
    }
    if (record_bytes[0x21] <= uVar9) {
      return 0x80;
    }
    uVar9 = uVar9 + 1;
    uVar7 = *pbVar8 + uVar5;
  } while (*pbVar8 + uVar5 <= record_length);
  uVar7 = 0;
  *field_offset_out = 0;
  uVar9 = record_bytes[(uint)*record_index_out * 0x16 + 0x18] + uVar5;
  bVar2 = (byte)record_length;
  if (uVar9 <= record_length) {
    do {
      *field_offset_out = (char)uVar7;
      if (record_bytes[(uint)*record_index_out * 0x16 + 0x17] <= uVar7) {
        cVar3 = *parse_status_out;
L_parse_variable_length_service_record_at_07fc778a:
        if (cVar3 != '\x17') {
          return 0;
        }
        *DAT_07fc77f4 = 200;
        *DAT_07fc77f8 = 8;
        do {
                    /* WARNING: Do nothing block with infinite loop */
        } while( true );
      }
      uVar9 = (uVar9 & 0xffff) + 3;
      if (record_length <= (uVar9 & 0xffff)) {
        cVar3 = '\x15' - ((char)uVar9 + ~bVar2);
        *parse_status_out = cVar3;
        goto L_parse_variable_length_service_record_at_07fc778a;
      }
      if (((int)((uint)(*(ushort *)(record_bytes + (uint)*record_index_out * 0x16 + 4) >> (uVar7 & 0xff)) << 0x19)
           < 0) && (uVar9 = (uVar9 & 0xffff) + 1, (uVar9 & 0xffff) == record_length)) {
        *parse_status_out = '\x16';
        return 0;
      }
      uVar7 = uVar7 + 1;
    } while( true );
  }
  if (uVar5 == record_length) {
    *parse_status_out = '\0';
    return 0;
  }
  uVar7 = (uint)*(ushort *)(record_bytes + (uint)*record_index_out * 0x16 + 4);
  if ((int)(uVar7 << 0x1c) < 0) {
    if ((uVar6 + 1 & 0xffff) == record_length) {
      cVar3 = '\x01';
      goto L_parse_variable_length_service_record_at_07fc77d0;
    }
    uVar9 = uVar6 + 8;
    if (record_length <= (uVar9 & 0xffff)) goto L_parse_variable_length_service_record_at_07fc77c8;
    uVar9 = uVar6 + 9;
    if ((uVar9 & 0xffff) == record_length) {
      cVar3 = '\b';
      goto L_parse_variable_length_service_record_at_07fc77d0;
    }
L_parse_variable_length_service_record_at_07fc7746:
    if (((int)(uVar7 << 0x1d) < 0) && (uVar9 = uVar9 + 2, record_length <= (uVar9 & 0xffff))) {
      cVar4 = (char)uVar9 + ~bVar2;
      cVar3 = '\n';
    }
    else if (((*(ushort *)(record_bytes + (uint)*record_index_out * 0x16 + 4) & 1) == 0) ||
            (uVar9 = uVar9 + 5, (uVar9 & 0xffff) < record_length)) {
      if ((-1 < (int)(uVar7 << 0x1e)) || ((uVar9 + 3 & 0xffff) < record_length)) {
        *DAT_07fc77f4 = 200;
        *DAT_07fc77f8 = 8;
        do {
                    /* WARNING: Do nothing block with infinite loop */
        } while( true );
      }
      cVar4 = (char)(uVar9 + 3) + ~bVar2;
      cVar3 = '\x12';
    }
    else {
      cVar4 = (char)uVar9 + ~bVar2;
      cVar3 = '\x0f';
    }
  }
  else {
    uVar9 = uVar6 + 7;
    if ((uVar9 & 0xffff) < record_length) goto L_parse_variable_length_service_record_at_07fc7746;
L_parse_variable_length_service_record_at_07fc77c8:
    cVar4 = (char)uVar9 + ~bVar2;
    cVar3 = '\a';
  }
  cVar3 = cVar3 - cVar4;
L_parse_variable_length_service_record_at_07fc77d0:
  *parse_status_out = cVar3;
  return 0;
}

