// rea decompile_all
// name: FUN_07fc3ab0
// address: 0x7fc3ab0
// body: available
// range: 0x7fc3ab0-0x7fc3b1f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc3ab0(undefined1 param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 *puVar3;
  
  iVar1 = FUN_07fcb080(0x26);
  uVar2 = func_0x07f0283e(0x26);
  puVar3 = (undefined1 *)func_0x07f1bbb0(DAT_07fc3b20,uVar2,4,param_3 + 8U & 0xffff);
  if (puVar3 != (undefined1 *)0x0) {
    *(char *)(iVar1 + 0x22) = *(char *)(iVar1 + 0x22) + '\x01';
    *(short *)(puVar3 + 4) = (short)param_3;
    puVar3[6] = param_1;
    *(undefined2 *)(puVar3 + 2) = 0;
    *puVar3 = 0;
    func_0x07f1e0ac(puVar3 + 7,param_2,param_3);
    uVar2 = FUN_07fc4440();
    FUN_07fc532c(s_ble_send__d_07fc3b24,uVar2);
    FUN_07fcb178(puVar3 + 7,param_3);
    func_0x07f1bbe2(puVar3);
    return;
  }
  FUN_07fc532c(s_malloc_failure_07fc3b30);
  return;
}

