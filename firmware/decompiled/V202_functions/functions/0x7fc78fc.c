// rea decompile_all
// name: FUN_07fc78fc
// address: 0x7fc78fc
// body: available
// range: 0x7fc78fc-0x7fc794d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4 FUN_07fc78fc(void)

{
  int iVar1;
  undefined4 uVar2;
  
  uVar2 = DAT_07fc7954;
  iVar1 = DAT_07fc7950;
  if ((*(char *)(DAT_07fc7950 + 0x1c) == '\x01') &&
     (((*(short *)(DAT_07fc7950 + 0x46) < DAT_07fc7958 ||
       (DAT_07fc795c < *(short *)(DAT_07fc7950 + 0x46))) || (*(char *)(DAT_07fc7950 + 0x14) != '\'')
      ))) {
    *(undefined4 *)(DAT_07fc7cb4 + 0x30) = DAT_07fc7954;
  }
  if ((*(char *)(iVar1 + 0x1a) != '\x01') || (*(char *)(iVar1 + 0x1b) == '\x01')) {
    *(undefined4 *)(DAT_07fc7cb4 + 0x30) = uVar2;
  }
  if ((*(short *)(iVar1 + 0x42) != 0) && (*(short *)(iVar1 + 0x42) != 0x1fe)) {
    return *(undefined4 *)(DAT_07fc7cb4 + 0x30);
  }
  *(undefined4 *)(DAT_07fc7cb4 + 0x30) = uVar2;
  return uVar2;
}

