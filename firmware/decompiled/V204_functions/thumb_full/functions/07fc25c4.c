/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Restarted to delay deadcode elimination for space: stack */

void FUN_07fc25c4(void)

{
  int *piVar1;
  int *piVar2;
  byte bVar3;
  undefined2 uVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  undefined1 *puVar9;
  undefined4 uVar10;
  int iVar11;
  int extraout_r1;
  int extraout_r1_00;
  int extraout_r1_01;
  int extraout_r1_02;
  int extraout_r1_03;
  byte bVar12;
  int iVar13;
  uint uVar14;
  int iVar15;
  undefined4 *puVar16;
  int iVar17;
  uint uVar18;
  short sVar19;
  int iVar20;
  uint uVar21;
  undefined1 local_74;
  undefined1 auStack_73 [16];
  undefined1 local_63;
  char local_61;
  undefined2 local_5c;
  undefined1 local_5a;
  undefined1 local_59;
  undefined1 local_58;
  undefined1 local_57;
  short local_56;
  undefined1 local_54;
  byte local_48;
  byte local_47;
  byte local_46;
  byte local_45;
  byte local_44;
  byte local_43;
  byte local_42;
  byte local_41;
  byte local_40;
  char local_3f;
  char local_3d;
  byte local_3b;
  char local_35;
  int local_34;
  int local_30;
  int local_2c;
  int local_28;
  int local_24;
  int local_20;
  
  iVar5 = *(int *)(DAT_07fc2760 + 0x48);
  iVar11 = *(int *)(DAT_07fc2760 + 0x4c);
  iVar13 = *(int *)(DAT_07fc2760 + 0x50);
  uVar6 = 0;
  iVar15 = DAT_07fc2760;
  do {
    if (uVar6 == (iVar13 - 1U & iVar5 - iVar11)) {
      return;
    }
    iVar7 = FUN_07fc2fcc(iVar15 + 0x48,&local_48);
    if (iVar7 != 0) goto switchD_07fc274a_caseD_49;
    FUN_07fc2f8c(iVar15 + 0x48);
    bVar12 = local_48;
    local_5c = CONCAT11(local_5c._1_1_,local_48);
    func_0x07f1e0ac((int)&local_5c + 1,&local_47,0x13);
    bVar3 = local_43;
    iVar8 = DAT_07fc2d7c;
    iVar17 = DAT_07fc2bb4;
    iVar7 = DAT_07fc2bac;
    piVar1 = DAT_07fc2764;
    switch(bVar12) {
    case 1:
      *DAT_07fc2764 = 1;
      piVar2 = DAT_07fc276c;
      iVar7 = ((uint)local_44 * 0x100 + (uint)local_45) * 0x10000 +
              (uint)local_46 * 0x100 + (uint)local_47;
      do {
      } while (*piVar1 != 0);
      iVar17 = *DAT_07fc2768;
      iVar15 = DAT_07fc276c[7];
      iVar20 = DAT_07fc276c[8];
      iVar8 = *DAT_07fc276c;
      FUN_07fc9004(iVar7,&local_34);
      uVar21 = func_0x07f1dfe4(iVar20 * 0x3c + iVar15,0xf);
      uVar14 = func_0x07f1dfe4(local_2c * 0x3c + local_30,0xf);
      iVar15 = DAT_07fc2760;
      if (((local_20 == piVar2[0xb]) && (local_24 == piVar2[10])) && (local_28 == piVar2[9])) {
        if (uVar21 < uVar14) {
          FUN_07fc48a8();
        }
      }
      else {
        if (DAT_07fc2d8c < (uint)(iVar7 - iVar8)) {
          *(undefined1 *)(DAT_07fc2da4 + 0xe) = 0;
          *(undefined4 *)(DAT_07fc2d7c + 0x44) = 0;
        }
        FUN_07fc48a8();
        FUN_07fc54f8(iVar7);
        FUN_07fc4fa0();
        iVar15 = DAT_07fc2d78;
      }
      piVar1 = DAT_07fc2d80;
      DAT_07fc2d80[4] = iVar17;
      piVar1[5] = 0;
      *piVar1 = iVar7;
      piVar1[1] = iVar7;
      FUN_07fc9004(iVar7,piVar1 + 6);
      goto switchD_07fc274a_caseD_4a;
    case 2:
      uVar21 = (uint)local_46;
      *(byte *)(DAT_07fc2bac + 0x89) = local_46;
      *(byte *)(iVar7 + 0x8a) = local_45;
      if (uVar21 < 0x32) {
LAB_07fc2820:
        uVar4 = 0x14;
      }
      else {
        if (uVar21 < 0xe7) {
          func_0x07f1dfb8(uVar21,10);
          if (extraout_r1_03 != 0) {
            uVar21 = uVar21 + 10;
          }
          if (uVar21 - extraout_r1_03 != 0xe6) {
            uVar21 = uVar21 - extraout_r1_03 & 0xffff;
            if (uVar21 == 0x3c) {
              uVar4 = 0x16;
            }
            else if (uVar21 == 0x46) {
              uVar4 = 0x19;
            }
            else if (uVar21 == 0x50) {
              uVar4 = 0x1d;
            }
            else if (uVar21 == 0x5a) {
              uVar4 = 0x21;
            }
            else if (uVar21 == 100) {
              uVar4 = 0x25;
            }
            else if (uVar21 == 0x6e) {
              uVar4 = 0x28;
            }
            else if (uVar21 == 0x78) {
              uVar4 = 0x2c;
            }
            else if (uVar21 == 0x82) {
              uVar4 = 0x30;
            }
            else if (uVar21 == 0x8c) {
              uVar4 = 0x33;
            }
            else if (uVar21 == 0x96) {
              uVar4 = 0x37;
            }
            else if (uVar21 == 0xa0) {
              uVar4 = 0x3b;
            }
            else if (uVar21 == 0xb4) {
              uVar4 = 0x42;
            }
            else if (uVar21 == 0xbe) {
              uVar4 = 0x46;
            }
            else if (uVar21 == 200) {
              uVar4 = 0x4a;
            }
            else if (uVar21 == 0xd2) {
              uVar4 = 0x4e;
            }
            else if (uVar21 == 0xdc) {
              uVar4 = 0x52;
            }
            else {
              if (uVar21 == 0x32) goto LAB_07fc2820;
              uVar4 = 0x3e;
            }
            goto LAB_07fc2b50;
          }
        }
        uVar4 = 0x56;
      }
LAB_07fc2b50:
      *(undefined2 *)(DAT_07fc2d7c + 0x36) = uVar4;
      FUN_07fc24c6(&local_5c);
    case 3:
      FUN_07fc50b4();
      break;
    case 4:
      *(undefined1 *)(DAT_07fc2bb4 + 0x35) = 1;
      *DAT_07fc2bb0 = 0;
      *(undefined2 *)(iVar17 + 0x36) = 0x2800;
      uVar10 = 6;
      goto LAB_07fc2c08;
    case 5:
    case 6:
    case 8:
    case 9:
    case 0xd:
    case 0xf:
    case 0x11:
    case 0x13:
    case 0x18:
    case 0x1a:
    case 0x1c:
    case 0x1e:
    case 0x1f:
    case 0x21:
    case 0x24:
    case 0x26:
    case 0x27:
    case 0x28:
    case 0x29:
    case 0x2a:
    case 0x2b:
    case 0x2c:
    case 0x2d:
    case 0x2e:
    case 0x2f:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
    case 0x37:
    case 0x38:
    case 0x39:
      goto switchD_07fc274a_caseD_4a;
    case 7:
      if (local_47 == 0) {
        if (*(char *)(DAT_07fc2bb4 + 0xc) == '\x10') {
          uVar10 = 0x16;
          goto LAB_07fc2c08;
        }
      }
      else if (*(char *)(DAT_07fc2bb4 + 0xc) != '\x10') {
        uVar10 = 0x10;
        goto LAB_07fc2c08;
      }
      goto switchD_07fc274a_caseD_4a;
    case 10:
      *(uint *)(DAT_07fc2bac + 0x58) =
           ((uint)local_44 * 0x100 + (uint)local_45) * 0x10000 +
           (uint)local_46 * 0x100 + (uint)local_47;
      goto switchD_07fc274a_caseD_4a;
    case 0xb:
      FUN_07fc259c(0xb,*(undefined1 *)(DAT_07fc2bb0 + 0xc),*(undefined1 *)(DAT_07fc2bb4 + 0x28));
      break;
    case 0xc:
      FUN_07fc519c();
      break;
    case 0xe:
      iVar7 = ((uint)local_40 * 0x100 + (uint)local_41) * 0x10000 +
              (uint)local_42 * 0x100 + (uint)local_43;
      iVar17 = ((uint)local_44 * 0x100 + (uint)local_45) * 0x10000 +
               (uint)local_46 * 0x100 + (uint)local_47;
      if ((iVar17 == DAT_07fc2bbc) && (iVar7 == DAT_07fc2bc0)) {
        FUN_07fc54b4();
        if (local_3f == '\0') goto LAB_07fc2b84;
        uVar10 = 1;
      }
      else {
        if ((iVar17 != DAT_07fc2d9c) || (iVar7 != DAT_07fc2d9c)) {
          if (((iVar17 == DAT_07fc2da0) && (iVar7 == DAT_07fc2da0)) &&
             (FUN_07fc54b4(), local_3f != '\0')) {
            uVar10 = 2;
            goto LAB_07fc2b86;
          }
          goto switchD_07fc274a_caseD_4a;
        }
        FUN_07fc54b4();
LAB_07fc2b84:
        uVar10 = 0;
      }
LAB_07fc2b86:
      FUN_07fc43a4(uVar10);
      goto switchD_07fc274a_caseD_4a;
    case 0x10:
      uVar21 = (uint)local_47;
      if (6 < uVar21) {
        local_5c = (undefined2)DAT_07fc2d98;
        goto LAB_07fc2b92;
      }
      *(undefined1 *)(DAT_07fc2bac + 0xc) = 0;
      *(undefined1 *)(iVar7 + 0xb) = 1;
      iVar15 = *DAT_07fc2bc4;
      func_0x07f1dfb8(iVar15,DAT_07fc2bc8);
      *(uint *)(iVar7 + 0x28) = (iVar15 + DAT_07fc2bcc * uVar21) - extraout_r1;
      iVar15 = DAT_07fc2f28;
      break;
    case 0x12:
      if ((local_46 == 1) && (local_44 == 0)) {
        FUN_07fc3b78(0xe);
      }
LAB_07fc2b36:
      FUN_07fc2ea8(iVar15 + 0x34,&local_5c);
      break;
    case 0x14:
      if (local_43 == 0) {
        FUN_07fc3a38(1);
        uVar10 = 9;
        goto LAB_07fc2c08;
      }
      FUN_07fc3a38(8);
      iVar7 = DAT_07fc2d7c;
      if (local_42 == 0) {
        if (*(byte *)(DAT_07fc2bac + 0x10) != bVar3) {
          *(undefined4 *)(DAT_07fc2d7c + 0x2c) = 0;
          *(byte *)(iVar7 + 0x10) = bVar3;
        }
      }
      else {
        *(byte *)(DAT_07fc2bac + 0x10) = *(byte *)(DAT_07fc2bac + 0x10) & 0x7f;
      }
      goto switchD_07fc274a_caseD_4a;
    case 0x15:
      if ((local_42 & 7) == 0) {
        if ((local_43 & 7) == 0) {
          uVar10 = DAT_07fc2bd0;
          if ((*(byte *)(DAT_07fc2d7c + 0x14) & 1) != 0) {
            FUN_07fc3b78(0);
            uVar10 = DAT_07fc2bd0;
          }
          goto LAB_07fc2b44;
        }
        if (*(char *)(DAT_07fc2d7c + 0x10) != '\0') {
          *(undefined4 *)(DAT_07fc2d7c + 0x2c) = 0;
          *(undefined1 *)(iVar8 + 0x10) = 0;
        }
      }
      else {
        *(byte *)(DAT_07fc2bac + 0x10) = *(byte *)(DAT_07fc2bac + 0x10) | 0x80;
      }
      FUN_07fc3a38(0x80000);
      uVar10 = DAT_07fc2bd0;
LAB_07fc2b44:
      FUN_07fc3a38(uVar10);
      goto switchD_07fc274a_caseD_4a;
    case 0x16:
      uVar21 = (uint)local_47;
      if (uVar21 < 7) {
        iVar7 = *DAT_07fc2bc4;
        iVar17 = 0;
        local_34 = -1;
        func_0x07f1e0de(DAT_07fc2bd4,100);
        uVar14 = DAT_07fc2bc8;
        iVar7 = iVar7 + DAT_07fc2bcc * uVar21;
        uVar4 = func_0x07f1dfb8(iVar7,DAT_07fc2bc8);
        func_0x07f1dfb8(uVar4,7);
        FUN_07fc3ea0(&local_34,extraout_r1_01 * 0x3000 + DAT_07fc2d74,4,0);
        iVar15 = DAT_07fc2d84;
        iVar7 = iVar7 - extraout_r1_00;
        if ((uint)(iVar7 - local_34) < uVar14) {
          FUN_07fc3ea0(DAT_07fc2d84,extraout_r1_01 * 0x3000 + DAT_07fc2d90,0x60,0);
          for (; iVar8 = DAT_07fc2d7c, iVar17 != 0x60; iVar17 = iVar17 + 4) {
            *(uint *)(iVar15 + iVar17) = ~*(uint *)(iVar15 + iVar17);
          }
          sVar19 = 0;
          uVar21 = 0;
          for (iVar15 = 0; iVar15 != 0x18; iVar15 = iVar15 + 1) {
            for (uVar14 = 0; uVar14 != 0x1e; uVar14 = uVar14 + 1) {
              uVar18 = 1 << (uVar14 & 0xff) & *(uint *)(DAT_07fc2d84 + iVar15 * 4);
              sVar19 = sVar19 + (ushort)(uVar21 == 0 && uVar18 != 0);
              uVar21 = uVar18;
            }
          }
          if (sVar19 != 0) {
            local_5a = (undefined1)iVar7;
            local_5c = CONCAT11(0xf0,(undefined1)local_5c);
            local_57 = (undefined1)((uint)iVar7 >> 0x18);
            local_58 = (undefined1)((uint)iVar7 >> 0x10);
            local_59 = (undefined1)((uint)iVar7 >> 8);
            local_56 = sVar19;
            func_0x07f1e0de(DAT_07fc2d7c + 0xac,0x14);
            *(undefined1 *)(DAT_07fc2d7c + 0xac) = 1;
            *(int *)(iVar8 + 0xc0) = iVar7;
            *(char *)(iVar8 + 0xad) = (char)sVar19;
            iVar15 = DAT_07fc2f88;
            goto switchD_07fc274a_caseD_4a;
          }
        }
      }
      local_5c = CONCAT11(0xff,(undefined1)local_5c);
      iVar15 = DAT_07fc2f88;
      goto switchD_07fc274a_caseD_4a;
    case 0x17:
      local_5c = CONCAT11(local_5c._1_1_,0x97);
      goto LAB_07fc2d06;
    case 0x19:
      *(byte *)(DAT_07fc2d7c + 0x7c) = local_43;
      bVar12 = local_42;
      if (local_42 == 0) {
        bVar12 = 0xf;
      }
      *(byte *)(iVar8 + 0x7d) = bVar12;
      *(uint *)(iVar8 + 0x80) = (uint)local_46 * 0x3c + (uint)local_47 * 0xe10;
      *(uint *)(iVar8 + 0x84) = (uint)local_44 * 0x3c + (uint)local_45 * 0xe10;
LAB_07fc2b92:
      FUN_07fc24c6(&local_5c);
      iVar15 = DAT_07fc2f28;
      break;
    case 0x1b:
      *(char *)(DAT_07fc2d7c + 0x12) = local_3d;
      if (local_3d != '\0') {
        FUN_07fc2dc4();
      }
      iVar7 = 0x95;
      bVar12 = local_3b;
      goto LAB_07fc2aee;
    case 0x1d:
      iVar7 = 0x34;
      bVar12 = local_47;
LAB_07fc2aee:
      *(byte *)(DAT_07fc2d7c + iVar7) = bVar12;
      goto switchD_07fc274a_caseD_4a;
    case 0x20:
      FUN_07fc5230();
      break;
    case 0x22:
    case 0x3a:
      break;
    case 0x23:
      if (local_47 == 0) {
        if (-1 < (int)((uint)*(byte *)(DAT_07fc2d7c + 0x14) << 0x1e))
        goto switchD_07fc274a_caseD_4a;
        uVar10 = 0;
      }
      else {
        FUN_07fc3a38(2);
        uVar10 = 0xc;
      }
LAB_07fc2c08:
      FUN_07fc3b78(uVar10);
switchD_07fc274a_caseD_4a:
LAB_07fc2d06:
      FUN_07fc24c6(&local_5c);
      break;
    case 0x25:
      local_5c = CONCAT11(local_5c._1_1_,0x25);
      func_0x07f1e0de(&local_57,0xf);
      iVar15 = *DAT_07fc2d80;
      func_0x07f1dfb8(iVar15,DAT_07fc2d8c);
      iVar15 = (iVar15 - extraout_r1_02) + DAT_07fc2d88 * (uint)local_47 + DAT_07fc2d94;
      local_58 = (undefined1)((uint)iVar15 >> 0x18);
      local_59 = (undefined1)((uint)iVar15 >> 0x10);
      local_5a = (undefined1)((uint)iVar15 >> 8);
      iVar15 = DAT_07fc2d78;
      goto LAB_07fc2d06;
    case 0x30:
      local_74 = 0x2b;
      func_0x07f1e0ac(auStack_73,&local_47,0x10);
      local_63 = 0;
      local_61 = FUN_07fc18f4(auStack_73);
      if ((local_61 != '\0') && (local_47 - 0x30 < 0x4b)) {
        FUN_07fc3e90(0x64000,0x1000);
        iVar15 = DAT_07fc2d78;
        FUN_07fc3ea0(&local_74,0x64000,0x14,1);
        FUN_07fc24c6(&local_5c);
        func_0x07f027e4(0);
      }
      break;
    default:
      switch(bVar12) {
      case 0x48:
        if (local_35 == '\0') {
          *(undefined1 *)(DAT_07fc2d7c + 0x11) = 2;
        }
        else {
          *(undefined1 *)(DAT_07fc2b60 + 0x11) = 1;
          iVar15 = DAT_07fc2b68 + (uint)*(byte *)(DAT_07fc2b64 + 0x5a) * 4;
          puVar16 = (undefined4 *)(iVar15 + 100);
          if (*(int *)(iVar15 + 100) == 0) {
            puVar9 = (undefined1 *)
                     func_0x07f1bbb0(DAT_07fc2b6c,(uint)*(byte *)(DAT_07fc2b64 + 0x5a) * 0x100 + 10,
                                     4,2);
            puVar9[1] = 1;
            *puVar9 = 0xc;
            *puVar16 = puVar9;
          }
          func_0x07f1bbe2();
          *puVar16 = 0;
          iVar15 = DAT_07fc2f28;
        }
        break;
      case 0x49:
      case 0x4b:
        break;
      case 0x4a:
      case 0x4c:
      case 0x4d:
      case 0x4e:
      case 0x4f:
        goto switchD_07fc274a_caseD_4a;
      case 0x50:
        *(byte *)(DAT_07fc2bac + 0xc4) = local_47;
        if (local_47 == 0) {
          uVar10 = 0x20000000;
        }
        else {
          uVar10 = 0x2000;
        }
        goto LAB_07fc2b44;
      default:
        if (bVar12 == 0x43) {
          FUN_07fc3b40();
          goto LAB_07fc2b36;
        }
        if (bVar12 == 0xf7) {
          uVar10 = 0;
          if (*(char *)(DAT_07fc2bb8 + 0x14) == '+') {
            uVar10 = FUN_07fc56a0(0,DAT_07fc2bb8 + 0x15,*(undefined1 *)(DAT_07fc2bb8 + 0x27));
          }
          local_54 = 0;
                    /* WARNING: Ignoring partial resolution of indirect */
          local_56._0_1_ = 0;
          local_57 = 0;
          local_58 = (undefined1)((uint)uVar10 >> 0x18);
          local_59 = (undefined1)((uint)uVar10 >> 0x10);
          local_5a = (undefined1)((uint)uVar10 >> 8);
        }
        goto switchD_07fc274a_caseD_4a;
      }
    }
switchD_07fc274a_caseD_49:
    uVar6 = uVar6 + 1;
  } while( true );
}

