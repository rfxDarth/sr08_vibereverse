// rea decompile_all
// name: FUN_07fc4258
// address: 0x7fc4258
// body: available
// range: 0x7fc4258-0x7fc42a9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc4258(int param_1)

{
  int iVar1;
  int iVar2;
  undefined2 uVar3;
  
  FUN_07fc42ec(*(undefined4 *)(DAT_07fc42ac + 0x28),1);
  FUN_07fc381c(0);
  iVar1 = DAT_07fc42b0;
  *(short *)(DAT_07fc42b0 + 0x98) = (short)DAT_07fc42b4;
  iVar2 = DAT_07fc42b8;
  *(undefined4 *)(iVar1 + 0x9c) = *(undefined4 *)(DAT_07fc42b8 + 0x2c);
  FUN_07fc50f0();
  FUN_07fc53c0(s__s_type__d__d_07fc42bc,s_app_system_reset_07fc42cc,param_1,
               *(undefined4 *)(iVar2 + 0x2c));
  if (param_1 == 2) {
    uVar3 = (undefined2)DAT_07fc42e0;
  }
  else {
    uVar3 = 0;
  }
  if (param_1 == 1) {
    uVar3 = (undefined2)DAT_07fc42e4;
  }
  *DAT_07fc42e8 = uVar3;
  func_0x07f027e4(0);
  return;
}

