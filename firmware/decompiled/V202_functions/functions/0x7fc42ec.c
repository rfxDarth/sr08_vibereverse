// rea decompile_all
// name: FUN_07fc42ec
// address: 0x7fc42ec
// body: available
// range: 0x7fc42ec-0x7fc431d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc42ec(undefined4 param_1,int param_2)

{
  undefined1 *puVar1;
  undefined1 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  puVar1 = DAT_07fc4328;
  if (param_2 == 1) {
    uVar2 = 0x3b;
  }
  else {
    uVar2 = 0xab;
  }
  uVar3 = *(undefined4 *)(DAT_07fc4320 + 0x44);
  uVar4 = *(undefined4 *)(DAT_07fc4324 + 0x2c);
  *DAT_07fc4328 = uVar2;
  puVar1[1] = (char)uVar4;
  puVar1[2] = (char)uVar3;
  puVar1[3] = (char)((uint)uVar3 >> 8);
  puVar1[4] = (char)param_1;
  puVar1[5] = (char)((uint)param_1 >> 8);
  puVar1[6] = (char)((uint)param_1 >> 0x10);
  puVar1[7] = (char)((uint)param_1 >> 0x18);
  return;
}

