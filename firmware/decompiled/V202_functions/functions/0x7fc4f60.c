// rea decompile_all
// name: FUN_07fc4f60
// address: 0x7fc4f60
// body: available
// range: 0x7fc4f60-0x7fc4f9b inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc4f60(uint param_1)

{
  undefined4 uVar1;
  undefined1 local_24;
  undefined1 local_23;
  undefined1 local_22;
  undefined1 local_21;
  undefined1 local_20;
  undefined1 local_1f;
  undefined1 auStack_1e [14];
  
  if (*(byte *)(DAT_07fc511c + 2) != param_1) {
    *(char *)(DAT_07fc511c + 2) = (char)param_1;
    func_0x07f1e0de(auStack_1e,0xe);
    local_24 = 0x14;
    uVar1 = *(undefined4 *)(DAT_07fc5118 + 0x28);
    local_23 = (undefined1)uVar1;
    local_20 = (undefined1)((uint)uVar1 >> 0x18);
    local_21 = (undefined1)((uint)uVar1 >> 0x10);
    local_22 = (undefined1)((uint)uVar1 >> 8);
    local_1f = (char)param_1;
    FUN_07fc2550(&local_24);
  }
  return;
}

