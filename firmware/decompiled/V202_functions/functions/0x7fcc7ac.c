// rea decompile_all
// name: FUN_07fcc7ac
// address: 0x7fcc7ac
// body: available
// range: 0x7fcc7ac-0x7fcc7f9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fcc7ac(undefined4 param_1)

{
  undefined1 *puVar1;
  char local_20 [4];
  undefined4 local_1c;
  undefined1 local_18;
  undefined2 local_16;
  
  func_0x07f1e0de(local_20,0x14);
  local_20[0] = *DAT_07fcc7fc;
  puVar1 = *(undefined1 **)(DAT_07fcc7fc + 4);
  local_1c = *(undefined4 *)(puVar1 + 8);
  if (local_20[0] == '\x02') {
    local_18 = *puVar1;
    local_16 = (undefined2)((*(uint *)(puVar1 + 0x418) & 0x3ffffff) >> 10);
  }
  else {
    local_18 = 0;
    local_16 = 0;
  }
  func_0x07f1e0ac(param_1,local_20,0x14);
  return;
}

