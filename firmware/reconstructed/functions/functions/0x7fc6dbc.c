// rea decompile_all
// name: function_entry_switch_dispatch_fun_07fc6dbc_at_6dbc
// address: 0x7fc6dbc
// body: available
// range: 0x7fc6dbc-0x7fc6e17 inclusive
// range: 0x7fc6e24-0x7fc6fab inclusive
// non_contiguous: true
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


char dispatch_attribute_request_by_opcode(undefined4 param_1,ushort *param_2,undefined4 param_3,uint param_4)

{
  byte bVar1;
  ushort uVar2;
  undefined1 uVar3;
  short sVar4;
  undefined2 uVar5;
  int iVar6;
  ushort *puVar7;
  ushort *puVar8;
  undefined2 *puVar9;
  uint uVar10;
  uint uVar11;
  
  iVar6 = ke_state_get(param_3);
  if (iVar6 != 0) {
    iVar6 = ke_state_get(param_3);
    return (iVar6 == 1) * '\x02';
  }
  puVar7 = (ushort *)ke_msg_alloc(DAT_07fc6fac,param_4,param_3);
  puVar8 = (ushort *)find_keyed_record_value(0xfc);
  *(undefined1 *)(puVar7 + 1) = 0x80;
  uVar2 = *param_2;
  *puVar7 = uVar2;
  uVar10 = (uint)uVar2 - (uint)(byte)puVar8[3] & 0xff;
  if (0xb < uVar10 - 2) {
switchD_07fc6e16_caseD_3:
    *(undefined1 *)(puVar7 + 1) = 0x80;
    goto dispatch_attribute_request_by_opcode_exit_branch_at_07fc6fa0;
  }
  uVar11 = param_4 >> 8;
  switch(uVar10) {
  case 2:
    uVar3 = attmdb_att_set_value(*param_2,param_2[2],param_2[1],param_2 + 3);
    *(undefined1 *)(puVar7 + 1) = uVar3;
    puVar9 = (undefined2 *)
             ke_msg_alloc(0xfc00,param_4 & (uint)(int)(short)*puVar8 >> 0xf & 0xffffff00 |
                                    DAT_07fc6fb0 & *puVar8,0xfc,8);
    uVar5 = gapc_get_conhdl(uVar11);
    *(undefined4 *)(puVar9 + 2) = 0;
    *puVar9 = uVar5;
    iVar6 = (uint)*(byte *)((int)param_2 + 9) * 0x1000000;
    *(int *)(puVar9 + 2) = iVar6;
    iVar6 = (uint)(byte)param_2[4] * 0x10000 + iVar6;
    *(int *)(puVar9 + 2) = iVar6;
    iVar6 = (uint)*(byte *)((int)param_2 + 7) * 0x100 + iVar6;
    *(int *)(puVar9 + 2) = iVar6;
    bVar1 = (byte)param_2[3];
    uVar3 = 1;
    goto L_dispatch_attribute_request_by_opcode_switch_at_07fc6ede;
  default:
    goto switchD_07fc6e16_caseD_3;
  case 4:
    uVar3 = attmdb_att_set_value(*param_2,param_2[2],param_2[1],param_2 + 3);
    *(undefined1 *)(puVar7 + 1) = uVar3;
    puVar9 = (undefined2 *)
             ke_msg_alloc(DAT_07fc6fbc,
                             param_4 & (uint)(int)(short)*puVar8 >> 0xf & 0xffffff00 |
                             DAT_07fc7278 & *puVar8,0xfc,8);
    uVar5 = gapc_get_conhdl(uVar11);
    *(undefined4 *)(puVar9 + 2) = 0;
    *puVar9 = uVar5;
    iVar6 = (uint)*(byte *)((int)param_2 + 9) * 0x1000000;
    *(int *)(puVar9 + 2) = iVar6;
    iVar6 = (uint)(byte)param_2[4] * 0x10000 + iVar6;
    *(int *)(puVar9 + 2) = iVar6;
    iVar6 = (uint)*(byte *)((int)param_2 + 7) * 0x100 + iVar6;
    *(int *)(puVar9 + 2) = iVar6;
    bVar1 = (byte)param_2[3];
    uVar3 = 2;
L_dispatch_attribute_request_by_opcode_switch_at_07fc6ede:
    *(undefined1 *)(puVar9 + 1) = uVar3;
    *(uint *)(puVar9 + 2) = iVar6 + (uint)bVar1;
    break;
  case 8:
    uVar3 = attmdb_att_set_value(*param_2,param_2[2],param_2[1],param_2 + 3);
    *(undefined1 *)(puVar7 + 1) = uVar3;
    puVar9 = (undefined2 *)
             ke_msg_alloc(DAT_07fc6fb4,
                             param_4 & (uint)(int)(short)*puVar8 >> 0xf & 0xffffff00 |
                             DAT_07fc7278 & *puVar8,0xfc,6);
    uVar5 = gapc_get_conhdl(uVar11);
    puVar9[2] = 0;
    *puVar9 = uVar5;
    sVar4 = (ushort)*(byte *)((int)param_2 + 7) * 0x100;
    puVar9[2] = sVar4;
    uVar2 = param_2[3];
    *(undefined1 *)(puVar9 + 1) = 3;
    puVar9[2] = sVar4 + (ushort)(byte)uVar2;
    break;
  case 10:
    uVar3 = attmdb_att_set_value(*param_2,param_2[2],param_2[1]);
    *(undefined1 *)(puVar7 + 1) = uVar3;
    puVar9 = (undefined2 *)
             ke_msg_alloc(DAT_07fc6fb8,
                             param_4 & (uint)(int)(short)*puVar8 >> 0xf & 0xffffff00 |
                             DAT_07fc7278 & *puVar8,0xfc,param_2[2] + 4);
    uVar5 = gapc_get_conhdl(uVar11);
    *puVar9 = uVar5;
    __aeabi_memcpy(puVar9 + 2,param_2 + 3,param_2[2]);
    *(char *)((int)puVar9 + 3) = (char)param_2[2];
    *(undefined1 *)(puVar9 + 1) = 4;
    break;
  case 0xd:
    uVar2 = param_2[3];
    bVar1 = *(byte *)((int)param_2 + 7);
    *(undefined1 *)(puVar7 + 1) = 0;
    puVar8[5] = (ushort)bVar1 * 0x100 + (ushort)(byte)uVar2;
    goto dispatch_attribute_request_by_opcode_exit_branch_at_07fc6fa0;
  }
  ke_msg_send(puVar9);
dispatch_attribute_request_by_opcode_exit_branch_at_07fc6fa0:
  ke_msg_send(puVar7);
  return '\0';
}

