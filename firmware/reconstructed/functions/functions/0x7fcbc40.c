// rea decompile_all
// name: register_custom_gatt_service_and_initialize_state
// address: 0x7fcbc40
// body: available
// range: 0x7fcbc40-0x7fcbfc9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


int register_custom_gatt_service_and_initialize_state(int service_context,ushort *service_handle_out,ushort service_value,short option_bits,undefined1 *initial_protocol_byte)

{
  ushort uVar1;
  ushort uVar2;
  undefined4 uVar3;
  ushort *puVar4;
  int iVar5;
  ushort *puVar6;
  undefined2 local_1c [2];
  undefined1 local_18;
  
  puVar4 = (ushort *)ke_malloc(0x1e0);
  *puVar4 = *service_handle_out;
  puVar4[1] = *(ushort *)(service_context + 0x14);
  *(byte *)(puVar4 + 2) = ((byte)option_bits & 0x1e) + 0x80;
  __aeabi_memcpy(puVar4 + 3,&DAT_07fcbfcc,0x10);
  uVar1 = (ushort)v204_gatt_characteristic_declaration_uuid;
  puVar4[0xc] = uVar1;
  __aeabi_memclr(puVar4 + 0xd,0x16);
  uVar3 = v204_gatt_service_literal_words;
  puVar4[0x20] = (ushort)v204_gatt_service_literal_words;
  uVar2 = (ushort)((uint)uVar3 >> 0x10);
  puVar4[0x21] = uVar2;
  puVar4[0x24] = uVar1;
  puVar4[0x22] = 4;
  puVar4[0x1f] = (ushort)DAT_07fcbfe4;
  puVar4[0x1e] = (ushort)DAT_07fcbfe8;
  puVar4[0x1d] = (ushort)DAT_07fcbfec;
  puVar4[0x1c] = (ushort)DAT_07fcbff0;
  puVar4[0x1b] = (ushort)DAT_07fcbff4;
  puVar4[0x1a] = (ushort)DAT_07fcbff8;
  puVar4[0x19] = (ushort)DAT_07fcbffc;
  puVar4[0x18] = (ushort)DAT_07fcc000;
  __aeabi_memclr(puVar4 + 0x25,0x16);
  puVar4[0x38] = (ushort)v204_gatt_service_literal_words;
  puVar4[0x30] = (ushort)DAT_07fcc004;
  puVar4[0x39] = uVar2;
  puVar4[0x3c] = (ushort)v204_gatt_characteristic_declaration_uuid;
  puVar4[0x3a] = 4;
  puVar4[0x37] = (ushort)DAT_07fcc008;
  puVar4[0x36] = (ushort)DAT_07fcc00c;
  puVar4[0x35] = (ushort)DAT_07fcc010;
  puVar4[0x34] = (ushort)DAT_07fcc014;
  puVar4[0x33] = (ushort)DAT_07fcc018;
  puVar4[0x32] = (ushort)DAT_07fcc01c;
  puVar4[0x31] = (ushort)DAT_07fcc020;
  __aeabi_memclr(puVar4 + 0x3d,0x16);
  puVar4[0x48] = (ushort)DAT_07fcc024;
  uVar3 = DAT_07fcc028;
  uVar1 = (ushort)((uint)DAT_07fcc028 >> 0x10);
  puVar4[0x51] = uVar1;
  puVar4[0x50] = (ushort)uVar3;
  puVar4[0x54] = (ushort)v204_gatt_characteristic_declaration_uuid;
  puVar4[0x52] = 4;
  puVar4[0x4f] = (ushort)DAT_07fcc02c;
  puVar4[0x4e] = (ushort)DAT_07fcc030;
  puVar4[0x4d] = (ushort)DAT_07fcc034;
  puVar4[0x4c] = (ushort)DAT_07fcc038;
  puVar4[0x4b] = (ushort)DAT_07fcc03c;
  puVar4[0x4a] = (ushort)DAT_07fcc040;
  puVar4[0x49] = (ushort)DAT_07fcc044;
  __aeabi_memclr(puVar4 + 0x55,0x16);
  puVar4[0x60] = (ushort)DAT_07fcc048;
  puVar4[0x69] = uVar2;
  puVar4[0x68] = (ushort)v204_gatt_service_literal_words;
  puVar4[0x6c] = (ushort)v204_gatt_characteristic_declaration_uuid;
  puVar4[0x6a] = 2;
  puVar4[0x67] = (ushort)DAT_07fcc04c;
  puVar4[0x66] = (ushort)DAT_07fcc050;
  puVar4[0x65] = 0xc;
  puVar4[100] = (ushort)DAT_07fcc054;
  puVar4[99] = (ushort)DAT_07fcc058;
  puVar4[0x62] = (ushort)DAT_07fcc05c;
  puVar4[0x61] = (ushort)DAT_07fcc060;
  __aeabi_memclr(puVar4 + 0x6d,0x16);
  puVar4[0x80] = (ushort)DAT_07fcc064;
  puVar4[0x78] = (ushort)DAT_07fcc068;
  puVar4[0x81] = 10;
  puVar4[0x7f] = (ushort)DAT_07fcc06c;
  puVar4[0x7e] = (ushort)DAT_07fcc070;
  puVar4[0x7d] = (ushort)DAT_07fcc074;
  puVar4[0x7c] = (ushort)DAT_07fcc078;
  puVar4[0x7b] = (ushort)DAT_07fcc07c;
  puVar4[0x7a] = (ushort)DAT_07fcc080;
  puVar4[0x79] = (ushort)DAT_07fcc084;
  puVar4[0x82] = 0xf4;
  puVar4[0x84] = (ushort)v204_gatt_characteristic_declaration_uuid;
  __aeabi_memclr(puVar4 + 0x85,0x16);
  puVar4[0x99] = 8;
  puVar4[0x98] = (ushort)DAT_07fcc088;
  puVar4[0x9c] = (ushort)DAT_07fcc08c;
  puVar4[0x9a] = 1;
  puVar4[0x97] = (ushort)DAT_07fcc090;
  puVar4[0x96] = (ushort)DAT_07fcc094;
  puVar4[0x95] = (ushort)DAT_07fcc098;
  puVar4[0x94] = (ushort)DAT_07fcc09c;
  puVar4[0x93] = (ushort)DAT_07fcc0a0;
  puVar4[0x92] = (ushort)DAT_07fcc0a4;
  puVar4[0x91] = (ushort)DAT_07fcc0a8;
  puVar4[0x90] = (ushort)DAT_07fcc0ac;
  __aeabi_memclr(puVar4 + 0x9d,0xe);
  puVar4[0xa6] = 0;
  puVar4[0xa4] = (ushort)DAT_07fcc064;
  uVar2 = (ushort)v204_gatt_characteristic_declaration_uuid;
  puVar4[0xa8] = uVar2;
  puVar4[0xa7] = 0;
  puVar4[0xa5] = 2;
  __aeabi_memclr(puVar4 + 0xa9,0x16);
  puVar4[0xbc] = (ushort)DAT_07fcc028;
  puVar4[0xc0] = uVar2;
  puVar4[0xbe] = 1;
  puVar4[0xbb] = (ushort)DAT_07fcc0b0;
  puVar4[0xba] = (ushort)DAT_07fcc0b4;
  puVar4[0xb9] = (ushort)DAT_07fcc0b8;
  puVar4[0xb8] = (ushort)DAT_07fcc0bc;
  puVar4[0xb7] = (ushort)DAT_07fcc0c0;
  puVar4[0xb6] = (ushort)DAT_07fcc0c4;
  puVar4[0xb5] = (ushort)DAT_07fcc0c8;
  puVar4[0xb4] = (ushort)DAT_07fcc0cc;
  puVar4[0xbd] = uVar1;
  __aeabi_memclr(puVar4 + 0xc1,0x16);
  puVar4[0xd4] = (ushort)DAT_07fcc028;
  puVar4[0xd8] = (ushort)v204_gatt_characteristic_declaration_uuid;
  puVar4[0xd6] = 2;
  puVar4[0xd3] = (ushort)DAT_07fcc0d0;
  puVar4[0xd2] = (ushort)DAT_07fcc0d4;
  puVar4[0xd1] = (ushort)DAT_07fcc0d8;
  puVar4[0xd0] = (ushort)DAT_07fcc0dc;
  puVar4[0xcf] = (ushort)DAT_07fcc0e0;
  puVar4[0xce] = (ushort)DAT_07fcc0e4;
  puVar4[0xcd] = (ushort)DAT_07fcc0e8;
  puVar4[0xcc] = (ushort)DAT_07fcc0ec;
  puVar4[0xd5] = uVar1;
  __aeabi_memclr(puVar4 + 0xd9,0x16);
  puVar4[0xec] = (ushort)DAT_07fcc028;
  puVar4[0xee] = (ushort)DAT_07fcc0f0;
  puVar4[0xeb] = (ushort)DAT_07fcc0f4;
  puVar4[0xea] = (ushort)DAT_07fcc0f8;
  puVar4[0xe9] = (ushort)DAT_07fcc0fc;
  puVar4[0xe8] = (ushort)DAT_07fcc100;
  puVar4[0xe7] = (ushort)DAT_07fcc104;
  puVar4[0xe6] = (ushort)DAT_07fcc108;
  puVar4[0xe5] = (ushort)DAT_07fcc10c;
  puVar4[0xe4] = (ushort)DAT_07fcc110;
  puVar4[0xed] = uVar1;
  *(undefined1 *)((int)puVar4 + 5) = 0x13;
  iVar5 = attmdb_add_service(puVar4);
  if (iVar5 == 0) {
    puVar6 = (ushort *)ke_malloc(0xc,0);
    __aeabi_memclr(puVar6,0xc);
    uVar1 = *puVar4;
    puVar6[5] = 0;
    puVar6[3] = uVar1;
    *puVar6 = option_bits << 0xf | service_value;
    puVar6[1] = *(ushort *)(service_context + 0x14);
    *(undefined2 *)(service_context + 0x16) = 0xfc;
    *(undefined2 *)(service_context + 0xe) = 1;
    *service_handle_out = uVar1;
    *(ushort **)(service_context + 0x10) = puVar6;
    *(undefined4 *)(service_context + 4) = v204_hid_service_descriptor_template;
    *(ushort **)(service_context + 8) = puVar6 + 4;
    *(undefined1 *)(puVar6 + 2) = *initial_protocol_byte;
    ke_state_set(*(undefined2 *)(service_context + 0x14),0);
    uVar1 = puVar6[3];
    local_18 = 0xd;
    local_1c[0] = 0xf4;
    attmdb_att_set_value(uVar1 + 0xf,1,0);
    attmdb_att_set_value(uVar1 + 0x11,2,0,local_1c);
  }
  ke_free(puVar4);
  return iVar5;
}

