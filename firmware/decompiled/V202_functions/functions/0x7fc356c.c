// rea decompile_all
// name: FUN_07fc356c
// address: 0x7fc356c
// body: available
// range: 0x7fc356c-0x7fc37a3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc356c(void)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  char extraout_r1;
  uint uVar4;
  int iVar5;
  int extraout_r1_00;
  int extraout_r1_01;
  byte bVar6;
  int iVar7;
  char cVar8;
  uint uVar9;
  byte bVar10;
  uint uVar11;
  ushort uVar12;
  byte *pbVar13;
  int local_24;
  int local_20;
  int local_1c;
  int local_18;
  
  iVar1 = FUN_07fc37b4();
  if (iVar1 == 0) {
LAB_07fc36b6:
    uVar3 = 1;
  }
  else {
    bVar6 = *DAT_07fc37a4;
    uVar9 = 1;
    uVar4 = *(uint *)(DAT_07fc37a8 + 0x20);
    if (DAT_07fc37a4[4] < 2) {
      bVar10 = 0;
    }
    else {
      bVar10 = DAT_07fc37a4[0xc];
    }
    if ((uVar4 ^ 1) != 0 || (bVar6 ^ 1) != 0) {
      bVar10 = 0;
    }
    pbVar13 = DAT_07fc37a4;
    if (uVar4 == 2) {
      if (DAT_07fc37a4[1] != 1) {
LAB_07fc3682:
        uVar4 = *(int *)(pbVar13 + 0x28) - *(int *)(DAT_07fc39d8 + 0x60);
        if (4 < uVar4) {
          *(undefined1 *)(DAT_07fc3a10 + 10) = 2;
        }
        if (((*(uint *)(DAT_07fc3a10 + 0x14) & DAT_07fc37ac) == 0) && (10 < uVar4)) {
          if ((*(uint *)(DAT_07fc3a10 + 0x14) & 0x33) != 0) {
            FUN_07fc3ac4(0);
          }
          FUN_07fc3a14(0xf0000);
        }
        goto LAB_07fc36b6;
      }
      if (DAT_07fc37a4[0x18] < 3) goto LAB_07fc361c;
      bVar10 = DAT_07fc37a4[0x21];
      bVar6 = DAT_07fc37a4[0x20];
    }
    else {
      if (uVar4 == 0x2000) {
        FUN_07fc7fc8(0x2000,7);
        FUN_07fc4344(100);
        FUN_07fca73c(&local_24);
        iVar5 = local_24;
        uVar11 = local_18 - local_24;
        FUN_07fc7660();
        iVar1 = DAT_07fc3818;
        *(short *)(DAT_07fc3818 + 0xca) = (short)(uVar11 >> 4);
        *(short *)(iVar1 + 200) = (short)((uint)(local_1c - iVar5) >> 4);
        *(short *)(iVar1 + 0xc6) = (short)((uint)(local_20 - iVar5) >> 3);
        pbVar13 = DAT_07fc39f0;
        if (*(short *)(DAT_07fc39d8 + 0x3e) != 0) {
          *(short *)(iVar1 + 0xcc) = *(short *)(DAT_07fc39d8 + 0x3e);
          pbVar13 = DAT_07fc39f0;
        }
      }
      if ((uVar4 ^ 1) != 0 || (bVar6 ^ 1) != 0) goto LAB_07fc3682;
LAB_07fc361c:
      bVar6 = 0;
    }
    *(undefined1 *)(DAT_07fc39ec + 10) = 1;
    iVar1 = DAT_07fc39d8;
    *(undefined4 *)(DAT_07fc39d8 + 0x60) = *(undefined4 *)(pbVar13 + 0x28);
    if (bVar10 != 0) {
      uVar11 = *(uint *)(iVar1 + 0x58);
      uVar4 = (uint)bVar10;
      if (*(int *)(iVar1 + 100) == 0) {
        *(uint *)(iVar1 + 100) = uVar4;
      }
      uVar2 = FUN_07fc432c();
      if (uVar2 < uVar11) {
        uVar2 = uVar2 + 0x5000000;
      }
      if (uVar11 != 0) {
        if (*(char *)(iVar1 + 3) == '\x02') {
          iVar1 = *(int *)(DAT_07fc39e4 + 0x14);
          iVar5 = *(int *)(DAT_07fc39e4 + 0x18);
          iVar7 = *(int *)(DAT_07fc39e4 + 0x1c);
          uVar12 = 0;
          for (; uVar9 < (iVar7 - 1U & iVar1 - iVar5); uVar9 = uVar9 + 1) {
            FUN_07fc3008(DAT_07fc39e4 + 0x14,uVar9,&local_24);
            uVar12 = uVar12 + (byte)local_24;
          }
          uVar9 = (uint)uVar12;
          if (uVar9 < 0x82) {
            iVar1 = func_0x07f1dfb8(uVar9 * 10,0x41);
            uVar9 = iVar1 + 0x50;
          }
          else if (uVar12 < 0xa0) {
            uVar9 = uVar9 * 2 - 0xa0;
          }
          if ((int)uVar4 <= (int)uVar9) {
            uVar4 = uVar9;
          }
          iVar1 = DAT_07fc3a88;
          pbVar13 = DAT_07fc3a84;
          if (0xb8 < (int)uVar4) {
            uVar4 = 0xb9;
          }
        }
        else {
          uVar2 = uVar2 - uVar11;
          if (uVar2 < DAT_07fc37b0) {
            iVar5 = *(int *)(iVar1 + 100);
            if ((int)uVar4 < iVar5) {
              iVar7 = func_0x07f1dfb8((iVar5 - uVar4) * uVar2,DAT_07fc37b0);
              uVar3 = FUN_07fc432c();
              func_0x07f1dfb8(uVar3,3);
              uVar4 = (iVar5 - iVar7) - extraout_r1_00;
            }
            else {
              iVar7 = func_0x07f1dfb8((uVar4 - iVar5) * uVar2,DAT_07fc37b0);
              uVar3 = FUN_07fc432c();
              func_0x07f1dfb8(uVar3,3);
              uVar4 = iVar7 + iVar5 + extraout_r1_01;
            }
          }
        }
      }
      *(short *)(iVar1 + 0x2a) = (short)uVar4;
      *(uint *)(iVar1 + 100) = uVar4;
      *(char *)(DAT_07fc3a80 + 8) = (char)uVar4;
      if (bVar6 < 0x5d) {
        bVar6 = 0x5c;
      }
      uVar3 = FUN_07fc432c();
      *(byte *)(iVar1 + 0xc) = bVar6;
      cVar8 = (char)*(ushort *)(iVar1 + 0x2a);
      if (*(ushort *)(iVar1 + 0x2a) < 0x50) {
        cVar8 = 'P' - cVar8;
      }
      else {
        cVar8 = cVar8 + -0x50;
      }
      *(char *)(iVar1 + 10) = cVar8 + 'i';
      func_0x07f1dfb8(uVar3,5);
      *(char *)(iVar1 + 0xb) = extraout_r1 + cVar8 + '?';
      iVar7 = *(int *)(pbVar13 + 0x48);
      iVar5 = iVar7 + -7;
      if (iVar7 < 7) {
        iVar5 = 7 - iVar7;
      }
      cVar8 = 'd' - (char)((uint)(iVar5 - (iVar5 >> 0x1f)) >> 1);
      if (cVar8 < '\x01') {
        cVar8 = '\0';
      }
      if ('^' < cVar8) {
        cVar8 = '_';
      }
      *(char *)(iVar1 + 0xd) = 'd' - cVar8;
    }
    uVar3 = 0;
  }
  FUN_07fc6e7c(uVar3);
  return;
}

