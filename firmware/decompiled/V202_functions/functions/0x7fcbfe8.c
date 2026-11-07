// rea decompile_all
// name: FUN_07fcbfe8
// address: 0x7fcbfe8
// body: available
// range: 0x7fcbfe8-0x7fcc1cb inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fcbfe8(uint param_1,uint param_2,undefined4 param_3)

{
  char cVar1;
  ushort uVar2;
  short sVar3;
  uint uVar4;
  uint uVar5;
  short sVar6;
  uint uVar7;
  int extraout_r1;
  int extraout_r1_00;
  int extraout_r1_01;
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
  uVar7 = param_2 & 0xff;
  local_19 = (byte)(param_2 >> 0x18);
  if (uVar7 < 0x1a) {
    sVar6 = (ushort)local_19 * -5 + 0x73;
    sVar12 = 0x49;
LAB_07fcc024:
    sVar12 = sVar12 + (ushort)local_19 * -2;
  }
  else {
    if (uVar7 < 0x1f) {
      sVar6 = (ushort)local_19 * -3 + 0x73;
      sVar12 = 0x4b;
      goto LAB_07fcc024;
    }
    if (uVar7 < 0x24) {
      sVar6 = (ushort)local_19 * -3 + 0x75;
      sVar12 = 0x4c;
      goto LAB_07fcc024;
    }
    if (uVar7 < 0x29) {
      sVar6 = (ushort)local_19 * -4 + 0x78;
      sVar12 = 0x50;
LAB_07fcc06a:
      sVar12 = sVar12 + (ushort)local_19 * -3;
    }
    else {
      if (uVar7 < 0x2e) {
        sVar6 = (ushort)local_19 * -2 + 0x7c;
        sVar12 = 0x51;
        goto LAB_07fcc06a;
      }
      if (uVar7 < 0x33) {
        sVar6 = 0x80;
        sVar12 = 0x52;
        goto LAB_07fcc06a;
      }
      if (uVar7 < 0x38) {
        sVar6 = 0x86;
        sVar12 = (ushort)local_19 * -4 + 0x54;
      }
      else {
        if (0x3c < uVar7) {
          sVar6 = (ushort)local_19 * -3 + 0x94;
          sVar12 = 0x56;
          goto LAB_07fcc06a;
        }
        sVar6 = (ushort)local_19 * 2 + 0x89;
        sVar12 = (ushort)local_19 * -2 + 0x54;
      }
    }
  }
  iVar9 = (int)((param_1 - 0x46) * 3) >> 1;
  if (param_1 < 0x41) {
    if (param_1 < 0x3a) {
      iVar11 = param_1 + 0xf;
      iVar9 = iVar9 + 0x82;
    }
    else {
      iVar11 = param_1 + 5;
      iVar9 = iVar9 + 0x78;
    }
  }
  else if (param_1 < 0x56) {
    iVar9 = iVar9 + 0x6e;
    func_0x07f1dfb8(param_1,10);
    iVar11 = extraout_r1_00 + 0x44;
  }
  else {
    iVar9 = iVar9 + 0x5f;
    func_0x07f1dfb8(param_1,10);
    iVar11 = extraout_r1 + 0x49;
  }
  if (0x8c < iVar9) {
    func_0x07f1dfb8(param_1,10);
    iVar9 = extraout_r1_01 + 0x87;
  }
  uVar4 = param_2 >> 8 & 0xff;
  if ((uVar4 != 0) && (uVar5 = param_2 >> 0x10 & 0xff, uVar5 != 0)) {
    uVar2 = func_0x07f1dfb8(DAT_07fcc1cc * uVar5,uVar4 * uVar4);
    local_34 = (uint)uVar2;
  }
  if (uVar7 != 0) {
    if (local_19 == 0) {
      if (uVar7 < 0x23) {
        sVar6 = (short)(iVar9 + -0x73 >> 1) + sVar6;
        iVar9 = (int)sVar6;
        iVar11 = (int)(short)((short)(iVar11 + -0x4a >> 1) + sVar12);
        if (((local_34 != 0) && (local_34 < 0xb8)) && (0x46 < param_1)) {
LAB_07fcc16c:
          sVar6 = sVar6 + -5;
LAB_07fcc148:
          iVar9 = (int)sVar6;
        }
      }
      else {
        sVar3 = func_0x07f1dfe4((local_34 - 0xb8) * 0x2e,0x50);
        sVar3 = sVar3 + (short)(iVar9 + -0x73 >> 1) + sVar6;
        iVar9 = (int)sVar3;
        iVar11 = (int)(short)((short)(iVar11 + -0x4a >> 1) + sVar12);
        if ((uVar4 < 0xa5) && (200 < local_34)) {
          sVar6 = sVar3 + 10;
          goto LAB_07fcc148;
        }
      }
    }
    else if (local_19 == 1) {
      if (uVar7 < 0x23) {
        sVar6 = (short)(iVar9 + -0x6e >> 2) + sVar6;
        iVar9 = (int)sVar6;
        iVar11 = (int)(short)((short)(iVar11 + -0x48 >> 2) + sVar12);
        if ((local_34 != 0) && (local_34 < 0xb0)) goto LAB_07fcc16c;
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
  local_18 = (char)param_3;
  if ((local_18 != '\0') && (local_17 = (char)((uint)param_3 >> 8), local_17 != '\0')) {
    if (local_19 == 0) {
      cVar8 = cVar8 + -0x76;
      cVar1 = -0x4b;
    }
    else {
      if (local_19 != 1) goto LAB_07fcc1ba;
      cVar8 = cVar8 + -0x70;
      cVar1 = -0x46;
    }
    cVar8 = local_18 + cVar8;
    cVar10 = local_17 + cVar10 + cVar1;
  }
LAB_07fcc1ba:
  iVar9 = *(int *)(DAT_07fcc1d0 + 4);
  *(char *)(iVar9 + 0x420) = cVar8;
  *(char *)(iVar9 + 0x421) = cVar10;
  return;
}

