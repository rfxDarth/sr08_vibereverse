// rea decompile_all
// name: FUN_07fc7964
// address: 0x7fc7964
// body: available
// range: 0x7fc7964-0x7fc7a25 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc7964(ushort *param_1)

{
  byte bVar1;
  ushort uVar2;
  bool bVar3;
  ushort *puVar4;
  ushort *puVar5;
  byte bVar6;
  int iVar7;
  
  iVar7 = 0;
  bVar3 = (bool)isCurrentModePrivileged();
  if (bVar3) {
    iVar7 = isIRQinterruptsEnabled();
  }
  bVar3 = (bool)isCurrentModePrivileged();
  if (bVar3) {
    enableIRQinterrupts(1);
  }
  *DAT_07fc7a28 = *DAT_07fc7a28 | 0x20;
  puVar4 = DAT_07fc7a2c;
  if (iVar7 == 0) {
    bVar3 = (bool)isCurrentModePrivileged();
    if (bVar3) {
      enableIRQinterrupts(0);
    }
  }
  else {
    bVar3 = (bool)isCurrentModePrivileged();
    if (bVar3) {
      enableIRQinterrupts(1);
    }
  }
  *DAT_07fc7a2c = *DAT_07fc7a2c & 0xfffe;
  puVar5 = DAT_07fc7a30;
  do {
  } while ((*puVar4 & 1) != 0);
  DAT_07fc7a30[0x18] = 0;
  puVar5[10] = *param_1;
  puVar5[0xc] = param_1[1];
  puVar5[0xe] = param_1[2];
  puVar5[0x10] = param_1[3];
  *puVar5 = (ushort)*(byte *)((int)param_1 + 9) << 1 | *puVar5 & 0xfff9;
  puVar5[0x1e] = (byte)param_1[7] - 1 | puVar5[0x1e] & 0xffe0;
  puVar5[0x1c] = *(byte *)((int)param_1 + 0xf) - 1 | puVar5[0x1c] & 0xffe0;
  uVar2 = param_1[6];
  *puVar5 = *puVar5 | 1;
  *puVar5 = *puVar5 | 0x40;
  bVar1 = *(byte *)((int)param_1 + 0xb);
  if (bVar1 == 1) {
    bVar6 = 1;
  }
  else {
    bVar6 = (byte)param_1[4];
  }
  *puVar5 = *puVar5 & 0xffdf | (ushort)bVar6 << 5;
  *puVar5 = (ushort)bVar1 << 4 | *puVar5 & 0xffef;
  puVar5[2] = puVar5[2] & 0xfc00 | uVar2;
  *puVar4 = *puVar4 | 1;
  do {
  } while ((*puVar4 & 1) == 0);
  return;
}

