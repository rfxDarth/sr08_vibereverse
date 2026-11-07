// rea decompile_all
// name: FUN_07fcb47c
// address: 0x7fcb47c
// body: available
// range: 0x7fcb47c-0x7fcb4e1 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fcb47c(void)

{
  bool bVar1;
  ushort *puVar2;
  undefined2 *puVar3;
  int iVar4;
  
  iVar4 = 0;
  bVar1 = (bool)isCurrentModePrivileged();
  if (bVar1) {
    iVar4 = isIRQinterruptsEnabled();
  }
  bVar1 = (bool)isCurrentModePrivileged();
  if (bVar1) {
    enableIRQinterrupts(1);
  }
  *DAT_07fcb4e4 = *DAT_07fcb4e4 | 0x40;
  puVar3 = DAT_07fcb4ec;
  puVar2 = DAT_07fcb4e8;
  if (iVar4 == 0) {
    bVar1 = (bool)isCurrentModePrivileged();
    if (bVar1) {
      enableIRQinterrupts(0);
    }
  }
  else {
    bVar1 = (bool)isCurrentModePrivileged();
    if (bVar1) {
      enableIRQinterrupts(1);
    }
  }
  do {
  } while ((*DAT_07fcb4e8 & 1) != 0);
  DAT_07fcb4ec[6] = DAT_07fcb4ec[6] | 0x80;
  *DAT_07fcb4f0 = 1;
  *puVar3 = 1;
  puVar3[2] = 0;
  puVar3[6] = puVar3[6] & 0xff7f;
  puVar3[6] = 3;
  puVar2[0xe] = 1;
  puVar3[8] = puVar3[8] & 0xffdf;
  puVar3[8] = puVar3[8] & 0xfffd;
  puVar2[0x10] = 0;
  puVar2[0x12] = 0;
  return;
}

