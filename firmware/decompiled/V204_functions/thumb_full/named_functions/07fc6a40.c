/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fc6a40(undefined4 param_1,short *param_2,undefined4 param_3,uint param_4)

{
  undefined1 uVar1;
  uint uVar2;
  short *psVar3;
  int iVar4;
  undefined1 *puVar5;
  undefined1 uVar6;
  uint uVar7;
  short sVar8;
  ushort local_24 [2];
  sbyte local_20 [4];
  byte local_1c [4];
  uint local_18;
  
  uVar2 = ROM_ke_state_get /* 0x07f1bf1a */(param_3);
  if ((int)(uVar2 << 0x1e) < 0) {
    return 2;
  }
  sVar8 = 0;
  local_24[0] = 0;
  psVar3 = (short *)FUN_07fcb080(0x26);
  iVar4 = FUN_07fc76a0(psVar3,*param_2,&local_18,local_1c,local_20);
  if ((iVar4 != 0) || (iVar4 = 0x80, 0xf < local_1c[0] - 7)) goto switchD_07fc6aa6_caseD_8;
  uVar7 = param_4 >> 8;
  uVar6 = 2;
  switch(local_1c[0]) {
  case 7:
    uVar6 = 1;
    break;
  default:
    goto switchD_07fc6aa6_caseD_8;
  case 10:
    local_24[0] = (ushort)*(byte *)((int)psVar3 + (local_18 & 0xff) * 0x16 + 0x19);
    iVar4 = 0;
    sVar8 = 1;
    goto switchD_07fc6aa6_caseD_8;
  case 0xc:
    break;
  case 0xd:
    local_24[0] = psVar3[(local_18 & 0xff) * 0xb + uVar7 + 3] & 1;
    goto LAB_07fc6bdc;
  case 0xf:
    uVar6 = 3;
    break;
  case 0x11:
    uVar6 = 4;
    break;
  case 0x12:
    local_24[0] = (ushort)(((ushort)psVar3[(local_18 & 0xff) * 0xb + uVar7 + 3] & 3) >> 1);
    goto LAB_07fc6bdc;
  case 0x14:
    uVar6 = 0;
    break;
  case 0x16:
    local_24[0] = (ushort)(((ushort)psVar3[(local_18 & 0xff) * 0xb + uVar7 + 3] >> local_20[0] &
                           0x40) >> 6);
LAB_07fc6bdc:
    iVar4 = 0;
    sVar8 = 2;
switchD_07fc6aa6_caseD_8:
    psVar3 = (short *)ROM_ke_msg_alloc /* 0x07f1bbb0 */(DAT_07fc6bec,param_4,param_3,sVar8 + 6);
    *psVar3 = *param_2;
    psVar3[1] = sVar8;
    *(char *)(psVar3 + 2) = (char)iVar4;
    ROM___aeabi_memcpy /* 0x07f1e0ac */((int)psVar3 + 5,local_24,sVar8);
    ROM_ke_msg_send /* 0x07f1bbe2 */(psVar3);
    return 0;
  }
  puVar5 = (undefined1 *)
           ROM_ke_msg_alloc /* 0x07f1bbb0 */(DAT_07fc6be8,
                           param_4 & (uint)(int)*psVar3 >> 0xf & 0xffffff00 |
                           DAT_07fc6db4 & (int)*psVar3,param_3,8);
  *(undefined2 *)(puVar5 + 4) = 0;
  puVar5[1] = 1;
  uVar1 = (undefined1)(param_4 >> 8);
  *puVar5 = uVar1;
  puVar5[3] = uVar6;
  puVar5[2] = (undefined1)local_18;
  puVar5[6] = local_20[0];
  ROM_ke_msg_send /* 0x07f1bbe2 */();
  *(undefined1 *)((int)psVar3 + 0x1d) = 1;
  *(undefined1 *)(psVar3 + 0xe) = uVar1;
  psVar3[0xf] = *param_2;
  ROM_ke_state_set /* 0x07f1beb6 */(param_3,uVar2 | 2);
  return 0;
}

