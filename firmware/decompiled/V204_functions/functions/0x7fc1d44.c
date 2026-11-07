// rea decompile_all
// name: FUN_07fc1d44
// address: 0x7fc1d44
// body: available
// range: 0x7fc1d44-0x7fc1d7f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc1d44(byte param_1)

{
  uint uVar1;
  uint uVar2;
  ushort uVar3;
  
  uVar1 = 1 << (param_1 - 10 & 0xff);
  uVar2 = uVar1 & 0xffff;
  uVar3 = 0;
  for (uVar2 = uVar2 + DAT_07fc1d80 ^ uVar2; (uVar2 >> 1 & 0xffff) != 0; uVar2 = uVar2 >> 1 & 0xffff
      ) {
    uVar3 = uVar3 + 1;
  }
  *DAT_07fc1d84 = (ushort)(1 << (uVar3 & 0xff)) | *DAT_07fc1d84 & ~(ushort)uVar1;
  *DAT_07fc1e44 = 1 << (uint)param_1;
  return;
}

