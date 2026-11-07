// rea decompile_all
// name: FUN_07fc2614
// address: 0x7fc2614
// body: available
// range: 0x7fc2614-0x7fc2687 inclusive
// range: 0x7fc26fc-0x7fc279b inclusive
// range: 0x7fc27c0-0x7fc2baf inclusive
// range: 0x7fc2bc0-0x7fc2bfb inclusive
// range: 0x7fc2c28-0x7fc2dc3 inclusive
// non_contiguous: true
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


/* WARNING: Restarted to delay deadcode elimination for space: stack */

void FUN_07fc2614(void)

{
  int *piVar1;
  byte bVar2;
  undefined2 uVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  undefined1 *puVar8;
  undefined4 uVar9;
  int iVar10;
  int extraout_r1;
  int extraout_r1_00;
  int extraout_r1_01;
  int extraout_r1_02;
  int extraout_r1_03;
  byte bVar11;
  int iVar12;
  uint uVar13;
  int iVar14;
  undefined4 *puVar15;
  int iVar16;
  uint uVar17;
  short sVar18;
  int iVar19;
  uint uVar20;
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
  
  iVar4 = *(int *)(DAT_07fc27b0 + 0x48);
  iVar10 = *(int *)(DAT_07fc27b0 + 0x4c);
  iVar12 = *(int *)(DAT_07fc27b0 + 0x50);
  uVar5 = 0;
  iVar14 = DAT_07fc27b0;
  do {
    if (uVar5 == (iVar12 - 1U & iVar4 - iVar10)) {
      return;
    }
    iVar6 = FUN_07fc3030(iVar14 + 0x48,&local_48);
    if (iVar6 != 0) goto switchD_07fc279a_caseD_49;
    FUN_07fc2fd8(iVar14 + 0x48);
    bVar11 = local_48;
    local_5c = CONCAT11(local_5c._1_1_,local_48);
    func_0x07f1e0ac((int)&local_5c + 1,&local_47,0x13);
    bVar2 = local_43;
    iVar7 = DAT_07fc2dcc;
    iVar16 = DAT_07fc2c04;
    iVar6 = DAT_07fc2bfc;
    piVar1 = DAT_07fc27b4;
    switch(bVar11) {
    case 1:
      *DAT_07fc27b4 = 1;
      iVar6 = DAT_07fc27bc;
      iVar16 = ((uint)local_44 * 0x100 + (uint)local_45) * 0x10000 +
               (uint)local_46 * 0x100 + (uint)local_47;
      do {
      } while (*piVar1 != 0);
      uVar9 = *DAT_07fc27b8;
      iVar14 = *(int *)(DAT_07fc27bc + 0x44);
      iVar19 = *(int *)(DAT_07fc27bc + 0x48);
      iVar7 = *(int *)(DAT_07fc27bc + 0x28);
      FUN_07fc8088(iVar16,&local_34);
      uVar20 = func_0x07f1dfe4(iVar19 * 0x3c + iVar14,0xf);
      uVar13 = func_0x07f1dfe4(local_2c * 0x3c + local_30,0xf);
      iVar14 = DAT_07fc27b0;
      if (((local_20 == *(int *)(iVar6 + 0x54)) && (local_24 == *(int *)(iVar6 + 0x50))) &&
         (local_28 == *(int *)(iVar6 + 0x4c))) {
        if (uVar20 < uVar13) {
          FUN_07fc4798();
        }
      }
      else {
        if (DAT_07fc2ddc < (uint)(iVar16 - iVar7)) {
          *(undefined1 *)(DAT_07fc2df4 + 0xf) = 0;
          *(undefined4 *)(DAT_07fc2dcc + 0x44) = 0;
        }
        FUN_07fc4798();
        FUN_07fc54f0(iVar16);
        FUN_07fc4e90();
        iVar14 = DAT_07fc2dc8;
      }
      iVar6 = DAT_07fc2dd0;
      *(undefined4 *)(DAT_07fc2dd0 + 0x38) = uVar9;
      *(undefined4 *)(iVar6 + 0x3c) = 0;
      *(int *)(iVar6 + 0x28) = iVar16;
      *(int *)(iVar6 + 0x2c) = iVar16;
      FUN_07fc8088(iVar16,iVar6 + 0x40);
      goto switchD_07fc279a_caseD_4a;
    case 2:
      uVar20 = (uint)local_46;
      *(byte *)(DAT_07fc2bfc + 0x89) = local_46;
      *(byte *)(iVar6 + 0x8a) = local_45;
      if (uVar20 < 0x32) {
LAB_07fc2870:
        uVar3 = 0x14;
      }
      else {
        if (uVar20 < 0xe7) {
          func_0x07f1dfb8(uVar20,10);
          if (extraout_r1_03 != 0) {
            uVar20 = uVar20 + 10;
          }
          if (uVar20 - extraout_r1_03 != 0xe6) {
            uVar20 = uVar20 - extraout_r1_03 & 0xffff;
            if (uVar20 == 0x3c) {
              uVar3 = 0x16;
            }
            else if (uVar20 == 0x46) {
              uVar3 = 0x19;
            }
            else if (uVar20 == 0x50) {
              uVar3 = 0x1d;
            }
            else if (uVar20 == 0x5a) {
              uVar3 = 0x21;
            }
            else if (uVar20 == 100) {
              uVar3 = 0x25;
            }
            else if (uVar20 == 0x6e) {
              uVar3 = 0x28;
            }
            else if (uVar20 == 0x78) {
              uVar3 = 0x2c;
            }
            else if (uVar20 == 0x82) {
              uVar3 = 0x30;
            }
            else if (uVar20 == 0x8c) {
              uVar3 = 0x33;
            }
            else if (uVar20 == 0x96) {
              uVar3 = 0x37;
            }
            else if (uVar20 == 0xa0) {
              uVar3 = 0x3b;
            }
            else if (uVar20 == 0xb4) {
              uVar3 = 0x42;
            }
            else if (uVar20 == 0xbe) {
              uVar3 = 0x46;
            }
            else if (uVar20 == 200) {
              uVar3 = 0x4a;
            }
            else if (uVar20 == 0xd2) {
              uVar3 = 0x4e;
            }
            else if (uVar20 == 0xdc) {
              uVar3 = 0x52;
            }
            else {
              if (uVar20 == 0x32) goto LAB_07fc2870;
              uVar3 = 0x3e;
            }
            goto LAB_07fc2ba0;
          }
        }
        uVar3 = 0x56;
      }
LAB_07fc2ba0:
      *(undefined2 *)(DAT_07fc2dcc + 0x36) = uVar3;
      FUN_07fc2546(&local_5c);
    case 3:
      FUN_07fc4fa4();
      break;
    case 4:
      *(undefined1 *)(DAT_07fc2c04 + 0x35) = 1;
      *DAT_07fc2c00 = 0;
      *(undefined2 *)(iVar16 + 0x36) = 0x2800;
      uVar9 = 6;
      goto LAB_07fc2c58;
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
      goto switchD_07fc279a_caseD_4a;
    case 7:
      if (local_47 == 0) {
        if (*(char *)(DAT_07fc2c04 + 0xb) == '\x10') {
          uVar9 = 0x16;
          goto LAB_07fc2c58;
        }
      }
      else if (*(char *)(DAT_07fc2c04 + 0xb) != '\x10') {
        uVar9 = 0x10;
        goto LAB_07fc2c58;
      }
      goto switchD_07fc279a_caseD_4a;
    case 10:
      *(uint *)(DAT_07fc2bfc + 0x58) =
           ((uint)local_44 * 0x100 + (uint)local_45) * 0x10000 +
           (uint)local_46 * 0x100 + (uint)local_47;
      goto switchD_07fc279a_caseD_4a;
    case 0xb:
      FUN_07fc25ec(0xb,*(undefined1 *)(DAT_07fc2c00 + 0xc),*(undefined1 *)(DAT_07fc2c04 + 0x28));
      break;
    case 0xc:
      FUN_07fc508c();
      break;
    case 0xe:
      iVar6 = ((uint)local_40 * 0x100 + (uint)local_41) * 0x10000 +
              (uint)local_42 * 0x100 + (uint)local_43;
      iVar16 = ((uint)local_44 * 0x100 + (uint)local_45) * 0x10000 +
               (uint)local_46 * 0x100 + (uint)local_47;
      if ((iVar16 == DAT_07fc2c0c) && (iVar6 == DAT_07fc2c10)) {
        FUN_07fc54ac();
        if (local_3f == '\0') goto LAB_07fc2bd4;
        uVar9 = 1;
      }
      else {
        if ((iVar16 != DAT_07fc2dec) || (iVar6 != DAT_07fc2dec)) {
          if (((iVar16 == DAT_07fc2df0) && (iVar6 == DAT_07fc2df0)) &&
             (FUN_07fc54ac(), local_3f != '\0')) {
            uVar9 = 2;
            goto LAB_07fc2bd6;
          }
          goto switchD_07fc279a_caseD_4a;
        }
        FUN_07fc54ac();
LAB_07fc2bd4:
        uVar9 = 0;
      }
LAB_07fc2bd6:
      FUN_07fc4258(uVar9);
      goto switchD_07fc279a_caseD_4a;
    case 0x10:
      uVar20 = (uint)local_47;
      if (6 < uVar20) {
        local_5c = (undefined2)DAT_07fc2de8;
        goto LAB_07fc2be2;
      }
      *(undefined1 *)(DAT_07fc2bfc + 0xc) = 0;
      *(undefined1 *)(iVar6 + 0xb) = 1;
      iVar14 = *(int *)(DAT_07fc2c14 + 0x28);
      func_0x07f1dfb8(iVar14,DAT_07fc2c18);
      *(uint *)(iVar6 + 0x28) = (iVar14 + DAT_07fc2c1c * uVar20) - extraout_r1;
      iVar14 = DAT_07fc2f78;
      break;
    case 0x12:
      if ((local_46 == 1) && (local_44 == 0)) {
        FUN_07fc3ac4(0xe);
      }
LAB_07fc2b86:
      FUN_07fc2ef8(iVar14 + 0x34,&local_5c);
      break;
    case 0x14:
      if (local_43 == 0) {
        FUN_07fc3a14(1);
        uVar9 = 9;
        goto LAB_07fc2c58;
      }
      FUN_07fc3a14(8);
      iVar6 = DAT_07fc2dcc;
      if (local_42 == 0) {
        if (*(byte *)(DAT_07fc2bfc + 0x10) != bVar2) {
          *(undefined4 *)(DAT_07fc2dcc + 0x2c) = 0;
          *(byte *)(iVar6 + 0x10) = bVar2;
        }
      }
      else {
        *(byte *)(DAT_07fc2bfc + 0x10) = *(byte *)(DAT_07fc2bfc + 0x10) & 0x7f;
      }
      goto switchD_07fc279a_caseD_4a;
    case 0x15:
      if ((local_42 & 7) == 0) {
        if ((local_43 & 7) == 0) {
          uVar9 = DAT_07fc2c20;
          if ((*(byte *)(DAT_07fc2dcc + 0x14) & 1) != 0) {
            FUN_07fc3ac4(0);
            uVar9 = DAT_07fc2c20;
          }
          goto LAB_07fc2b94;
        }
        if (*(char *)(DAT_07fc2dcc + 0x10) != '\0') {
          *(undefined4 *)(DAT_07fc2dcc + 0x2c) = 0;
          *(undefined1 *)(iVar7 + 0x10) = 0;
        }
      }
      else {
        *(byte *)(DAT_07fc2bfc + 0x10) = *(byte *)(DAT_07fc2bfc + 0x10) | 0x80;
      }
      FUN_07fc3a14(0x80000);
      uVar9 = DAT_07fc2c20;
LAB_07fc2b94:
      FUN_07fc3a14(uVar9);
      goto switchD_07fc279a_caseD_4a;
    case 0x16:
      uVar20 = (uint)local_47;
      if (uVar20 < 7) {
        iVar6 = *(int *)(DAT_07fc2c14 + 0x28);
        iVar16 = 0;
        local_34 = -1;
        func_0x07f1e0de(DAT_07fc2c24,100);
        uVar13 = DAT_07fc2c18;
        iVar6 = iVar6 + DAT_07fc2c1c * uVar20;
        uVar3 = func_0x07f1dfb8(iVar6,DAT_07fc2c18);
        func_0x07f1dfb8(uVar3,7);
        FUN_07fc3df8(&local_34,extraout_r1_01 * 0x3000 + DAT_07fc2dc4,4,0);
        iVar14 = DAT_07fc2dd4;
        iVar6 = iVar6 - extraout_r1_00;
        if ((uint)(iVar6 - local_34) < uVar13) {
          FUN_07fc3df8(DAT_07fc2dd4,extraout_r1_01 * 0x3000 + DAT_07fc2de0,0x60,0);
          for (; iVar7 = DAT_07fc2dcc, iVar16 != 0x60; iVar16 = iVar16 + 4) {
            *(uint *)(iVar14 + iVar16) = ~*(uint *)(iVar14 + iVar16);
          }
          sVar18 = 0;
          uVar20 = 0;
          for (iVar14 = 0; iVar14 != 0x18; iVar14 = iVar14 + 1) {
            for (uVar13 = 0; uVar13 != 0x1e; uVar13 = uVar13 + 1) {
              uVar17 = 1 << (uVar13 & 0xff) & *(uint *)(DAT_07fc2dd4 + iVar14 * 4);
              sVar18 = sVar18 + (ushort)(uVar20 == 0 && uVar17 != 0);
              uVar20 = uVar17;
            }
          }
          if (sVar18 != 0) {
            local_5a = (undefined1)iVar6;
            local_5c = CONCAT11(0xf0,(undefined1)local_5c);
            local_57 = (undefined1)((uint)iVar6 >> 0x18);
            local_58 = (undefined1)((uint)iVar6 >> 0x10);
            local_59 = (undefined1)((uint)iVar6 >> 8);
            local_56 = sVar18;
            func_0x07f1e0de(DAT_07fc2dcc + 0xac,0x14);
            *(undefined1 *)(DAT_07fc2dcc + 0xac) = 1;
            *(int *)(iVar7 + 0xc0) = iVar6;
            *(char *)(iVar7 + 0xad) = (char)sVar18;
            iVar14 = DAT_07fc3004;
            goto switchD_07fc279a_caseD_4a;
          }
        }
      }
      local_5c = CONCAT11(0xff,(undefined1)local_5c);
      iVar14 = DAT_07fc3004;
      goto switchD_07fc279a_caseD_4a;
    case 0x17:
      local_5c = CONCAT11(local_5c._1_1_,0x97);
      goto LAB_07fc2d56;
    case 0x19:
      *(byte *)(DAT_07fc2dcc + 0x7c) = local_43;
      bVar11 = local_42;
      if (local_42 == 0) {
        bVar11 = 0xf;
      }
      *(byte *)(iVar7 + 0x7d) = bVar11;
      *(uint *)(iVar7 + 0x80) = (uint)local_46 * 0x3c + (uint)local_47 * 0xe10;
      *(uint *)(iVar7 + 0x84) = (uint)local_44 * 0x3c + (uint)local_45 * 0xe10;
LAB_07fc2be2:
      FUN_07fc2546(&local_5c);
      iVar14 = DAT_07fc2f78;
      break;
    case 0x1b:
      *(char *)(DAT_07fc2dcc + 0x12) = local_3d;
      if (local_3d != '\0') {
        FUN_07fc2e14();
      }
      iVar6 = 0x95;
      bVar11 = local_3b;
      goto LAB_07fc2b3e;
    case 0x1d:
      iVar6 = 0x34;
      bVar11 = local_47;
LAB_07fc2b3e:
      *(byte *)(DAT_07fc2dcc + iVar6) = bVar11;
      goto switchD_07fc279a_caseD_4a;
    case 0x20:
      FUN_07fc5120();
      break;
    case 0x22:
    case 0x3a:
      break;
    case 0x23:
      if (local_47 == 0) {
        if (-1 < (int)((uint)*(byte *)(DAT_07fc2dcc + 0x14) << 0x1e))
        goto switchD_07fc279a_caseD_4a;
        uVar9 = 0;
      }
      else {
        FUN_07fc3a14(2);
        uVar9 = 0xc;
      }
LAB_07fc2c58:
      FUN_07fc3ac4(uVar9);
switchD_07fc279a_caseD_4a:
LAB_07fc2d56:
      FUN_07fc2546(&local_5c);
      break;
    case 0x25:
      local_5c = CONCAT11(local_5c._1_1_,0x25);
      func_0x07f1e0de(&local_57,0xf);
      iVar14 = *(int *)(DAT_07fc2dd0 + 0x28);
      func_0x07f1dfb8(iVar14,DAT_07fc2ddc);
      iVar14 = (iVar14 - extraout_r1_02) + DAT_07fc2dd8 * (uint)local_47 + DAT_07fc2de4;
      local_58 = (undefined1)((uint)iVar14 >> 0x18);
      local_59 = (undefined1)((uint)iVar14 >> 0x10);
      local_5a = (undefined1)((uint)iVar14 >> 8);
      iVar14 = DAT_07fc2dc8;
      goto LAB_07fc2d56;
    case 0x30:
      local_74 = 0x2b;
      func_0x07f1e0ac(auStack_73,&local_47,0x10);
      local_63 = 0;
      local_61 = FUN_07fc18f4(auStack_73);
      if ((local_61 != '\0') && (local_47 - 0x30 < 0x4b)) {
        FUN_07fc3de8(0x64000,0x1000);
        iVar14 = DAT_07fc2dc8;
        FUN_07fc3df8(&local_74,0x64000,0x14,1);
        FUN_07fc2546(&local_5c);
        func_0x07f027e4(0);
      }
      break;
    default:
      switch(bVar11) {
      case 0x48:
        if (local_35 == '\0') {
          *(undefined1 *)(DAT_07fc2dcc + 0x11) = 2;
        }
        else {
          *(undefined1 *)(DAT_07fc2bb0 + 0x11) = 1;
          iVar14 = DAT_07fc2bb8 + (uint)*(byte *)(DAT_07fc2bb4 + 0x5a) * 4;
          puVar15 = (undefined4 *)(iVar14 + 100);
          if (*(int *)(iVar14 + 100) == 0) {
            puVar8 = (undefined1 *)
                     func_0x07f1bbb0(DAT_07fc2bbc,(uint)*(byte *)(DAT_07fc2bb4 + 0x5a) * 0x100 + 10,
                                     4,2);
            puVar8[1] = 1;
            *puVar8 = 0xc;
            *puVar15 = puVar8;
          }
          func_0x07f1bbe2();
          *puVar15 = 0;
          iVar14 = DAT_07fc2f78;
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
        goto switchD_07fc279a_caseD_4a;
      case 0x50:
        *(byte *)(DAT_07fc2bfc + 0xc4) = local_47;
        if (local_47 == 0) {
          uVar9 = 0x20000000;
        }
        else {
          uVar9 = 0x2000;
        }
        goto LAB_07fc2b94;
      default:
        if (bVar11 == 0x43) {
          FUN_07fc3a8c();
          goto LAB_07fc2b86;
        }
        if (bVar11 == 0xf7) {
          uVar9 = 0;
          if (*(char *)(DAT_07fc2c08 + 0x14) == '+') {
            uVar9 = FUN_07fc5698(0,DAT_07fc2c08 + 0x15,*(undefined1 *)(DAT_07fc2c08 + 0x27));
          }
          local_54 = 0;
                    /* WARNING: Ignoring partial resolution of indirect */
          local_56._0_1_ = 0;
          local_57 = 0;
          local_58 = (undefined1)((uint)uVar9 >> 0x18);
          local_59 = (undefined1)((uint)uVar9 >> 0x10);
          local_5a = (undefined1)((uint)uVar9 >> 8);
        }
        goto switchD_07fc279a_caseD_4a;
      }
    }
switchD_07fc279a_caseD_49:
    uVar5 = uVar5 + 1;
  } while( true );
}

