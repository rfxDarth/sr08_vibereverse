// rea decompile_all
// name: FUN_07fc8e94
// address: 0x7fc8e94
// body: available
// range: 0x7fc8e94-0x7fc91eb inclusive
// range: 0x7fc92f0-0x7fc9683 inclusive
// range: 0x7fc9690-0x7fc970b inclusive
// non_contiguous: true
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc8e94(void)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  ushort uVar5;
  undefined1 uVar6;
  undefined2 uVar7;
  ushort uVar8;
  int *piVar9;
  code *pcVar10;
  undefined2 *puVar11;
  undefined4 *puVar12;
  ushort *puVar13;
  char cVar14;
  uint uVar15;
  uint uVar16;
  int iVar17;
  ushort uVar18;
  uint uVar19;
  int iVar20;
  uint uVar21;
  ushort *puVar22;
  undefined2 *unaff_r4;
  int iVar23;
  ushort *unaff_r5;
  undefined2 unaff_r6;
  undefined2 *unaff_r7;
  uint *puVar24;
  undefined8 uVar25;
  undefined2 in_stack_0000000c;
  int in_stack_00000010;
  undefined4 in_stack_00000014;
  undefined4 in_stack_00000018;
  ushort *in_stack_0000001c;
  undefined1 in_stack_00000020;
  int in_stack_00000024;
  undefined4 in_stack_00000028;
  int in_stack_0000002c;
  ushort in_stack_00000034;
  uint in_stack_00000038;
  uint uStack0000003c;
  ushort in_stack_00000040;
  int in_stack_00000044;
  undefined2 in_stack_00000048;
  undefined4 in_stack_0000004c;
  uint in_stack_00000050;
  undefined4 in_stack_00000054;
  uint in_stack_00000058;
  uint in_stack_0000005c;
  uint in_stack_00000060;
  int in_stack_00000064;
  uint in_stack_00000068;
  int in_stack_0000006c;
  int in_stack_00000070;
  uint in_stack_00000074;
  uint in_stack_00000078;
  uint in_stack_0000007c;
  
  while (((uVar8 = (ushort)in_stack_00000050, (int)((uint)unaff_r5[4] << 0x18) < 0 &&
          ((*(uint *)(in_stack_0000006c + 0x30) & in_stack_00000068) == 0)) &&
         ((*DAT_07fc91ec & 1) == 0))) {
    func_0x07f1c3da();
    iVar17 = DAT_07fc920c;
    uVar6 = (undefined1)in_stack_00000064;
    if (*(char *)(DAT_07fc920c + 3) == '\x04') {
      FUN_07fca7a0();
      in_stack_00000078 = 0;
      iVar23 = func_0x07f0cff4(&stack0x00000078,4);
      piVar9 = DAT_07fc921c;
      if (iVar23 != 0) {
        *DAT_07fc921c = 1;
        do {
        } while (*piVar9 != 0);
        uVar15 = *(uint *)(in_stack_0000006c + 0x1c);
        uVar19 = *(uint *)(iVar17 + 0x44);
        if (uVar15 < uVar19) {
          *(undefined4 *)(iVar17 + 0x44) = 0;
          uVar19 = 0;
        }
        if (*(char *)(iVar17 + 1) == '\x01') {
          *(uint *)(iVar17 + 0x44) = uVar15;
          *(undefined1 *)(iVar17 + 1) = 0;
          uVar15 = FUN_07fc6e04();
LAB_07fc8f18:
          *(short *)(iVar17 + 0x38) = (short)uVar15;
          iVar23 = FUN_07fc16f8();
          if (iVar23 == 0) {
            *(undefined1 *)(iVar17 + 1) = uVar6;
          }
        }
        else if (DAT_07fc9220 < uVar15 - uVar19) {
          *(uint *)(iVar17 + 0x44) = uVar15;
          uVar15 = FUN_07fc6e04();
          uVar5 = *(ushort *)(iVar17 + 0x38);
          uVar18 = uVar5 - (short)uVar15;
          if (uVar5 < uVar15) {
            uVar18 = (short)uVar15 - uVar5;
          }
          if (0x17 < uVar18) goto LAB_07fc8f18;
        }
      }
    }
    iVar23 = DAT_07fc9224;
    if (*(char *)(iVar17 + 0xc) == '\0') {
      *(uint *)(DAT_07fc9224 + 0x60) = in_stack_00000060;
      *(undefined4 *)(iVar23 + 100) = 0x10;
      *(uint *)(iVar23 + 0x68) = in_stack_00000058;
      iVar17 = DAT_07fc9228;
      *(int *)(iVar23 + 0x6c) = DAT_07fc9228;
      *(undefined4 *)(iVar23 + 0x40) = 0x14;
      *(undefined4 *)(iVar23 + 0x44) = DAT_07fc922c;
      *(uint *)(iVar23 + 0x48) = in_stack_00000060;
      *(uint *)(iVar23 + 0x4c) = in_stack_00000060;
      *(undefined4 *)(iVar23 + 0x50) = in_stack_00000054;
      *(undefined4 *)(iVar23 + 0x54) = 0x14;
      *(undefined4 *)(iVar23 + 0x58) = DAT_07fc9230;
      *(uint *)(iVar23 + 0x5c) = in_stack_00000060;
      iVar20 = DAT_07fc9234 + 0x34;
      *(uint *)(iVar23 + 0x20) = in_stack_00000060;
      *(uint *)(iVar23 + 0x24) = in_stack_00000060;
      *(uint *)(iVar23 + 0x28) = in_stack_0000005c;
      *(uint *)(iVar23 + 0x2c) = in_stack_00000058;
      *(int *)(iVar23 + 0x30) = iVar20;
      *(uint *)(iVar23 + 0x34) = in_stack_00000060;
      *(uint *)(iVar23 + 0x38) = in_stack_00000060;
      *(undefined4 *)(iVar23 + 0x3c) = 0x10;
      iVar23 = DAT_07fc9238;
      *(uint *)(DAT_07fc9238 + 0x14) = in_stack_00000060;
      *(uint *)(iVar23 + 0x18) = in_stack_00000060;
      *(undefined4 *)(iVar23 + 0x1c) = 0x20;
      *(int *)(iVar23 + 0x20) = in_stack_00000064;
      *(int *)(iVar23 + 0x24) = iVar17 + 0x20;
      puVar24 = DAT_07fc9240;
      uVar15 = DAT_07fc923c + 0x46;
      *DAT_07fc9240 = in_stack_00000060;
      puVar24[1] = in_stack_00000060;
      puVar24[2] = in_stack_0000005c;
      puVar24[3] = in_stack_00000058;
      puVar24[4] = uVar15;
      iVar17 = DAT_07fc9234 + 0x3c;
      *(uint *)(iVar23 + 0x3c) = in_stack_00000060;
      *(uint *)(iVar23 + 0x40) = in_stack_00000060;
      *(undefined4 *)(iVar23 + 0x44) = in_stack_00000054;
      *(int *)(iVar23 + 0x48) = in_stack_00000064;
      *(int *)(iVar23 + 0x4c) = iVar17;
      FUN_07fc3df8(iVar23 + 0x50,0x61000,0x14,in_stack_00000060);
      FUN_07fc757c();
      *(char *)(DAT_07fc9244 + 6) = (char)in_stack_00000060;
      *(uint *)(DAT_07fc920c + 0x68) = in_stack_00000060;
      iVar17 = DAT_07fc9248;
      func_0x07f1e0de(DAT_07fc9248,0xd4);
      *(undefined1 *)(iVar17 + 0x8a) = in_stack_00000020;
      *(undefined1 *)(iVar17 + 0x89) = 0xaa;
      *(undefined2 *)(iVar17 + 0x94) = 0x3200;
      *(undefined2 *)(iVar17 + 0x36) = 0x3e;
      iVar23 = DAT_07fc924c;
      *(uint *)(DAT_07fc924c + 0x40) = in_stack_00000060;
      *(int *)(iVar23 + 0x44) = in_stack_00000064;
      *(undefined4 *)(iVar23 + 0x48) = 9;
      *(int *)(iVar23 + 0x4c) = in_stack_00000064;
      *(int *)(iVar23 + 0x50) = in_stack_00000064;
      *(undefined4 *)(iVar23 + 0x54) = 0x7b;
      *(undefined4 *)(iVar23 + 0x2c) = DAT_07fc9250;
      in_stack_00000078 = in_stack_00000060;
      FUN_07fc3df8(&stack0x00000078,in_stack_00000018,in_stack_0000005c,in_stack_00000060);
      if (in_stack_00000078 != 0xffffffff) {
        FUN_07fc3df8(iVar17 + 0x30,in_stack_00000018,0x70,0);
        *(undefined4 *)(iVar23 + 0x2c) = *(undefined4 *)(iVar17 + 0x30);
      }
      cVar14 = *(char *)(DAT_07fc9204 + 2);
      uVar15 = (uint)(char)*(byte *)(DAT_07fc9204 + in_stack_00000024);
      bVar1 = *(byte *)(DAT_07fc9204 + 9);
      bVar2 = *(byte *)(DAT_07fc9204 + 8);
      bVar3 = *(byte *)(DAT_07fc9204 + 7);
      bVar4 = *(byte *)(DAT_07fc9204 + 6);
      if (((cVar14 == -0x55) || (cVar14 == ';')) &&
         (uVar19 = (uint)*(byte *)(DAT_07fc9204 + 5) * 0x100 + (uint)*(byte *)(DAT_07fc9204 + 4),
         uVar19 <= DAT_07fc9254)) {
        if (*(byte *)(DAT_07fc9204 + in_stack_00000024) < 0x65) {
          uVar16 = *(uint *)(DAT_07fc9248 + 0x9c);
          uVar21 = uVar15;
          if ((uVar16 == uVar15) ||
             ((uVar16 < 0x65 && (uVar21 = uVar16, *(ushort *)(DAT_07fc9248 + 0x98) == DAT_07fc9258))
             )) {
            *(undefined1 *)(DAT_07fc920c + 0x20) = uVar6;
            *(uint *)(DAT_07fc923c + 0x2c) = uVar21;
          }
          FUN_07fc53c0(s_Ret__d__d_07fc925c,cVar14,uVar15);
          FUN_07fc53c0(s_1dba___d__d_07fc9268,*(undefined4 *)(DAT_07fc923c + 0x2c),
                       *(undefined4 *)(DAT_07fc9248 + 0x9c));
        }
        *(uint *)(DAT_07fc9248 + 0x44) = uVar19;
        *(uint *)(DAT_07fc924c + 0x2c) =
             (uint)bVar2 * 0x10000 + (uint)bVar1 * 0x1000000 + (uint)bVar3 * 0x100 + (uint)bVar4 + 3
        ;
      }
      iVar17 = DAT_07fc924c;
      FUN_07fc8088(*(undefined4 *)(DAT_07fc924c + 0x2c),DAT_07fc924c + 0x40);
      piVar9 = DAT_07fc921c;
      *DAT_07fc921c = in_stack_00000064;
      *(undefined4 *)(iVar17 + 0x28) = *(undefined4 *)(iVar17 + 0x2c);
      do {
      } while (*piVar9 != 0);
      *(uint *)(iVar17 + 0x3c) = in_stack_00000060;
      *(undefined4 *)(iVar17 + 0x38) = *(undefined4 *)(in_stack_0000006c + 0x1c);
      pcVar10 = DAT_07fc927c;
      (*DAT_07fc927c)(5,in_stack_00000028,1,DAT_07fc9278);
      (*pcVar10)(3,1,1,DAT_07fc9280);
      (*pcVar10)(2,0x14,1,DAT_07fc9284);
      (*pcVar10)(1,in_stack_00000038 + 0xf4,1,DAT_07fc9288);
      (*pcVar10)(4,in_stack_00000028,1,DAT_07fc928c);
      (*pcVar10)(7,10,1,DAT_07fc9290);
      (*pcVar10)(8,1,1,DAT_07fc9294);
      (*pcVar10)(6,in_stack_00000038 + 0xf4,1,DAT_07fc9298);
      FUN_07fc381c(1);
      FUN_07fc381c(in_stack_00000060);
      pcVar10 = DAT_07fc92a8;
      (*DAT_07fc92a8)(s_version__d_07fc929c,0xca);
      FUN_07fc20f8();
      in_stack_0000007c = in_stack_00000060;
      in_stack_00000078 = in_stack_00000060;
      FUN_07fc3df8(&stack0x00000078,DAT_07fc92ac,6,in_stack_00000060);
      (*pcVar10)(s_nvds_mac_0x_x_0x_x_0x_x_0x_x_0x__07fc92b0,in_stack_0000007c._1_1_,
                 in_stack_0000007c & 0xff,in_stack_00000078._3_1_);
      iVar17 = DAT_07fc920c;
      (*pcVar10)(s_rsf__d_07fc92d8,*(undefined1 *)(DAT_07fc920c + 0xd));
      if (*(char *)(iVar17 + 0xd) == '\x01') {
        cVar14 = '\x1e';
      }
      else {
        cVar14 = (*(char *)(iVar17 + 0xd) == '\x02') * ' ';
      }
      FUN_07fc3ac4(cVar14);
      *(undefined1 *)(iVar17 + 0xc) = uVar6;
      unaff_r5 = in_stack_0000001c;
    }
    iVar23 = in_stack_00000064;
    if (((*DAT_07fc92e0 != '\x01') && (*(char *)(iVar17 + 0x34) == '\0')) &&
       (iVar23 = in_stack_00000010, *(char *)(iVar17 + 0x28) != '\0')) {
      iVar23 = 0xb;
    }
    func_0x07f1c054(in_stack_00000044 + 0x13,4,iVar23);
    cVar14 = *(char *)(iVar17 + 0xe);
    if ((int)((uint)*DAT_07fc92e4 << 0x1a) < 0) {
      uVar15 = in_stack_00000074;
      if (cVar14 != '\x02') {
        if (cVar14 != '\0') goto LAB_07fc9350;
        *(char *)(iVar17 + 0xe) = (char)in_stack_00000058;
        piVar9 = DAT_07fc9684;
        *DAT_07fc9684 = 1;
        do {
        } while (*piVar9 != 0);
        *(undefined4 *)(iVar17 + 0x6c) = *(undefined4 *)(in_stack_0000006c + 0x1c);
      }
      piVar9 = DAT_07fc9684;
      *DAT_07fc9684 = 1;
      do {
      } while (*piVar9 != 0);
      uVar19 = *(uint *)(in_stack_0000006c + 0x1c);
      if (uVar19 < *(uint *)(iVar17 + 0x6c)) {
        uVar19 = uVar19 + in_stack_00000070;
      }
      if (DAT_07fc970c <= uVar19 - *(uint *)(iVar17 + 0x6c)) {
        FUN_07fc521c(DAT_07fc9710,DAT_07fc9714,in_stack_00000038 + 0x45);
        in_stack_00000078 = in_stack_00000054;
        FUN_07fc2ef8(DAT_07fc9688,&stack0x00000078);
        *(undefined1 *)(iVar17 + 0xe) = 4;
      }
    }
    else {
      if (cVar14 == '\x02') {
        FUN_07fc521c(DAT_07fc92e8,DAT_07fc92ec,in_stack_00000038 + 0x4f);
        in_stack_00000078 = 1;
        FUN_07fc2ef8(DAT_07fc9240,&stack0x00000078);
      }
      uVar15 = 0;
      *(undefined1 *)(iVar17 + 0xe) = 0;
    }
LAB_07fc9350:
    unaff_r5[2] = unaff_r5[2] | 0x10;
    *(undefined4 *)(iVar17 + 0x48) = DAT_07fc9718;
    iVar17 = DAT_07fc968c;
    *(undefined2 *)(DAT_07fc968c + 2) = 1;
    puVar22 = (ushort *)(iVar17 + 0x12);
    for (uVar19 = in_stack_00000060; puVar13 = DAT_07fc975c, uVar19 != 0x20; uVar19 = uVar19 + 8) {
      *puVar22 = (*puVar22 & 0xff00) + (ushort)(byte)(uVar15 >> (uVar19 & 0xff));
      puVar22[-4] = (puVar22[-4] & 0xff00) + (ushort)(byte)(in_stack_00000074 >> (uVar19 & 0xff));
      puVar22 = puVar22 + 1;
    }
    uVar5 = (ushort)DAT_07fc9734;
    DAT_07fc975c[0xb] = DAT_07fc975c[0xb] & uVar5;
    puVar13[7] = puVar13[7] & uVar5;
    puVar13[2] = 1;
    iVar23 = 0;
    puVar13[4] = 0;
    *puVar13 = *puVar13 & ~in_stack_00000040;
    *puVar13 = *puVar13 | uVar8;
    *DAT_07fc9760 = (*DAT_07fc9760 | in_stack_00000050) & 0xffffff80;
    *DAT_07fc976c = in_stack_0000004c;
    in_stack_00000078 = 0;
    iVar17 = FUN_07fc3030(DAT_07fc9750,&stack0x00000078);
    unaff_r7 = DAT_07fc971c;
    if (iVar17 == 0) {
      FUN_07fc2fd8(DAT_07fc9750);
      uVar15 = in_stack_00000078;
      FUN_07fc521c(s_k__d_07fc9770,in_stack_00000078);
      iVar17 = DAT_07fc9724;
      if ((uVar15 == 8) || (uVar15 == 1)) {
        *(undefined2 *)(DAT_07fc9724 + in_stack_0000002c) = in_stack_0000000c;
      }
      iVar20 = 0;
      do {
        unaff_r7 = DAT_07fc971c;
        if (iVar20 + 4 == 0x90) goto LAB_07fc93dc;
        puVar22 = *(ushort **)(DAT_07fc9778 + iVar20);
        iVar20 = iVar20 + 4;
      } while (*puVar22 != (ushort)*(byte *)(iVar17 + 0xb));
      puVar24 = *(uint **)(puVar22 + 8);
      for (uVar19 = (uint)puVar22[1]; uVar19 != 0; uVar19 = uVar19 - 1) {
        if ((*puVar24 & uVar15) != 0) {
          if ((code *)puVar24[2] != (code *)0x0) {
            (*(code *)puVar24[2])(uVar15);
          }
          unaff_r7 = DAT_07fc971c;
          if ((ushort)puVar24[1] != DAT_07fc977c) {
            FUN_07fc3ac4();
            unaff_r7 = DAT_07fc971c;
          }
          break;
        }
        puVar24 = puVar24 + 3;
      }
    }
LAB_07fc93dc:
    for (; unaff_r4 = DAT_07fc9720, iVar23 != 0xc0; iVar23 = iVar23 + 0x10) {
      if (*(char *)(DAT_07fc9768 + iVar23) == '\x01') {
        uVar19 = FUN_07fc432c();
        iVar17 = DAT_07fc9768 + iVar23;
        uVar15 = uVar19;
        if (uVar19 < *(uint *)(iVar17 + 8)) {
          uVar15 = uVar19 + in_stack_00000070;
        }
        if (*(uint *)(iVar17 + 4) <= uVar15 - *(uint *)(iVar17 + 8)) {
          *(uint *)(iVar17 + 8) = uVar19;
          (**(code **)(iVar17 + 0xc))();
          if (*(char *)(iVar17 + 1) == '\0') {
            *(undefined1 *)(DAT_07fc9768 + iVar23) = 0;
          }
        }
      }
    }
    unaff_r6 = in_stack_00000048;
    if (*(int *)(DAT_07fc9724 + 0x78) == 0) break;
    WaitForInterrupt();
    *unaff_r7 = in_stack_00000048;
  }
  disableIRQinterrupts();
  if ((char)DAT_07fc9744[2] == '\x02') {
    in_stack_00000078 = 0;
  }
  else {
    in_stack_00000078 = *(uint *)(*DAT_07fc9730 + 0x28);
  }
  uVar7 = (undefined2)in_stack_00000054;
  if (((unaff_r4[3] & 1) == 0) && (iVar17 = func_0x07f1b74e(), iVar17 != 0)) {
    if (*(char *)((int)DAT_07fc9744 + 3) != '\0') {
      if ((unaff_r5[10] & 1) != 0) {
LAB_07fc9614:
        unaff_r5[8] = unaff_r5[8] | (ushort)in_stack_0000005c;
        *DAT_07fc9764 = *DAT_07fc9764 | in_stack_0000005c;
        unaff_r5[9] = unaff_r5[9] & 0xffdf;
        unaff_r5[8] = unaff_r5[8] | (ushort)in_stack_00000058;
        if (*DAT_07fc974c == '\x01') {
          unaff_r5[9] = unaff_r5[9] & 0xffef;
        }
        else {
          unaff_r5[9] = unaff_r5[9] & ~(ushort)in_stack_0000005c;
          puVar12 = DAT_07fc9728;
          *DAT_07fc9728 = 0;
          unaff_r5[9] = unaff_r5[9] | (ushort)in_stack_0000002c;
          unaff_r5[9] = unaff_r5[9] & ~(ushort)in_stack_0000002c;
          puVar12[5] = 0;
          puVar12[10] = DAT_07fc972c;
          puVar12[0xb] = in_stack_0000004c;
          *unaff_r5 = *unaff_r5 | uVar8;
          for (in_stack_00000078 = 0; (int)in_stack_00000078 < 100;
              in_stack_00000078 = in_stack_00000078 + 1) {
          }
          unaff_r5[9] = unaff_r5[9] | 0x10;
          puVar12[5] = in_stack_00000014;
          *unaff_r5 = *unaff_r5 & ~uVar8;
        }
        unaff_r5[8] = unaff_r5[8] | in_stack_00000034;
        unaff_r5[0x11] = unaff_r5[0x11] & (ushort)DAT_07fc9798;
        unaff_r5[0x11] = unaff_r5[0x11] | 1;
        FUN_07fc0194(0xd);
        unaff_r5[5] = (unaff_r5[5] | 1) & ~(ushort)in_stack_00000058;
        do {
        } while (-1 < (int)((uint)unaff_r5[5] << 0x19));
        unaff_r5[1] = 0;
        puVar11 = DAT_07fc9720;
        if ((int)((uint)unaff_r5[10] << 0x1a) < 0) {
          DAT_07fc9720[-1] = uVar7;
        }
        WaitForInterrupt();
        if ((int)((uint)unaff_r5[10] << 0x1a) < 0) {
          *puVar11 = uVar7;
        }
        *DAT_07fc9764 = *DAT_07fc9764 & ~in_stack_0000005c;
        goto LAB_07fc96f8;
      }
      if (*DAT_07fc9744 == 0) {
        if (*(int *)(DAT_07fc9780 + 0x28) != 0) {
          in_stack_00000078 = *(uint *)(*DAT_07fc9730 + 0x28);
        }
        iVar17 = func_0x07f1c164(&stack0x00000078,(char)DAT_07fc9744[1]);
        if (((iVar17 != 0) && (-1 < *(int *)(in_stack_0000006c + 0x10) << 0x19)) &&
           (iVar17 = func_0x07f0cff4(&stack0x00000078,(char)DAT_07fc9744[1]), iVar17 != 0)) {
          if (in_stack_00000078 == 0) {
            uStack0000003c = 0;
          }
          else if ((uint)(*(int *)(in_stack_0000006c + 0x20) + DAT_07fc9738) < 0xdb) {
            uStack0000003c = in_stack_00000078 - 1;
            in_stack_00000078 = uStack0000003c;
          }
          else {
            uStack0000003c = in_stack_00000078;
          }
          iVar23 = *(int *)(DAT_07fc9748 + 8);
          iVar17 = func_0x07f1dfb8(iVar23 * (DAT_07fc9754 + 0x9e) + DAT_07fc9758,DAT_07fc9784);
          iVar23 = func_0x07f1dfb8(DAT_07fc9788 * iVar23 + DAT_07fc9758,DAT_07fc9784);
          *(uint *)(in_stack_0000006c + 0x3c) =
               *(uint *)(in_stack_0000006c + 0x3c) & DAT_07fc978c | iVar17 - iVar23;
          if (*DAT_07fc974c == '\x02') {
            iVar23 = 0x23;
          }
          else {
            iVar23 = 0x12;
          }
          iVar23 = iVar23 + iVar17;
          *(uint *)(in_stack_0000006c + 0x3c) =
               *(uint *)(in_stack_0000006c + 0x3c) & DAT_07fc9790 | iVar23 * 0x400;
          *(uint *)(in_stack_0000006c + 0x3c) =
               (*(uint *)(in_stack_0000006c + 0x3c) & DAT_07fc9740) + iVar17 * 0x200000;
          if (DAT_07fc9784 <= uStack0000003c) goto LAB_07fc9700;
          uVar25 = func_0x07f1e00c(*(undefined4 *)(DAT_07fc9748 + 0x50),
                                   *(undefined4 *)(DAT_07fc9748 + 0x54),uStack0000003c,0);
          iVar17 = ((uint)uVar25 >> 0x14) + (int)((ulonglong)uVar25 >> 0x20) * 0x1000 + -1;
          if (iVar17 != iVar23 + 1) {
            iVar23 = iVar17;
          }
          func_0x07f08f9e(iVar23,(char)DAT_07fc9744[2] != '\0');
          (**(code **)(DAT_07fc9794 + 0x2c))();
          puVar24 = DAT_07fc973c;
          do {
          } while ((*(uint *)(in_stack_0000006c + 0x30) & in_stack_00000068) == 0);
          do {
          } while ((*DAT_07fc973c & in_stack_00000038) == 0);
          *DAT_07fc973c = *DAT_07fc973c & ~in_stack_00000050;
          uVar5 = DAT_07fc9720[4];
          if (uVar5 < 0x46) {
            DAT_07fc9720[4] = 0x46;
            *(uint *)(DAT_07fc9724 + 0x50) = 0x46 - (uint)uVar5;
          }
          func_0x07f02326();
          *(uint *)(DAT_07fc9724 + 0x54) = puVar24[2];
          do {
          } while (-1 < (int)(*puVar24 << 0x18));
          unaff_r5[4] = unaff_r5[4] & ~uVar8;
          unaff_r6 = in_stack_00000048;
          goto LAB_07fc9614;
        }
      }
    }
    WaitForInterrupt();
  }
LAB_07fc96f8:
  enableIRQinterrupts();
  *unaff_r7 = unaff_r6;
  FUN_07fc8e94();
LAB_07fc9700:
  *unaff_r7 = in_stack_00000048;
  *DAT_07fc9720 = uVar7;
  do {
                    /* WARNING: Do nothing block with infinite loop */
  } while( true );
}

