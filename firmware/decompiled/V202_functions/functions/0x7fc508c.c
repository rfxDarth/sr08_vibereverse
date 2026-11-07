// rea decompile_all
// name: FUN_07fc508c
// address: 0x7fc508c
// body: available
// range: 0x7fc508c-0x7fc50e1 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc508c(void)

{
  int *piVar1;
  undefined4 uVar2;
  undefined1 local_28;
  undefined1 local_27;
  undefined1 local_26;
  undefined1 auStack_25 [6];
  undefined1 local_1f;
  undefined1 local_1e;
  undefined1 local_1d;
  undefined1 local_1c;
  undefined1 local_1b;
  undefined1 local_1a;
  undefined1 local_19;
  undefined4 local_18;
  
  piVar1 = DAT_07fc50e4;
  *DAT_07fc50e4 = 1;
  local_28 = 0xc;
  do {
  } while (*piVar1 != 0);
  uVar2 = *DAT_07fc50e8;
  FUN_07fc6dec(auStack_25);
  local_1a = (undefined1)((uint)uVar2 >> 8);
  local_1b = (undefined1)uVar2;
  local_19 = (undefined1)((uint)uVar2 >> 0x10);
  local_1c = 0;
  local_1d = 0x17;
  local_1e = 0;
  local_1f = 1;
  local_26 = 0;
  local_27 = 0xca;
  local_18 = FUN_07fc5698(DAT_07fc50ec,&local_27,0xf);
  FUN_07fc255c(&local_28);
  return;
}

