// rea decompile_all
// name: compute_and_store_display_coordinates
// address: 0x7fcd0f0
// body: available
// range: 0x7fcd0f0-0x7fcd2d3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void compute_and_store_display_coordinates(uint measurement_value,uint packed_measurement,undefined4 auxiliary_coordinates)

{
  char cVar1;
  ushort uVar2;
  short sVar3;
  uint uVar4;
  uint uVar5;
  short sVar6;
  uint uVar7;
  int division_remainder;
  int division_remainder_00;
  int division_remainder_01;
  char cVar8;
  int iVar9;
  char cVar10;
  int iVar11;
  short sVar12;
  uint local_34;
  byte local_19;
  char local_18;
  char local_17;
  
  local_34 = 0;
  uVar7 = packed_measurement & 0xff;
  local_19 = (byte)(packed_measurement >> 0x18);
  if (uVar7 < 0x1a) {
    sVar6 = (ushort)local_19 * -5 + 0x73;
    sVar12 = 0x49;
L_compute_and_store_display_coordinates_at_07fcd12c:
    sVar12 = sVar12 + (ushort)local_19 * -2;
  }
  else {
    if (uVar7 < 0x1f) {
      sVar6 = (ushort)local_19 * -3 + 0x73;
      sVar12 = 0x4b;
      goto L_compute_and_store_display_coordinates_at_07fcd12c;
    }
    if (uVar7 < 0x24) {
      sVar6 = (ushort)local_19 * -3 + 0x75;
      sVar12 = 0x4c;
      goto L_compute_and_store_display_coordinates_at_07fcd12c;
    }
    if (uVar7 < 0x29) {
      sVar6 = (ushort)local_19 * -4 + 0x78;
      sVar12 = 0x50;
L_compute_and_store_display_coordinates_at_07fcd172:
      sVar12 = sVar12 + (ushort)local_19 * -3;
    }
    else {
      if (uVar7 < 0x2e) {
        sVar6 = (ushort)local_19 * -2 + 0x7c;
        sVar12 = 0x51;
        goto L_compute_and_store_display_coordinates_at_07fcd172;
      }
      if (uVar7 < 0x33) {
        sVar6 = 0x80;
        sVar12 = 0x52;
        goto L_compute_and_store_display_coordinates_at_07fcd172;
      }
      if (uVar7 < 0x38) {
        sVar6 = 0x86;
        sVar12 = (ushort)local_19 * -4 + 0x54;
      }
      else {
        if (0x3c < uVar7) {
          sVar6 = (ushort)local_19 * -3 + 0x94;
          sVar12 = 0x56;
          goto L_compute_and_store_display_coordinates_at_07fcd172;
        }
        sVar6 = (ushort)local_19 * 2 + 0x89;
        sVar12 = (ushort)local_19 * -2 + 0x54;
      }
    }
  }
  iVar9 = (int)((measurement_value - 0x46) * 3) >> 1;
  if (measurement_value < 0x41) {
    if (measurement_value < 0x3a) {
      iVar11 = measurement_value + 0xf;
      iVar9 = iVar9 + 0x82;
    }
    else {
      iVar11 = measurement_value + 5;
      iVar9 = iVar9 + 0x78;
    }
  }
  else if (measurement_value < 0x56) {
    iVar9 = iVar9 + 0x6e;
    __aeabi_uidiv(measurement_value,10);
    iVar11 = division_remainder_00 + 0x44;
  }
  else {
    iVar9 = iVar9 + 0x5f;
    __aeabi_uidiv(measurement_value,10);
    iVar11 = division_remainder + 0x49;
  }
  if (0x8c < iVar9) {
    __aeabi_uidiv(measurement_value,10);
    iVar9 = division_remainder_01 + 0x87;
  }
  uVar4 = packed_measurement >> 8 & 0xff;
  if ((uVar4 != 0) && (uVar5 = packed_measurement >> 0x10 & 0xff, uVar5 != 0)) {
    uVar2 = __aeabi_uidiv(DAT_07fcd2d4 * uVar5,uVar4 * uVar4);
    local_34 = (uint)uVar2;
  }
  if (uVar7 != 0) {
    if (local_19 == 0) {
      if (uVar7 < 0x23) {
        sVar6 = (short)(iVar9 + -0x73 >> 1) + sVar6;
        iVar9 = (int)sVar6;
        iVar11 = (int)(short)((short)(iVar11 + -0x4a >> 1) + sVar12);
        if (((local_34 != 0) && (local_34 < 0xb8)) && (0x46 < measurement_value)) {
L_compute_and_store_display_coordinates_at_07fcd274:
          sVar6 = sVar6 + -5;
L_compute_and_store_display_coordinates_at_07fcd250:
          iVar9 = (int)sVar6;
        }
      }
      else {
        sVar3 = __aeabi_idiv((local_34 - 0xb8) * 0x2e,0x50);
        sVar3 = sVar3 + (short)(iVar9 + -0x73 >> 1) + sVar6;
        iVar9 = (int)sVar3;
        iVar11 = (int)(short)((short)(iVar11 + -0x4a >> 1) + sVar12);
        if ((uVar4 < 0xa5) && (200 < local_34)) {
          sVar6 = sVar3 + 10;
          goto L_compute_and_store_display_coordinates_at_07fcd250;
        }
      }
    }
    else if (local_19 == 1) {
      if (uVar7 < 0x23) {
        sVar6 = (short)(iVar9 + -0x6e >> 2) + sVar6;
        iVar9 = (int)sVar6;
        iVar11 = (int)(short)((short)(iVar11 + -0x48 >> 2) + sVar12);
        if ((local_34 != 0) && (local_34 < 0xb0)) goto L_compute_and_store_display_coordinates_at_07fcd274;
      }
      else {
        iVar9 = (int)(short)((short)(iVar9 + -0x6e >> 1) + sVar6 +
                            (short)((int)(local_34 - 0xb8) >> 2));
        iVar11 = (int)(short)((short)(iVar11 + -0x48 >> 1) + sVar12);
      }
    }
  }
  cVar10 = (char)iVar11;
  cVar8 = (char)iVar9;
  local_18 = (char)auxiliary_coordinates;
  if ((local_18 != '\0') && (local_17 = (char)((uint)auxiliary_coordinates >> 8), local_17 != '\0')) {
    if (local_19 == 0) {
      cVar8 = cVar8 + -0x76;
      cVar1 = -0x4b;
    }
    else {
      if (local_19 != 1) goto L_compute_and_store_display_coordinates_at_07fcd2c2;
      cVar8 = cVar8 + -0x70;
      cVar1 = -0x46;
    }
    cVar8 = local_18 + cVar8;
    cVar10 = local_17 + cVar10 + cVar1;
  }
L_compute_and_store_display_coordinates_at_07fcd2c2:
  iVar9 = *(int *)(DAT_07fcd2d8 + 4);
  *(char *)(iVar9 + 0x420) = cVar8;
  *(char *)(iVar9 + 0x421) = cVar10;
  return;
}

