// rea decompile_all
// name: estimate_pulse_rate_from_sample_window
// address: 0x7fcd9c8
// body: available
// range: 0x7fcd9c8-0x7fcdd59 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


/* WARNING: Type propagation algorithm not settling */

uint estimate_pulse_rate_from_sample_window(void)

{
  undefined2 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  int iVar11;
  uint auStack_54 [6];
  undefined4 local_3c;
  byte abStack_39 [5];
  uint local_34;
  uint local_30;
  uint local_2c;
  uint local_28;
  int local_24;
  int local_20;
  uint local_1c;
  
  local_30 = 0;
  local_2c = 0;
  abStack_39[1] = 0;
  abStack_39[2] = 0;
  abStack_39[3] = 0;
  abStack_39[4] = 0;
  local_34 = 0;
  __aeabi_memclr(auStack_54 + 1,0x18);
  local_28 = 0;
  iVar11 = 0;
  iVar2 = 0;
  iVar6 = 0;
  iVar3 = *(int *)(DAT_07fcdd64 + 0x1c);
  uVar8 = DAT_07fcdd5c;
  uVar5 = DAT_07fcdd60;
  do {
    uVar10 = uVar8;
    iVar4 = local_30 * 8 + iVar3;
    iVar7 = *(int *)(iVar4 + 0x6fc) >> 0xf;
    iVar4 = *(int *)(iVar4 + 0x700) >> 0xf;
    uVar8 = iVar7 * iVar7 + iVar4 * iVar4;
    local_28 = local_28 + uVar8;
    if ((uVar8 < uVar10) && (uVar5 <= uVar10)) {
      uVar5 = 0;
      do {
        uVar9 = auStack_54[uVar5 + 1];
        if (uVar9 < uVar10) {
          if (uVar5 != 0) {
            ((byte *)((int)register0x00000054 + -0x39))[uVar5] =
                 ((byte *)((int)register0x00000054 + -0x39))[uVar5 + 1];
            auStack_54[uVar5] = uVar9;
          }
          ((byte *)((int)register0x00000054 + -0x39))[uVar5 + 1] = (char)local_30 - 1;
          auStack_54[uVar5 + 1] = uVar10;
        }
        uVar5 = uVar5 + 1 & 0xffff;
      } while (uVar5 < 6);
    }
    if (local_2c < uVar8) {
      local_2c = uVar8;
    }
    local_30 = local_30 + 1 & 0xffff;
    uVar5 = uVar10;
  } while (local_30 < 100);
  local_24 = iVar3 + 0xc80;
  *(undefined4 *)(iVar3 + 0xc8c) = local_3c;
  uVar5 = local_34 >> 8 & 0xff;
  local_1c = uVar5 + 0x2d & 0xff;
  uVar8 = uVar5 - 10;
  if (uVar8 < 0x50) {
    local_30 = uVar5 + 10;
    for (; uVar8 = uVar8 & 0xffff, uVar8 <= local_30; uVar8 = uVar8 + 1) {
      iVar4 = uVar8 * 8 + iVar3;
      iVar7 = *(int *)(iVar4 + 0x6fc) >> 0xf;
      iVar4 = *(int *)(iVar4 + 0x700) >> 0xf;
      iVar11 = iVar11 + iVar7 * iVar7 + iVar4 * iVar4;
    }
  }
  else if (uVar5 < 10) {
    local_30 = uVar5 + 10;
    for (uVar8 = 0; uVar8 <= local_30; uVar8 = uVar8 + 1 & 0xffff) {
      iVar4 = uVar8 * 8 + iVar3;
      iVar7 = *(int *)(iVar4 + 0x6fc) >> 0xf;
      iVar4 = *(int *)(iVar4 + 0x700) >> 0xf;
      iVar11 = iVar11 + iVar7 * iVar7 + iVar4 * iVar4;
    }
  }
  else if (0x59 < uVar5) {
    while (local_30 = uVar8 & 0xffff, local_30 < 100) {
      iVar4 = local_30 * 8 + iVar3;
      iVar7 = *(int *)(iVar4 + 0x6fc) >> 0xf;
      iVar4 = *(int *)(iVar4 + 0x700) >> 0xf;
      iVar11 = iVar11 + iVar7 * iVar7 + iVar4 * iVar4;
      uVar8 = local_30 + 1;
    }
  }
  uVar8 = 0;
  local_20 = uVar5 * 2 + 0x5a;
  do {
    uVar10 = (uint)((byte *)((int)register0x00000054 + -0x39))[uVar8 + 1];
    if (((((local_20 - uVar10) - 0x29 < 9) || ((uVar10 * 2 - uVar5) + 0x31 < 9)) &&
        (auStack_54[uVar8 + 1] * 2 < (uint)local_3c)) && (uVar10 != 0)) {
      iVar2 = 0;
      uVar9 = uVar10 - 10;
      if (uVar9 < 0x50) {
        local_2c = uVar10 + 10;
        while (local_30 = uVar9 & 0xffff, local_30 <= local_2c) {
          iVar4 = local_30 * 8 + iVar3;
          iVar7 = *(int *)(iVar4 + 0x6fc) >> 0xf;
          iVar4 = *(int *)(iVar4 + 0x700) >> 0xf;
          iVar2 = iVar7 * iVar7 + iVar4 * iVar4 + iVar2;
          uVar9 = local_30 + 1;
        }
      }
      else if (uVar10 < 10) {
        local_2c = uVar10 + 10;
        for (local_30 = 0; local_30 <= local_2c; local_30 = local_30 + 1 & 0xffff) {
          iVar4 = local_30 * 8 + iVar3;
          iVar7 = *(int *)(iVar4 + 0x6fc) >> 0xf;
          iVar4 = *(int *)(iVar4 + 0x700) >> 0xf;
          iVar2 = iVar7 * iVar7 + iVar4 * iVar4 + iVar2;
        }
      }
      else if (0x59 < uVar10) {
        while (local_30 = uVar9 & 0xffff, local_30 < 100) {
          iVar4 = local_30 * 8 + iVar3;
          iVar7 = *(int *)(iVar4 + 0x6fc) >> 0xf;
          iVar4 = *(int *)(iVar4 + 0x700) >> 0xf;
          iVar2 = iVar7 * iVar7 + iVar4 * iVar4 + iVar2;
          uVar9 = local_30 + 1;
        }
      }
    }
    iVar4 = uVar5 - uVar10;
    if (iVar4 < 0) {
      iVar4 = -iVar4;
    }
    iVar4 = iVar4 + -0xe;
    if (iVar4 < 0) {
      iVar4 = -iVar4;
    }
    if (((iVar4 < 3) && (auStack_54[uVar8 + 1] * 2 < (uint)local_3c)) && (uVar10 != 0)) {
      uVar9 = uVar10 - 5;
      if (uVar9 < 0x5a) {
        while (local_30 = uVar9 & 0xffff, local_30 <= uVar10 + 5) {
          iVar4 = local_30 * 8 + iVar3;
          iVar7 = *(int *)(iVar4 + 0x6fc) >> 0xf;
          iVar4 = *(int *)(iVar4 + 0x700) >> 0xf;
          iVar6 = iVar7 * iVar7 + iVar4 * iVar4 + iVar6;
          uVar9 = local_30 + 1;
        }
      }
      else if (uVar10 < 5) {
        for (local_30 = 0; local_30 <= uVar10 + 5; local_30 = local_30 + 1 & 0xffff) {
          iVar4 = local_30 * 8 + iVar3;
          iVar7 = *(int *)(iVar4 + 0x6fc) >> 0xf;
          iVar4 = *(int *)(iVar4 + 0x700) >> 0xf;
          iVar6 = iVar7 * iVar7 + iVar4 * iVar4 + iVar6;
        }
      }
      else if (0x5e < uVar10) {
        for (; uVar9 = uVar9 & 0xffff, uVar9 < 100; uVar9 = uVar9 + 1) {
          iVar4 = uVar9 * 8 + iVar3;
          iVar7 = *(int *)(iVar4 + 0x6fc) >> 0xf;
          iVar4 = *(int *)(iVar4 + 0x700) >> 0xf;
          iVar6 = iVar7 * iVar7 + iVar4 * iVar4 + iVar6;
        }
      }
    }
    uVar8 = uVar8 + 1 & 0xffff;
  } while (uVar8 < 5);
  iVar4 = iVar11 + iVar2 + iVar6;
  if (iVar4 + 8U < local_28) {
    uVar1 = __aeabi_uidiv(iVar4,((local_28 - iVar11) - iVar2) - iVar6 >> 3);
    *(undefined2 *)(local_24 + 0x12) = uVar1;
  }
  else {
    *(undefined2 *)(iVar3 + 0xc92) = 0xa0;
  }
  return local_1c;
}

