// rea decompile_all
// name: FUN_07fc2e14
// address: 0x7fc2e14
// body: available
// range: 0x7fc2e14-0x7fc2e67 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc2e14(void)

{
  undefined1 uVar1;
  int iVar2;
  uint uVar3;
  undefined4 uVar4;
  uint uVar5;
  
  uVar3 = FUN_07fc432c();
  iVar2 = DAT_07fc31dc;
  if (((0x1d < *(ushort *)(DAT_07fc2e9c + 0xc)) || (*(short *)(DAT_07fc2e9c + 0xe) != 0)) ||
     (*(ushort *)(DAT_07fc31dc + 0x42) >> 2 < 0x7d)) {
    uVar5 = uVar3;
    if (uVar3 < *(uint *)(DAT_07fc31dc + 0x70)) {
      uVar5 = uVar3 + 0x5000000;
    }
    if (DAT_07fc2e68 <= uVar5 - *(uint *)(DAT_07fc31dc + 0x70)) {
      uVar1 = *(undefined1 *)(DAT_07fc31dc + 7);
      uVar4 = FUN_07fc2df8();
      FUN_07fc3240(uVar1,uVar4,uVar4);
      *(uint *)(iVar2 + 0x70) = uVar3;
    }
  }
  FUN_07fc2ea0();
  return;
}

