// rea decompile_all
// name: FUN_07fc2dc4
// address: 0x7fc2dc4
// body: available
// range: 0x7fc2dc4-0x7fc2e17 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc2dc4(void)

{
  undefined1 uVar1;
  int iVar2;
  uint uVar3;
  undefined4 uVar4;
  uint uVar5;
  
  uVar3 = FUN_07fc4440();
  iVar2 = DAT_07fc30d4;
  if (((0x4f < *(ushort *)(DAT_07fc2e4c + 0xc)) || (*(short *)(DAT_07fc2e4c + 0xe) != 0)) ||
     (*(ushort *)(DAT_07fc30d4 + 0x42) >> 2 < 0x7d)) {
    uVar5 = uVar3;
    if (uVar3 < *(uint *)(DAT_07fc30d4 + 0x70)) {
      uVar5 = uVar3 + 0x5000000;
    }
    if (DAT_07fc2e18 <= uVar5 - *(uint *)(DAT_07fc30d4 + 0x70)) {
      uVar1 = *(undefined1 *)(DAT_07fc30d4 + 8);
      uVar4 = FUN_07fc2da8();
      FUN_07fc3254(uVar1,uVar4,uVar4);
      *(uint *)(iVar2 + 0x70) = uVar3;
    }
  }
  FUN_07fc2e50();
  return;
}

