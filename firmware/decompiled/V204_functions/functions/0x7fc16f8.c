// rea decompile_all
// name: FUN_07fc16f8
// address: 0x7fc16f8
// body: available
// range: 0x7fc16f8-0x7fc174b inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


bool FUN_07fc16f8(void)

{
  ushort uVar1;
  ushort uVar2;
  int iVar3;
  int iVar4;
  
  iVar3 = DAT_07fc17f4;
  uVar1 = *(ushort *)(DAT_07fc17f4 + 2);
  uVar2 = *(ushort *)(DAT_07fc17f4 + 2);
  *(ushort *)(DAT_07fc17f4 + 2) = *(ushort *)(DAT_07fc17f4 + 2) & 0xfffe;
  *(ushort *)(iVar3 + 2) = *(ushort *)(iVar3 + 2) & 0xfeff;
  func_0x07f029c0();
  func_0x07f029cc();
  iVar4 = func_0x07f029b4(2,8,0);
  *(ushort *)(iVar3 + 2) = *(ushort *)(iVar3 + 2) & 0xfffe | uVar1 & 1;
  *(ushort *)(iVar3 + 2) = *(ushort *)(iVar3 + 2) & 0xfeff | uVar2 & 0x100;
  return iVar4 != 0;
}

