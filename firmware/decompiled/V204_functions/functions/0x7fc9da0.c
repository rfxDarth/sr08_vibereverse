// rea decompile_all
// name: FUN_07fc9da0
// address: 0x7fc9da0
// body: available
// range: 0x7fc9da0-0x7fca0bd inclusive
// range: 0x7fca1a0-0x7fca533 inclusive
// range: 0x7fca538-0x7fca5b3 inclusive
// non_contiguous: true
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc9da0(void)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  ushort uVar5;
  byte bVar6;
  undefined1 uVar7;
  undefined2 uVar8;
  ushort uVar9;
  undefined4 *puVar10;
  code *pcVar11;
  int *piVar12;
  undefined2 *puVar13;
  ushort *puVar14;
  char cVar15;
  uint uVar16;
  int iVar17;
  int iVar18;
  ushort uVar19;
  uint uVar20;
  uint *puVar21;
  ushort *puVar22;
  undefined2 *unaff_r4;
  int iVar23;
  ushort *unaff_r5;
  undefined2 unaff_r6;
  undefined2 *unaff_r7;
  uint *puVar24;
  undefined8 uVar25;
  undefined2 in_stack_00000010;
  uint in_stack_00000014;
  undefined4 in_stack_00000018;
  undefined4 in_stack_0000001c;
  ushort *in_stack_00000020;
  undefined1 in_stack_00000024;
  int in_stack_00000028;
  undefined4 in_stack_0000002c;
  int in_stack_00000030;
  uint uStack00000034;
  ushort in_stack_00000038;
  uint in_stack_0000003c;
  ushort in_stack_00000040;
  int in_stack_00000044;
  undefined2 in_stack_00000048;
  uint in_stack_0000004c;
  undefined4 in_stack_00000050;
  uint in_stack_00000054;
  uint in_stack_00000058;
  uint in_stack_0000005c;
  uint in_stack_00000060;
  uint in_stack_00000064;
  uint in_stack_00000068;
  int in_stack_0000006c;
  int in_stack_00000070;
  uint in_stack_00000074;
  uint in_stack_00000078;
  uint in_stack_0000007c;
  
  while (((uVar9 = (ushort)in_stack_00000054, (int)((uint)unaff_r5[4] << 0x18) < 0 &&
          ((*(uint *)(in_stack_0000006c + 0x30) & in_stack_00000068) == 0)) &&
         ((*DAT_07fca0c0 & 1) == 0))) {
    func_0x07f1c3da();
    iVar18 = DAT_07fca0e0;
    uVar7 = (undefined1)in_stack_00000064;
    if (*(char *)(DAT_07fca0e0 + 3) == '\x04') {
      FUN_07fcb7d4();
      in_stack_00000078 = 0;
      iVar23 = func_0x07f0cff4(&stack0x00000078,4);
      puVar24 = DAT_07fca0f0;
      if (iVar23 != 0) {
        *DAT_07fca0f0 = 1;
        do {
        } while (*puVar24 != 0);
        uVar16 = *(uint *)(in_stack_0000006c + 0x1c);
        uVar20 = *(uint *)(iVar18 + 0x44);
        if (uVar16 < uVar20) {
          *(undefined4 *)(iVar18 + 0x44) = 0;
          uVar20 = 0;
        }
        if (*(char *)(iVar18 + 1) == '\x01') {
          *(uint *)(iVar18 + 0x44) = uVar16;
          *(undefined1 *)(iVar18 + 1) = 0;
          uVar16 = FUN_07fc7308();
LAB_07fc9e24:
          *(short *)(iVar18 + 0x38) = (short)uVar16;
          iVar23 = FUN_07fc16f8();
          if (iVar23 == 0) {
            *(undefined1 *)(iVar18 + 1) = uVar7;
          }
        }
        else if (DAT_07fca0f4 < uVar16 - uVar20) {
          *(uint *)(iVar18 + 0x44) = uVar16;
          uVar16 = FUN_07fc7308();
          uVar5 = *(ushort *)(iVar18 + 0x38);
          uVar19 = uVar5 - (short)uVar16;
          if (uVar5 < uVar16) {
            uVar19 = (short)uVar16 - uVar5;
          }
          if (0x17 < uVar19) goto LAB_07fc9e24;
        }
      }
    }
    iVar23 = DAT_07fca0fc;
    puVar24 = DAT_07fca0f8;
    if (*(char *)(iVar18 + 0xd) == '\0') {
      puVar21 = DAT_07fca0f8 + 0x14;
      *(uint *)(DAT_07fca0fc + 0x5c) = in_stack_00000060;
      *(uint *)(iVar23 + 0x60) = in_stack_00000060;
      *(undefined4 *)(iVar23 + 100) = 0x10;
      *(uint *)(iVar23 + 0x68) = in_stack_00000058;
      *(uint **)(iVar23 + 0x6c) = puVar21;
      FUN_07fc2568();
      iVar18 = DAT_07fca100;
      iVar17 = DAT_07fca100 + 0x3c;
      *(uint *)(iVar23 + 0x20) = in_stack_00000060;
      *(uint *)(iVar23 + 0x24) = in_stack_00000060;
      *(uint *)(iVar23 + 0x28) = in_stack_0000005c;
      *(uint *)(iVar23 + 0x2c) = in_stack_00000058;
      *(int *)(iVar23 + 0x30) = iVar17;
      *puVar24 = in_stack_00000060;
      puVar24[1] = in_stack_00000060;
      puVar24[2] = 0x20;
      puVar24[3] = in_stack_00000064;
      puVar24[4] = DAT_07fca104;
      puVar21 = DAT_07fca10c;
      uVar16 = DAT_07fca108 + 0x46;
      *DAT_07fca10c = in_stack_00000060;
      puVar21[1] = in_stack_00000060;
      puVar21[2] = in_stack_0000005c;
      puVar21[3] = in_stack_00000058;
      puVar21[4] = uVar16;
      puVar24[10] = in_stack_00000060;
      puVar24[0xb] = in_stack_00000060;
      puVar24[0xc] = in_stack_0000004c;
      puVar24[0xd] = in_stack_00000064;
      puVar24[0xe] = iVar18 + 0x44;
      FUN_07fc3ea0(puVar24 + 0xf,0x61000,0x14,in_stack_00000060);
      FUN_07fc8500();
      *(char *)(DAT_07fca110 + 6) = (char)in_stack_00000060;
      *(uint *)(DAT_07fca0e0 + 0x68) = in_stack_00000060;
      iVar18 = DAT_07fca114;
      func_0x07f1e0de(DAT_07fca114,0xd4);
      *(undefined1 *)(iVar18 + 0x8a) = in_stack_00000024;
      *(undefined1 *)(iVar18 + 0x89) = 0xaa;
      *(undefined2 *)(iVar18 + 0x94) = 0x3200;
      *(undefined2 *)(iVar18 + 0x36) = 0x3e;
      puVar10 = DAT_07fca118;
      DAT_07fca118[6] = in_stack_00000060;
      puVar10[7] = in_stack_00000064;
      puVar10[8] = 9;
      puVar10[9] = in_stack_00000064;
      puVar10[10] = in_stack_00000064;
      puVar10[0xb] = 0x7b;
      puVar10[1] = DAT_07fca11c;
      in_stack_00000078 = in_stack_00000060;
      FUN_07fc3ea0(&stack0x00000078,in_stack_0000001c,in_stack_0000005c,in_stack_00000060);
      if (in_stack_00000078 != 0xffffffff) {
        FUN_07fc3ea0(iVar18 + 0x30,in_stack_0000001c,0x70,0);
        puVar10[1] = *(undefined4 *)(iVar18 + 0x30);
      }
      puVar10 = DAT_07fca118;
      iVar18 = DAT_07fca114;
      bVar6 = *(byte *)(DAT_07fca0d8 + in_stack_00000028);
      bVar1 = *(byte *)(DAT_07fca0d8 + 9);
      bVar2 = *(byte *)(DAT_07fca0d8 + 8);
      bVar3 = *(byte *)(DAT_07fca0d8 + 7);
      bVar4 = *(byte *)(DAT_07fca0d8 + 6);
      if (((*(char *)(DAT_07fca0d8 + 2) == -0x55) || (*(char *)(DAT_07fca0d8 + 2) == ';')) &&
         (uVar16 = (uint)*(byte *)(DAT_07fca0d8 + 5) * 0x100 + (uint)*(byte *)(DAT_07fca0d8 + 4),
         uVar16 <= DAT_07fca120)) {
        if (bVar6 < 0x65) {
          uVar20 = *(uint *)(DAT_07fca114 + 0x9c);
          if (uVar20 == (int)(char)bVar6) {
            *(undefined1 *)(DAT_07fca0e0 + 0x20) = uVar7;
            *(int *)(DAT_07fca108 + 0x2c) = (int)(char)bVar6;
          }
          else if ((uVar20 < 0x65) && (*(ushort *)(DAT_07fca114 + 0x98) == DAT_07fca124)) {
            *(undefined1 *)(DAT_07fca0e0 + 0x20) = uVar7;
            *(uint *)(DAT_07fca108 + 0x2c) = uVar20;
          }
        }
        *(uint *)(iVar18 + 0x44) = uVar16;
        puVar10[1] = (uint)bVar2 * 0x10000 + (uint)bVar1 * 0x1000000 + (uint)bVar3 * 0x100 +
                     (uint)bVar4 + 3;
      }
      puVar10 = DAT_07fca118;
      FUN_07fc9004(DAT_07fca118[1],DAT_07fca118 + 6);
      puVar24 = DAT_07fca0f0;
      *DAT_07fca0f0 = in_stack_00000064;
      *puVar10 = puVar10[1];
      do {
      } while (*puVar24 != 0);
      puVar10[5] = in_stack_00000060;
      puVar10[4] = *(undefined4 *)(in_stack_0000006c + 0x1c);
      pcVar11 = DAT_07fca12c;
      (*DAT_07fca12c)(5,in_stack_0000002c,DAT_07fca128);
      (*pcVar11)(3,1,DAT_07fca130);
      (*pcVar11)(2,0x14,DAT_07fca134);
      (*pcVar11)(1,in_stack_0000003c + 0xf4,DAT_07fca138);
      (*pcVar11)(4,in_stack_0000002c,DAT_07fca13c);
      (*pcVar11)(7,10,DAT_07fca140);
      (*pcVar11)(8,1,DAT_07fca144);
      (*pcVar11)(6,in_stack_0000003c + 0xf4,DAT_07fca148);
      FUN_07fc3838(1);
      FUN_07fc3838(in_stack_00000060);
      pcVar11 = DAT_07fca158;
      (*DAT_07fca158)(s_version__d_07fca14c,0xcc);
      FUN_07fc20f0();
      in_stack_0000007c = in_stack_00000060;
      in_stack_00000078 = in_stack_00000060;
      FUN_07fc3ea0(&stack0x00000078,DAT_07fca15c,6,in_stack_00000060);
      (*pcVar11)(s_nvds_mac_0x_x_0x_x_0x_x_0x_x_0x__07fca160,in_stack_0000007c._1_1_,
                 in_stack_0000007c & 0xff,in_stack_00000078._3_1_);
      iVar18 = DAT_07fca0e0;
      (*pcVar11)(s_rsf__d_07fca188,*(undefined1 *)(DAT_07fca0e0 + 0xe));
      if (*(char *)(iVar18 + 0xe) == '\x01') {
        cVar15 = '\x1e';
      }
      else {
        cVar15 = (*(char *)(iVar18 + 0xe) == '\x02') * ' ';
      }
      FUN_07fc3b78(cVar15);
      *(undefined1 *)(iVar18 + 0xd) = uVar7;
      unaff_r5 = in_stack_00000020;
    }
    uVar16 = in_stack_00000064;
    if (((*DAT_07fca190 != '\x01') && (*(char *)(iVar18 + 0x34) == '\0')) &&
       (uVar16 = in_stack_00000014, *(char *)(iVar18 + 0x28) != '\0')) {
      uVar16 = 0xb;
    }
    func_0x07f1c054(in_stack_00000044 + 0x13,4,uVar16);
    cVar15 = *(char *)(iVar18 + 0xf);
    if ((int)((uint)*DAT_07fca194 << 0x1a) < 0) {
      uVar16 = in_stack_00000074;
      if (cVar15 != '\x02') {
        if (cVar15 != '\0') goto LAB_07fca200;
        *(char *)(iVar18 + 0xf) = (char)in_stack_00000058;
        piVar12 = DAT_07fca534;
        *DAT_07fca534 = 1;
        do {
        } while (*piVar12 != 0);
        *(undefined4 *)(iVar18 + 0x6c) = *(undefined4 *)(in_stack_0000006c + 0x1c);
      }
      piVar12 = DAT_07fca534;
      *DAT_07fca534 = 1;
      do {
      } while (*piVar12 != 0);
      uVar20 = *(uint *)(in_stack_0000006c + 0x1c);
      if (uVar20 < *(uint *)(iVar18 + 0x6c)) {
        uVar20 = uVar20 + in_stack_00000070;
      }
      if (DAT_07fca5b4 <= uVar20 - *(uint *)(iVar18 + 0x6c)) {
        FUN_07fc532c(DAT_07fca5b8,DAT_07fca5bc,in_stack_0000003c + 0x45);
        in_stack_00000078 = in_stack_0000004c;
        FUN_07fc2ea8(DAT_07fca5c4,&stack0x00000078);
        *(undefined1 *)(iVar18 + 0xf) = 4;
      }
    }
    else {
      if (cVar15 == '\x02') {
        FUN_07fc532c(DAT_07fca198,DAT_07fca19c,in_stack_0000003c + 0x4f);
        in_stack_00000078 = 1;
        FUN_07fc2ea8(DAT_07fca10c,&stack0x00000078);
      }
      uVar16 = 0;
      *(undefined1 *)(iVar18 + 0xf) = 0;
    }
LAB_07fca200:
    unaff_r5[2] = unaff_r5[2] | 0x10;
    *(undefined4 *)(iVar18 + 0x48) = DAT_07fca5c0;
    iVar18 = DAT_07fca5c8;
    *(undefined2 *)(DAT_07fca5c8 + 2) = 1;
    puVar22 = (ushort *)(iVar18 + 0x12);
    for (uVar20 = in_stack_00000060; puVar14 = DAT_07fca60c, uVar20 != 0x20; uVar20 = uVar20 + 8) {
      *puVar22 = (*puVar22 & 0xff00) + (ushort)(byte)(uVar16 >> (uVar20 & 0xff));
      puVar22[-4] = (puVar22[-4] & 0xff00) + (ushort)(byte)(in_stack_00000074 >> (uVar20 & 0xff));
      puVar22 = puVar22 + 1;
    }
    uVar5 = (ushort)DAT_07fca5e4;
    DAT_07fca60c[0xb] = DAT_07fca60c[0xb] & uVar5;
    puVar14[7] = puVar14[7] & uVar5;
    puVar14[2] = 1;
    iVar23 = 0;
    puVar14[4] = 0;
    *puVar14 = *puVar14 & ~in_stack_00000040;
    *puVar14 = *puVar14 | uVar9;
    *DAT_07fca610 = (*DAT_07fca610 | in_stack_00000054) & 0xffffff80;
    *DAT_07fca61c = in_stack_00000050;
    in_stack_00000078 = 0;
    iVar18 = FUN_07fc2fcc(DAT_07fca600,&stack0x00000078);
    unaff_r7 = DAT_07fca5cc;
    if (iVar18 == 0) {
      FUN_07fc2f8c(DAT_07fca600);
      uVar16 = in_stack_00000078;
      FUN_07fc532c(s_k__d_07fca620,in_stack_00000078);
      iVar18 = DAT_07fca5d4;
      if ((uVar16 == 8) || (uVar16 == 1)) {
        *(undefined2 *)(DAT_07fca5d4 + in_stack_00000030) = in_stack_00000010;
      }
      iVar17 = 0;
      do {
        unaff_r7 = DAT_07fca5cc;
        if (iVar17 + 4 == 0x90) goto LAB_07fca28c;
        puVar22 = *(ushort **)(DAT_07fca628 + iVar17);
        iVar17 = iVar17 + 4;
      } while (*puVar22 != (ushort)*(byte *)(iVar18 + 0xc));
      puVar24 = *(uint **)(puVar22 + 8);
      for (uVar20 = (uint)puVar22[1]; uVar20 != 0; uVar20 = uVar20 - 1) {
        if ((*puVar24 & uVar16) != 0) {
          if ((code *)puVar24[2] != (code *)0x0) {
            (*(code *)puVar24[2])(uVar16);
          }
          unaff_r7 = DAT_07fca5cc;
          if ((ushort)puVar24[1] != DAT_07fca62c) {
            FUN_07fc3b78();
            unaff_r7 = DAT_07fca5cc;
          }
          break;
        }
        puVar24 = puVar24 + 3;
      }
    }
LAB_07fca28c:
    for (; unaff_r4 = DAT_07fca5d0, iVar23 != 0xc0; iVar23 = iVar23 + 0x10) {
      if (*(char *)(DAT_07fca618 + iVar23) == '\x01') {
        uVar20 = FUN_07fc4440();
        iVar18 = DAT_07fca618 + iVar23;
        uVar16 = uVar20;
        if (uVar20 < *(uint *)(iVar18 + 8)) {
          uVar16 = uVar20 + in_stack_00000070;
        }
        if (*(uint *)(iVar18 + 4) <= uVar16 - *(uint *)(iVar18 + 8)) {
          *(uint *)(iVar18 + 8) = uVar20;
          (**(code **)(iVar18 + 0xc))();
          if (*(char *)(iVar18 + 1) == '\0') {
            *(undefined1 *)(DAT_07fca618 + iVar23) = 0;
          }
        }
      }
    }
    unaff_r6 = in_stack_00000048;
    if (*(int *)(DAT_07fca5d4 + 0x78) == 0) break;
    WaitForInterrupt();
    *unaff_r7 = in_stack_00000048;
  }
  disableIRQinterrupts();
  if ((char)DAT_07fca5f4[2] == '\x02') {
    in_stack_00000078 = 0;
  }
  else {
    in_stack_00000078 = *(uint *)(*DAT_07fca5e0 + 0x28);
  }
  uVar8 = (undefined2)in_stack_0000004c;
  if (((unaff_r4[3] & 1) == 0) && (iVar18 = func_0x07f1b74e(), iVar18 != 0)) {
    if (*(char *)((int)DAT_07fca5f4 + 3) != '\0') {
      if ((unaff_r5[10] & 1) != 0) {
LAB_07fca4c4:
        unaff_r5[8] = unaff_r5[8] | (ushort)in_stack_0000005c;
        *DAT_07fca614 = *DAT_07fca614 | in_stack_0000005c;
        unaff_r5[9] = unaff_r5[9] & 0xffdf;
        unaff_r5[8] = unaff_r5[8] | (ushort)in_stack_00000058;
        if (*DAT_07fca5fc == '\x01') {
          unaff_r5[9] = unaff_r5[9] & 0xffef;
        }
        else {
          unaff_r5[9] = unaff_r5[9] & ~(ushort)in_stack_0000005c;
          puVar10 = DAT_07fca5d8;
          *DAT_07fca5d8 = 0;
          unaff_r5[9] = unaff_r5[9] | (ushort)in_stack_00000030;
          unaff_r5[9] = unaff_r5[9] & ~(ushort)in_stack_00000030;
          puVar10[5] = 0;
          puVar10[10] = DAT_07fca5dc;
          puVar10[0xb] = in_stack_00000050;
          *unaff_r5 = *unaff_r5 | uVar9;
          for (in_stack_00000078 = 0; (int)in_stack_00000078 < 100;
              in_stack_00000078 = in_stack_00000078 + 1) {
          }
          unaff_r5[9] = unaff_r5[9] | 0x10;
          puVar10[5] = in_stack_00000018;
          *unaff_r5 = *unaff_r5 & ~uVar9;
        }
        unaff_r5[8] = unaff_r5[8] | in_stack_00000038;
        unaff_r5[0x11] = unaff_r5[0x11] & (ushort)DAT_07fca648;
        unaff_r5[0x11] = unaff_r5[0x11] | 1;
        FUN_07fc0194(0xd);
        unaff_r5[5] = (unaff_r5[5] | 1) & ~(ushort)in_stack_00000058;
        do {
        } while (-1 < (int)((uint)unaff_r5[5] << 0x19));
        unaff_r5[1] = 0;
        puVar13 = DAT_07fca5d0;
        if ((int)((uint)unaff_r5[10] << 0x1a) < 0) {
          DAT_07fca5d0[-1] = uVar8;
        }
        WaitForInterrupt();
        if ((int)((uint)unaff_r5[10] << 0x1a) < 0) {
          *puVar13 = uVar8;
        }
        *DAT_07fca614 = *DAT_07fca614 & ~in_stack_0000005c;
        goto LAB_07fca5a0;
      }
      if (*DAT_07fca5f4 == 0) {
        if (*(int *)(DAT_07fca630 + 0x28) != 0) {
          in_stack_00000078 = *(uint *)(*DAT_07fca5e0 + 0x28);
        }
        iVar18 = func_0x07f1c164(&stack0x00000078,(char)DAT_07fca5f4[1]);
        if (((iVar18 != 0) && (-1 < *(int *)(in_stack_0000006c + 0x10) << 0x19)) &&
           (iVar18 = func_0x07f0cff4(&stack0x00000078,(char)DAT_07fca5f4[1]), iVar18 != 0)) {
          if (in_stack_00000078 == 0) {
            uStack00000034 = 0;
          }
          else if ((uint)(*(int *)(in_stack_0000006c + 0x20) + DAT_07fca5e8) < 0xdb) {
            uStack00000034 = in_stack_00000078 - 1;
            in_stack_00000078 = uStack00000034;
          }
          else {
            uStack00000034 = in_stack_00000078;
          }
          iVar23 = *(int *)(DAT_07fca5f8 + 8);
          iVar18 = func_0x07f1dfb8(iVar23 * (DAT_07fca604 + 0x9e) + DAT_07fca608,DAT_07fca634);
          iVar23 = func_0x07f1dfb8(DAT_07fca638 * iVar23 + DAT_07fca608,DAT_07fca634);
          *(uint *)(in_stack_0000006c + 0x3c) =
               *(uint *)(in_stack_0000006c + 0x3c) & DAT_07fca63c | iVar18 - iVar23;
          if (*DAT_07fca5fc == '\x02') {
            iVar23 = 0x23;
          }
          else {
            iVar23 = 0x12;
          }
          iVar23 = iVar23 + iVar18;
          *(uint *)(in_stack_0000006c + 0x3c) =
               *(uint *)(in_stack_0000006c + 0x3c) & DAT_07fca640 | iVar23 * 0x400;
          *(uint *)(in_stack_0000006c + 0x3c) =
               (*(uint *)(in_stack_0000006c + 0x3c) & DAT_07fca5f0) + iVar18 * 0x200000;
          if (DAT_07fca634 <= uStack00000034) goto LAB_07fca5a8;
          uVar25 = func_0x07f1e00c(*(undefined4 *)(DAT_07fca5f8 + 0x50),
                                   *(undefined4 *)(DAT_07fca5f8 + 0x54),uStack00000034,0);
          iVar18 = ((uint)uVar25 >> 0x14) + (int)((ulonglong)uVar25 >> 0x20) * 0x1000 + -1;
          if (iVar18 != iVar23 + 1) {
            iVar23 = iVar18;
          }
          func_0x07f08f9e(iVar23,(char)DAT_07fca5f4[2] != '\0');
          (**(code **)(DAT_07fca644 + 0x2c))();
          puVar24 = DAT_07fca5ec;
          do {
          } while ((*(uint *)(in_stack_0000006c + 0x30) & in_stack_00000068) == 0);
          do {
          } while ((*DAT_07fca5ec & in_stack_0000003c) == 0);
          *DAT_07fca5ec = *DAT_07fca5ec & ~in_stack_00000054;
          uVar5 = DAT_07fca5d0[4];
          if (uVar5 < 0x46) {
            DAT_07fca5d0[4] = 0x46;
            *(uint *)(DAT_07fca5d4 + 0x50) = 0x46 - (uint)uVar5;
          }
          func_0x07f02326();
          *(uint *)(DAT_07fca5d4 + 0x54) = puVar24[2];
          do {
          } while (-1 < (int)(*puVar24 << 0x18));
          unaff_r5[4] = unaff_r5[4] & ~uVar9;
          unaff_r6 = in_stack_00000048;
          goto LAB_07fca4c4;
        }
      }
    }
    WaitForInterrupt();
  }
LAB_07fca5a0:
  enableIRQinterrupts();
  *unaff_r7 = unaff_r6;
  FUN_07fc9da0();
LAB_07fca5a8:
  *unaff_r7 = in_stack_00000048;
  *DAT_07fca5d0 = uVar8;
  do {
                    /* WARNING: Do nothing block with infinite loop */
  } while( true );
}

