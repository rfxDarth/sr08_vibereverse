// rea decompile_all
// name: FUN_07fc53c0
// address: 0x7fc53c0
// body: available
// range: 0x7fc53c0-0x7fc5495 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4 FUN_07fc53c0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  undefined1 *puVar3;
  int iVar4;
  uint uVar5;
  undefined4 unaff_lr;
  undefined1 local_84 [96];
  undefined4 *local_24;
  undefined4 local_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  iVar2 = DAT_07fc54a0;
  piVar1 = DAT_07fc549c;
  if (*(char *)(DAT_07fc5498 + 9) == '\0') {
    *(undefined1 *)(DAT_07fc5498 + 9) = 1;
    *piVar1 = 0;
    piVar1[1] = 0;
    piVar1[2] = 0x100;
    piVar1[3] = 1;
    piVar1[4] = iVar2;
  }
  local_24 = &local_c;
  local_c = param_2;
  uStack_8 = param_3;
  uStack_4 = param_4;
  iVar2 = FUN_07fc5248(local_84,param_1);
  piVar1 = DAT_07fc549c;
  if (iVar2 - 1U < 0x60) {
    puVar3 = local_84;
    for (; iVar2 != 0; iVar2 = iVar2 + -1) {
      FUN_07fc2f26(piVar1,puVar3);
      puVar3 = puVar3 + 1;
    }
    uVar5 = piVar1[2] - 1U & *piVar1 - piVar1[1];
    iVar2 = FUN_07fc2ff0();
    iVar4 = DAT_07fc54a4 + 0x34;
    while ((0x12 < uVar5 && (iVar2 != 0))) {
      iVar2 = FUN_07fcaa48();
      if (iVar2 == 0) goto LAB_07fc547e;
      func_0x07f1e0de(local_84 + 1,0x13);
      local_84[0] = 0xf4;
      for (iVar2 = 1; iVar2 != 0x14; iVar2 = iVar2 + 1) {
        FUN_07fc3030(piVar1,local_84 + iVar2);
        FUN_07fc2fd8(piVar1);
      }
      FUN_07fc2ef8(iVar4,local_84);
      uVar5 = piVar1[2] - 1U & *piVar1 - piVar1[1];
      iVar2 = FUN_07fc2ff0();
    }
    if (uVar5 != 0) {
LAB_07fc547e:
      FUN_07fcbe30(9,1000,0,DAT_07fc54a8);
    }
  }
  return unaff_lr;
}

