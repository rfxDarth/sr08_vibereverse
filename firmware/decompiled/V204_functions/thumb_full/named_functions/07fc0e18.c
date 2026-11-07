/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

int FUN_07fc0e18(ushort *param_1,ushort *param_2,ushort *param_3,ushort *param_4,uint param_5,
                undefined4 param_6,int param_7)

{
  byte bVar1;
  ushort uVar2;
  ushort uVar3;
  bool bVar4;
  char cVar5;
  uint uVar6;
  uint uVar7;
  ushort *puVar8;
  int iVar9;
  uint uVar10;
  uint uVar11;
  ushort *puVar12;
  int iVar13;
  bool bVar14;
  ushort *local_50;
  uint local_44;
  byte *local_40;
  
  if (param_7 != 2) {
    if (param_5 <= *param_3) {
      if (param_1[1] - 0x40 < 0x40) {
        ROM_gapc_lecnx_check_rx /* 0x07f14f92 */(param_6);
      }
      ROM___aeabi_memcpy /* 0x07f1e0ac */((int)param_1 + *param_2 + 4,param_4,param_5);
      *param_2 = *param_2 + (short)param_5;
      *param_3 = *param_3 - (short)param_5;
      return 0;
    }
    return 0x34;
  }
  uVar6 = 0;
  bVar4 = false;
  *param_1 = *param_4;
  uVar7 = (uint)param_4[1];
  param_1[1] = param_4[1];
  uVar11 = 4;
  puVar12 = param_4 + 2;
  iVar9 = 0;
  uVar10 = 0;
  if (0x3f < uVar7 - 0x40) {
    uVar6 = (uint)(byte)*puVar12;
  }
  if (uVar7 == 4) {
    if (uVar6 == 0x52) {
      uVar6 = 0x14;
    }
    else if (uVar6 == 0xd2) {
      uVar6 = 0x15;
    }
    uVar10 = 0x1f;
    iVar9 = _DAT_07fc12d8;
  }
  else if (uVar7 == 5) {
    if (*(char *)((int)param_4 + 5) != '\0') {
      uVar10 = 0x17;
      iVar9 = _DAT_07fc12d0;
    }
  }
  else if (uVar7 == 6) {
    uVar10 = 0xf;
    iVar9 = _DAT_07fc12d4;
  }
  else {
    if (0x3f < uVar7 - 0x40) {
      iVar13 = 0x33;
      goto LAB_07fc1124;
    }
    cVar5 = ROM_gapc_lecnx_check_rx /* 0x07f14f92 */(param_6);
    if ((cVar5 != '\0') && (-1 < (int)((uint)*(ushort *)(_DAT_07fc12c8 + 0x28) << 0x18))) {
      iVar13 = 0x30;
      goto LAB_07fc1124;
    }
    uVar10 = 2;
    uVar6 = 1;
    iVar9 = _DAT_07fc12cc;
  }
  iVar13 = 0;
  bVar14 = iVar9 == 0;
  do {
    if ((bVar14) || (uVar10 <= uVar6)) goto LAB_07fc1106;
    local_40 = *(byte **)(iVar9 + uVar6 * 4);
    bVar14 = true;
    uVar6 = 0;
  } while (local_40 == (byte *)0x0);
  uVar2 = 0;
  bVar14 = false;
  if (0x3f < param_1[1] - 0x40) {
    uVar11 = 5;
    *(byte *)(param_1 + 2) = (byte)*puVar12;
    puVar12 = (ushort *)((int)param_4 + 5);
  }
  local_50 = (ushort *)((int)param_1 + 5);
  while (((bVar1 = *local_40, bVar1 != 0 && (iVar13 == 0)) && (uVar11 <= *param_3))) {
    if (bVar1 == 0x52) {
      ROM___aeabi_memcpy /* 0x07f1e0ac */(local_50,puVar12,8);
      local_50 = local_50 + 4;
      uVar11 = uVar11 + 8 & 0xffff;
      puVar12 = puVar12 + 4;
    }
    else if (bVar1 < 0x53) {
      if (bVar1 == 0x4b) {
        ROM___aeabi_memcpy /* 0x07f1e0ac */(local_50,puVar12,0x10);
        local_50 = local_50 + 8;
        uVar11 = uVar11 + 0x10 & 0xffff;
        puVar12 = puVar12 + 8;
      }
      else if (bVar1 < 0x4c) {
        if (bVar1 == 0x41) {
          ROM___aeabi_memcpy /* 0x07f1e0ac */(local_50,puVar12,6);
          local_50 = local_50 + 3;
          uVar11 = uVar11 + 6 & 0xffff;
          puVar12 = puVar12 + 3;
        }
        else {
          if (bVar1 != 0x42) goto LAB_07fc1016;
          *(byte *)local_50 = (byte)*puVar12;
          local_50 = (ushort *)((int)local_50 + 1);
          uVar11 = uVar11 + 1 & 0xffff;
          puVar12 = (ushort *)((int)puVar12 + 1);
        }
      }
      else {
        if (bVar1 == 0x4c) goto LAB_07fc0fa8;
        if ((bVar1 != 0x50) || (param_5 < uVar11 + 0x40)) goto LAB_07fc1016;
        ROM___aeabi_memcpy /* 0x07f1e0ac */(local_50,puVar12,0x40);
        local_50 = local_50 + 0x20;
        uVar11 = uVar11 + 0x40 & 0xffff;
        puVar12 = puVar12 + 0x20;
      }
    }
    else if (bVar1 == 99) {
      bVar14 = true;
    }
    else if (bVar1 < 100) {
      if (bVar1 == 0x57) {
LAB_07fc0fa8:
        puVar8 = (ushort *)((uint)((int)local_50 + 1) & 0xfffffffe);
        local_50 = puVar8 + 1;
        uVar3 = *puVar12;
        *puVar8 = uVar3;
        puVar12 = puVar12 + 1;
        uVar11 = uVar11 + 2 & 0xffff;
        if (bVar14) {
          bVar14 = false;
          uVar2 = uVar3;
        }
      }
      else {
        if (bVar1 != 0x61) goto LAB_07fc1016;
        local_44 = param_5 - uVar11 & 0xffff;
        uVar6 = (uint)((int)local_50 + 1) & 0xfffffffe;
        ROM___aeabi_memcpy /* 0x07f1e0ac */(uVar6,puVar12,local_44);
        local_50 = (ushort *)(uVar6 + local_44);
LAB_07fc109c:
        bVar4 = true;
        uVar11 = uVar11 + local_44 & 0xffff;
      }
    }
    else {
      if (bVar1 == 0x6c) {
        local_44 = param_5 - uVar11 & 0xffff;
        uVar6 = (*param_1 - uVar11) + 4 & 0xffff;
        bVar4 = true;
        local_40 = local_40 + 1;
        local_50 = (ushort *)((uint)((int)local_50 + 1) & 0xfffffffe);
        if (*local_40 == 0x57) {
          uVar6 = uVar6 >> 1;
        }
        else if (*local_40 != 0x42) goto LAB_07fc1016;
        *(byte *)local_50 = (byte)uVar6;
        *(byte *)((int)local_50 + 1) = (byte)(uVar6 >> 8);
        ROM___aeabi_memcpy /* 0x07f1e0ac */(local_50 + 1,puVar12,local_44);
        local_50 = (ushort *)((int)(local_50 + 1) + local_44);
        goto LAB_07fc109c;
      }
      if (bVar1 == 0x77) {
        local_40 = local_40 + 1;
        if (*local_40 == uVar2) goto LAB_07fc0fa8;
      }
      else {
LAB_07fc1016:
        iVar13 = 0x34;
      }
    }
    local_40 = local_40 + 1;
  }
  uVar2 = *param_3;
  if (((uVar2 < uVar11) || (*local_40 != 0)) || ((!bVar4 && (uVar2 != uVar11)))) {
LAB_07fc1106:
    iVar13 = 0x34;
  }
  else {
    *param_3 = uVar2 - (short)uVar11;
    *param_2 = *param_2 + ((short)local_50 - (short)param_1) + -4;
    if (iVar13 == 0) {
      return 0;
    }
  }
LAB_07fc1124:
  uVar6 = (uint)param_1[1];
  if (((uVar6 != 4) && (uVar6 != 6)) && (0x3f < uVar6 - 0x40)) {
    *(undefined1 *)((int)param_1 + 5) = *(undefined1 *)((int)param_4 + 5);
  }
  return iVar13;
}

