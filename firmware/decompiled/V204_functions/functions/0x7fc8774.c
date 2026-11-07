// rea decompile_all
// name: FUN_07fc8774
// address: 0x7fc8774
// body: available
// range: 0x7fc8774-0x7fc87e9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc8774(void)

{
  byte bVar1;
  int iVar2;
  code *pcVar3;
  uint uVar4;
  
  iVar2 = DAT_07fc87ec;
  bVar1 = *(byte *)(DAT_07fc87ec + 0x20);
  if ((bVar1 & 1) != 0) {
    FUN_07fc8850(0x27,*(undefined1 *)(DAT_07fc87ec + 0x2a));
    FUN_07fc8850(0x29,*(undefined1 *)(iVar2 + 0x2c));
    bVar1 = *(byte *)(iVar2 + 0x20);
  }
  uVar4 = (uint)bVar1;
  if ((int)(uVar4 << 0x1e) < 0) {
    FUN_07fc8850(0x2d,*(undefined1 *)(iVar2 + 0x25));
    FUN_07fc8850(0x2f,*(undefined1 *)(iVar2 + 0x26));
    uVar4 = (uint)*(byte *)(iVar2 + 0x20);
  }
  if ((int)(uVar4 << 0x1d) < 0) {
    FUN_07fc8850(0x2c,*(undefined1 *)(iVar2 + 0x27));
    uVar4 = (uint)*(byte *)(iVar2 + 0x20);
  }
  pcVar3 = DAT_07fc87f0;
  if ((int)(uVar4 << 0x1c) < 0) {
    (*DAT_07fc87f0)(0x1c,*(undefined1 *)(iVar2 + 0x2e));
    (*pcVar3)(0x1d,*(undefined1 *)(iVar2 + 0x2e));
    (*pcVar3)(0x1e,*(undefined1 *)(iVar2 + 0x2e));
    (*pcVar3)(0x1f,*(undefined1 *)(iVar2 + 0x2e));
  }
  FUN_07fc4458(10);
  return;
}

