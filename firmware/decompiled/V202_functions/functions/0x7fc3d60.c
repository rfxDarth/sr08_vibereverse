// rea decompile_all
// name: FUN_07fc3d60
// address: 0x7fc3d60
// body: available
// range: 0x7fc3d60-0x7fc3d8f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4 FUN_07fc3d60(uint param_1)

{
  undefined4 uVar1;
  code *pcVar2;
  int iVar3;
  undefined1 *in_stack_00000000;
  
  uVar1 = 1;
  if ((DAT_07fc3d90 <= param_1) && (param_1 <= DAT_07fc3d90 + 4)) {
    iVar3 = (param_1 + 0xf2 & 0xff) * 4;
    pcVar2 = *(code **)(DAT_07fc3d94 + iVar3);
    if (pcVar2 != (code *)0x0) {
      *(undefined4 *)(DAT_07fc3d94 + iVar3) = 0;
      (*pcVar2)();
    }
    uVar1 = 0;
    *in_stack_00000000 = 0;
  }
  return uVar1;
}

