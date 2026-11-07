// rea decompile_all
// name: FUN_07fc58fc
// address: 0x7fc58fc
// body: available
// range: 0x7fc58fc-0x7fc593f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc58fc(undefined4 param_1,uint param_2)

{
  uint uVar1;
  undefined4 *puVar2;
  uint uVar3;
  
  uVar1 = DAT_07fc5c40;
  if (param_2 < 8) {
    puVar2 = DAT_07fc5c38;
    for (uVar3 = 1; puVar2 = puVar2 + 5, uVar3 != 6; uVar3 = uVar3 + 1) {
      if (((0x2aU >> (uVar3 & 0xff) & 1) != 0) && (*(ushort *)*puVar2 == uVar1)) {
        FUN_07fc5c44(param_2,uVar3 & 0xff,0);
      }
    }
    return;
  }
  *DAT_07fc5cb4 = 200;
  *DAT_07fc5cb8 = 8;
  do {
                    /* WARNING: Do nothing block with infinite loop */
  } while( true );
}

