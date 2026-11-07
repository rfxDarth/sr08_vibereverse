// rea decompile_all
// name: FUN_07fca7f8
// address: 0x7fca7f8
// body: available
// range: 0x7fca7f8-0x7fca86f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fca7f8(undefined4 *param_1)

{
  uint *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined2 uVar6;
  int iVar7;
  undefined1 local_3c [40];
  
  *DAT_07fca870 = (*DAT_07fca870 & 0xffe0ffff) + 0x20000;
  puVar1 = DAT_07fca874;
  *DAT_07fca874 = *DAT_07fca874 & 0xfff7ffff;
  uVar3 = DAT_07fca880;
  uVar2 = DAT_07fca87c;
  param_1[5] = DAT_07fca884;
  uVar5 = DAT_07fca88c;
  uVar4 = DAT_07fca888;
  param_1[7] = DAT_07fca890;
  param_1[8] = uVar4;
  param_1[9] = uVar2;
  param_1[10] = DAT_07fca878;
  param_1[0xb] = uVar3;
  uVar2 = DAT_07fca894;
  *param_1 = uVar5;
  param_1[1] = uVar2;
  *puVar1 = *puVar1 & 0xfffbffff;
  for (iVar7 = 0; iVar7 != 0x28; iVar7 = iVar7 + 1) {
    local_3c[iVar7] = (char)iVar7;
  }
  func_0x07f1e0ac(*DAT_07fca898 + 0x40,local_3c,0x28);
  FUN_07fca8a4();
  uVar6 = FUN_07fc6e04();
  *(undefined2 *)(DAT_07fcab88 + 0x38) = uVar6;
  FUN_07fc16f8();
  return;
}

