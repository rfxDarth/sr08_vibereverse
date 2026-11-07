// rea decompile_all
// name: FUN_07fc75d4
// address: 0x7fc75d4
// body: available
// range: 0x7fc75d4-0x7fc769f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


ushort FUN_07fc75d4(byte *param_1,uint param_2,uint param_3,uint param_4)

{
  ushort uVar1;
  short sVar2;
  short sVar3;
  byte *pbVar4;
  uint uVar5;
  
  if (0x16 < param_3) {
    return 0;
  }
  if (param_1[0x21] <= param_2) {
    return 0;
  }
  if ((0x12 < param_3) && (param_1[param_2 * 0x16 + 0x17] <= param_4)) {
    return 0;
  }
  sVar2 = *(short *)(param_1 + 0x1a);
  pbVar4 = param_1;
  for (uVar5 = param_2; pbVar4 = pbVar4 + 0x16, uVar5 != 0; uVar5 = uVar5 - 1) {
    sVar2 = sVar2 + (ushort)*pbVar4;
  }
  if (param_3 < 0x13) {
    uVar1 = sVar2 + (short)param_3;
    uVar5 = (uint)*(ushort *)(param_1 + param_2 * 0x16 + 4);
    if ((*(ushort *)(param_1 + param_2 * 0x16 + 4) & 1) == 0) {
      if (param_3 < 0x10) {
        if (10 < param_3) {
          uVar1 = 0;
        }
      }
      else {
        uVar1 = uVar1 - 5;
      }
    }
    if (0xf < param_3) {
      uVar1 = (ushort)((int)(uVar5 << 0x1e) >> 0x1f) & uVar1;
    }
    if (-1 < (int)(uVar5 << 0x1d)) {
      if (param_3 < 0xb) {
        if (8 < param_3) {
          uVar1 = 0;
        }
      }
      else {
        uVar1 = uVar1 - 2;
      }
    }
    if ((int)(uVar5 << 0x1c) < 0) {
      return uVar1;
    }
    if (8 < param_3) {
      return uVar1 - 2;
    }
    if (1 < param_3) {
      return uVar1 - 1;
    }
    if (param_3 != 1) {
      return uVar1;
    }
  }
  else {
    sVar2 = sVar2 + (ushort)param_1[param_2 * 0x16 + 0x18];
    for (uVar5 = 0; param_4 != uVar5; uVar5 = uVar5 + 1) {
      if ((int)((uint)(*(ushort *)(param_1 + param_2 * 0x16 + 4) >> (uVar5 & 0xff)) << 0x19) < 0) {
        sVar3 = 4;
      }
      else {
        sVar3 = 3;
      }
      sVar2 = sVar3 + sVar2;
    }
    if ((param_3 != 0x16) ||
       (-1 < (int)((uint)(*(ushort *)(param_1 + param_2 * 0x16 + 4) >> (param_4 & 0xff)) << 0x19)))
    {
      return ((short)param_3 + sVar2) - 0x13;
    }
  }
  return 0;
}

