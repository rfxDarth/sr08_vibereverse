// rea decompile_all
// name: FUN_07fc74d4
// address: 0x7fc74d4
// body: available
// range: 0x7fc74d4-0x7fc7517 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc74d4(int param_1,uint param_2)

{
  undefined2 *puVar1;
  int iVar2;
  uint uVar3;
  
  if (param_2 < 8) {
    iVar2 = *(int *)(param_1 + 0x10);
    *(undefined2 *)(DAT_07fc7520 + 0x20) = 0;
    puVar1 = (undefined2 *)(param_2 * 2 + iVar2 + 6);
    for (uVar3 = (uint)*(byte *)(iVar2 + 0x21); uVar3 != 0; uVar3 = uVar3 - 1) {
      *puVar1 = 0;
      puVar1 = puVar1 + 0xb;
    }
    *(undefined1 *)(iVar2 + 0x22) = 0;
    func_0x07f1beb6(*(undefined2 *)(param_1 + 0x14),0);
    *(undefined1 *)(DAT_07fc75cc + 0xb0) = 0;
    return;
  }
  *DAT_07fc77f4 = 200;
  *DAT_07fc77f8 = 8;
  do {
                    /* WARNING: Do nothing block with infinite loop */
  } while( true );
}

