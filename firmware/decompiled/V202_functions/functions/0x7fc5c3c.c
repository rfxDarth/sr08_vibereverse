// rea decompile_all
// name: FUN_07fc5c3c
// address: 0x7fc5c3c
// body: available
// range: 0x7fc5c3c-0x7fc5ca9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc5c3c(uint param_1,undefined4 param_2,undefined1 param_3)

{
  undefined1 auStack_24 [8];
  int local_1c;
  short local_18 [2];
  
  if (7 < param_1) {
    *DAT_07fc5da4 = 200;
    *DAT_07fc5da8 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  FUN_07fc57b0(param_2,local_18,&local_1c);
  if (local_18[0] != 0) {
    if (local_1c != 0) {
      func_0x07f1e0ac(auStack_24,local_1c,local_18[0]);
      auStack_24[param_1] = param_3;
      FUN_07fc5840(param_2,local_18[0],auStack_24);
      return;
    }
    *DAT_07fc5da4 = 200;
    *DAT_07fc5da8 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  *DAT_07fc5da4 = 200;
  *DAT_07fc5da8 = 8;
  do {
                    /* WARNING: Do nothing block with infinite loop */
  } while( true );
}

