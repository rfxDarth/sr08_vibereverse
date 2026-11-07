// rea decompile_all
// name: FUN_07fc2e1c
// address: 0x7fc2e1c
// body: available
// range: 0x7fc2e1c-0x7fc2e49 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc2e1c(uint param_1,undefined2 param_2,undefined2 param_3)

{
  int iVar1;
  
  FUN_07fc4440();
  iVar1 = DAT_07fc31f0;
  *(undefined2 *)(DAT_07fc31f0 + 0x42) = param_3;
  *(undefined4 *)(iVar1 + 0x70) = 0;
  iVar1 = DAT_07fc2e4c;
  *(undefined2 *)(DAT_07fc2e4c + 0xe) = param_2;
  *(short *)(iVar1 + 0xc) = (short)param_1;
  if (param_1 < *(ushort *)(iVar1 + 10)) {
    *(short *)(iVar1 + 10) = (short)param_1;
  }
  if (param_1 < 0x50) {
    FUN_07fc2e50();
  }
  return;
}

