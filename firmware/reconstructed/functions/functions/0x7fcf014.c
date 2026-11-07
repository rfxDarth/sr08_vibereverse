// rea decompile_all
// name: FUN_07fcf014
// address: 0x7fcf014
// body: available
// range: 0x7fcf014-0x7fcf119 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4 FUN_07fcf014(int param_1,int param_2,int param_3,int param_4)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  
  local_2c = 0;
  local_30 = 0;
  for (iVar2 = 0; iVar2 < param_4; iVar2 = iVar2 + 1) {
    iVar4 = *(int *)(param_1 + iVar2 * 4) >> 10;
    local_2c = iVar4 * iVar4 + local_2c;
    iVar4 = *(int *)(param_2 + iVar2 * 4) >> 10;
    local_30 = iVar4 * iVar4 + local_30;
  }
  iVar2 = param_4 * 2;
  if ((local_2c == 0) || (local_30 == 0)) {
    for (iVar4 = 0; iVar2 - iVar4 != 0 && iVar4 <= iVar2; iVar4 = iVar4 + 1) {
      *(undefined1 *)(param_3 + iVar4) = 0;
    }
  }
  else {
    for (iVar4 = 0; iVar2 - iVar4 != 0 && iVar4 <= iVar2; iVar4 = iVar4 + 1) {
      if (iVar4 < param_4) {
        iVar5 = 0;
        for (iVar3 = 0; iVar3 < iVar4 + 1; iVar3 = iVar3 + 1) {
          iVar5 = ((*(int *)(param_1 + iVar3 * 4) >> 9) *
                   (*(int *)(((param_4 - iVar4) + iVar3) * 4 + param_2 + -4) >> 9) >> 2) + iVar5;
        }
        iVar3 = func_0x07f1dfe4(iVar5 << 6,local_2c);
        uVar1 = func_0x07f1dfe4(iVar5 * iVar3,local_30);
        *(undefined1 *)(param_3 + iVar4) = uVar1;
      }
      if (param_4 <= iVar4) {
        if (iVar2 + -1 == iVar4) {
          uVar1 = 0;
        }
        else {
          local_28 = 0;
          for (iVar3 = 0; iVar3 < (iVar2 - iVar4) + -1; iVar3 = iVar3 + 1) {
            local_28 = ((*(int *)(((iVar4 - param_4) + iVar3) * 4 + param_1 + 4) >> 9) *
                        (*(int *)(param_2 + iVar3 * 4) >> 9) >> 2) + local_28;
          }
          iVar3 = func_0x07f1dfe4(local_28 << 6,local_2c);
          uVar1 = func_0x07f1dfe4(local_28 * iVar3,local_30);
        }
        *(undefined1 *)(param_3 + iVar4) = uVar1;
      }
    }
  }
  return 0;
}

