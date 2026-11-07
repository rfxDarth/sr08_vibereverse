// rea decompile_all
// name: FUN_07fc33fc
// address: 0x7fc33fc
// body: available
// range: 0x7fc33fc-0x7fc343d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc33fc(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined1 *puVar3;
  int *piVar4;
  
  iVar1 = DAT_07fc3444;
  if (param_1 - 1U < 10) {
    piVar4 = (int *)(param_1 * 4 + DAT_07fc3440 + -4);
    iVar2 = *piVar4;
    if ((iVar2 != 0) && (iVar2 != DAT_07fc3444)) {
      func_0x07f1c0e8(param_1 + DAT_07fc3448 + 1,4,param_3,param_4,param_4);
      *piVar4 = iVar1;
      puVar3 = (undefined1 *)func_0x07f1bbb0(DAT_07fc3448,4,4,8);
      *puVar3 = (char)param_1;
      func_0x07f1bbe2();
    }
  }
  return;
}

