// rea decompile_all
// name: FUN_07fcb82c
// address: 0x7fcb82c
// body: available
// range: 0x7fcb82c-0x7fcb8a3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fcb82c(undefined4 *param_1)

{
  uint *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined2 uVar6;
  int iVar7;
  undefined1 local_3c [40];
  
  *DAT_07fcb8a4 = (*DAT_07fcb8a4 & 0xffe0ffff) + 0x20000;
  puVar1 = DAT_07fcb8a8;
  *DAT_07fcb8a8 = *DAT_07fcb8a8 & 0xfff7ffff;
  uVar3 = DAT_07fcb8b4;
  uVar2 = DAT_07fcb8b0;
  param_1[5] = DAT_07fcb8b8;
  uVar5 = DAT_07fcb8c0;
  uVar4 = DAT_07fcb8bc;
  param_1[7] = DAT_07fcb8c4;
  param_1[8] = uVar4;
  param_1[9] = uVar2;
  param_1[10] = DAT_07fcb8ac;
  param_1[0xb] = uVar3;
  uVar2 = DAT_07fcb8c8;
  *param_1 = uVar5;
  param_1[1] = uVar2;
  *puVar1 = *puVar1 & 0xfffbffff;
  for (iVar7 = 0; iVar7 != 0x28; iVar7 = iVar7 + 1) {
    local_3c[iVar7] = (char)iVar7;
  }
  func_0x07f1e0ac(*DAT_07fcb8cc + 0x40,local_3c,0x28);
  FUN_07fcb8d8();
  uVar6 = FUN_07fc7308();
  *(undefined2 *)(DAT_07fcbbbc + 0x38) = uVar6;
  FUN_07fc16f8();
  return;
}

