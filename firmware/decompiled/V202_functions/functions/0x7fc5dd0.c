// rea decompile_all
// name: FUN_07fc5dd0
// address: 0x7fc5dd0
// body: available
// range: 0x7fc5dd0-0x7fc5e43 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4 FUN_07fc5dd0(undefined4 param_1,byte *param_2,undefined4 param_3)

{
  undefined2 uVar1;
  int iVar2;
  undefined2 *puVar3;
  
  iVar2 = func_0x07f1bf1a(param_3);
  if (iVar2 == 1) {
    iVar2 = (uint)*param_2 * 0x100 + 8;
    if (param_2[6] == 0) {
      puVar3 = (undefined2 *)func_0x07f1bbb0(DAT_07fc5e44,iVar2,param_3,*(short *)(param_2 + 4) + 6)
      ;
      uVar1 = FUN_07fc5a64(param_2[2]);
      *(undefined1 *)(puVar3 + 2) = 0;
      *puVar3 = uVar1;
      puVar3[1] = *(undefined2 *)(param_2 + 4);
      func_0x07f1e0ac((int)puVar3 + 5,param_2 + 7,*(undefined2 *)(param_2 + 4));
    }
    else {
      puVar3 = (undefined2 *)func_0x07f1bbb0(DAT_07fc5e44,iVar2,param_3,6);
      uVar1 = FUN_07fc5a64(param_2[2]);
      *(undefined1 *)(puVar3 + 2) = 0x80;
      *puVar3 = uVar1;
    }
    func_0x07f1bbe2(puVar3);
    func_0x07f1beb6(param_3,0);
  }
  return 0;
}

