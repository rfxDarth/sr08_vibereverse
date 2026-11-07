// rea decompile_all
// name: FUN_07fc5294
// address: 0x7fc5294
// body: available
// range: 0x7fc5294-0x7fc532b inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc5294(int param_1,int param_2,int param_3,undefined1 *param_4,uint param_5)

{
  undefined1 uVar1;
  char cVar2;
  int iVar3;
  char cVar4;
  undefined1 *puVar5;
  uint uVar6;
  bool bVar7;
  
  uVar6 = 0;
  bVar7 = param_1 < 0;
  if (param_2 == 10 && bVar7) {
    param_1 = -param_1;
  }
  if (param_3 == 0) {
    cVar2 = 'W';
  }
  else {
    cVar2 = '7';
  }
  do {
    iVar3 = func_0x07f1dfb8(param_1,param_2);
    param_1 = param_1 - iVar3 * param_2;
    cVar4 = cVar2;
    if (param_1 < 10) {
      cVar4 = '0';
    }
    param_4[uVar6] = (char)param_1 + cVar4;
    uVar6 = uVar6 + 1;
    param_1 = iVar3;
  } while (0 < iVar3);
  for (; uVar6 < param_5; uVar6 = uVar6 + 1) {
    param_4[uVar6] = 0x30;
  }
  if (param_2 == 10 && bVar7) {
    param_4[uVar6] = 0x2d;
    uVar6 = uVar6 + 1;
  }
  puVar5 = param_4 + uVar6;
  *puVar5 = 0;
  for (uVar6 = (uint)((int)puVar5 - (int)param_4) >> 1; puVar5 = puVar5 + -1, uVar6 != 0;
      uVar6 = uVar6 - 1) {
    uVar1 = *param_4;
    *param_4 = *puVar5;
    *puVar5 = uVar1;
    param_4 = param_4 + 1;
  }
  return;
}

