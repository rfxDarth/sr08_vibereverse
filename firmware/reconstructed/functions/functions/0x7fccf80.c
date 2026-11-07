// rea decompile_all
// name: FUN_07fccf80
// address: 0x7fccf80
// body: available
// range: 0x7fccf80-0x7fcd0a9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fccf80(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  char acStack_49 [29];
  int local_2c;
  int local_28;
  int local_24;
  int local_20;
  int local_1c;
  int local_18;
  
  func_0x07f1e0de(acStack_49 + 1,0x1c);
  iVar1 = (int)acStack_49[1];
  local_24 = 0;
  iVar3 = 0;
  iVar4 = 0;
  iVar7 = 0;
  local_1c = 0;
  for (iVar2 = 0; iVar2 < param_2; iVar2 = (int)(char)((char)iVar2 + '\x01')) {
    acStack_49[iVar2 + 1] = '\0';
  }
  local_28 = param_2 + -1;
  iVar2 = 0;
  while (iVar6 = iVar2, iVar6 < local_28) {
    iVar2 = (int)(char)((char)iVar6 + '\x01');
    local_20 = iVar6 << 2;
    local_2c = iVar2;
    for (; iVar2 < param_2; iVar2 = (int)(char)((char)iVar2 + '\x01')) {
      local_18 = iVar2 * 4;
      iVar5 = *(int *)(param_1 + iVar2 * 4);
      if (((*(int *)(param_1 + local_20) == iVar5) && (*(int *)(param_1 + local_20) != 0)) &&
         (iVar5 != 0)) {
        acStack_49[iVar6 + 1] = acStack_49[iVar6 + 1] + '\x01';
        *(undefined4 *)(param_1 + local_18) = 0;
      }
    }
    iVar2 = local_2c;
    if (*(int *)(param_1 + local_20) != 0) {
      acStack_49[iVar6 + 1] = acStack_49[iVar6 + 1] + '\x01';
      iVar2 = local_2c;
    }
  }
  if (*(int *)(param_2 * 4 + param_1 + -4) != 0) {
    acStack_49[param_2] = acStack_49[param_2] + '\x01';
  }
  for (iVar2 = 0; iVar2 < param_2; iVar2 = (int)(char)((char)iVar2 + '\x01')) {
    if (iVar1 < acStack_49[iVar2 + 1]) {
      iVar3 = *(int *)(param_1 + iVar2 * 4);
      iVar1 = (int)acStack_49[iVar2 + 1];
    }
  }
  for (iVar2 = 0; iVar2 < param_2; iVar2 = (int)(char)((char)iVar2 + '\x01')) {
    iVar6 = (int)acStack_49[iVar2 + 1];
    if (((local_24 < iVar6) && (iVar6 <= iVar1)) &&
       (iVar5 = *(int *)(param_1 + iVar2 * 4), iVar5 != iVar3)) {
      local_24 = iVar6;
      iVar4 = iVar5;
    }
  }
  for (iVar1 = 0; iVar1 < param_2; iVar1 = (int)(char)((char)iVar1 + '\x01')) {
    iVar2 = (int)acStack_49[iVar1 + 1];
    if (((local_1c < iVar2) && (iVar2 <= local_24)) &&
       ((iVar6 = *(int *)(param_1 + iVar1 * 4), iVar6 != iVar4 && (iVar6 != iVar3)))) {
      local_1c = iVar2;
      iVar7 = iVar6;
    }
  }
  if (iVar4 == 0) {
    iVar4 = iVar3;
  }
  if (iVar7 == 0) {
    iVar7 = iVar3;
  }
  func_0x07f1dfe4(iVar3 + iVar4 + iVar7,3);
  return;
}

