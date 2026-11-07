// rea decompile_all
// name: FUN_07fc3cc4
// address: 0x7fc3cc4
// body: available
// range: 0x7fc3cc4-0x7fc3d29 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc3cc4(int param_1,int param_2,int param_3,int param_4,undefined4 param_5,int param_6)

{
  short sVar1;
  int iVar2;
  short local_20 [2];
  undefined2 local_1c [2];
  undefined2 local_18 [2];
  
  local_1c[0] = (undefined2)param_3;
  local_18[0] = (undefined2)param_2;
  local_20[0] = (short)param_4;
  if (param_6 == 1) {
    FUN_07fc3d30(local_18,local_1c,local_20);
    iVar2 = param_3 * param_3 + param_2 * param_2;
    param_4 = (int)local_20[0];
    if (-1 < *(char *)(DAT_07fc3d2c + 7)) {
      iVar2 = iVar2 + param_4 * param_4;
    }
    sVar1 = FUN_07fc1e70(iVar2);
    param_1 = (int)sVar1;
  }
  FUN_07fc4108(param_1,param_2,param_3,param_4,param_5);
  return;
}

