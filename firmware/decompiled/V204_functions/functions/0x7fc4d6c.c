// rea decompile_all
// name: FUN_07fc4d6c
// address: 0x7fc4d6c
// body: available
// range: 0x7fc4d6c-0x7fc4e73 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4
FUN_07fc4d6c(uint param_1,byte *param_2,undefined4 param_3,undefined4 param_4,undefined1 *param_5)

{
  byte bVar1;
  int iVar2;
  byte *pbVar3;
  undefined4 *puVar4;
  code *pcVar5;
  uint uVar6;
  
  if (param_1 == DAT_07fc4e74) {
    if (*(uint *)(param_2 + 4) == 0) {
      *DAT_07fc4e84 = 200;
      *DAT_07fc4e88 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    if (DAT_07fc4e80 <= *(uint *)(param_2 + 4)) {
      *DAT_07fc4e84 = 200;
      *DAT_07fc4e88 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    func_0x07f1c054(*param_2 + DAT_07fc4e78,4);
  }
  else if (param_1 == DAT_07fc4e78) {
    bVar1 = *param_2;
    uVar6 = bVar1 - 1;
    if (9 < (uVar6 & 0xff)) {
      *DAT_07fc4e84 = 200;
      *DAT_07fc4e88 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    iVar2 = uVar6 * 4;
    if (*(code **)(DAT_07fc4e8c + iVar2) == DAT_07fc4e90) {
      puVar4 = (undefined4 *)(DAT_07fc4e8c + iVar2);
      *puVar4 = puVar4[10];
      FUN_07fc575c((uint)bVar1,*(undefined4 *)(param_2 + 4));
    }
  }
  else if (param_1 == DAT_07fc4e7c) {
    if (9 < *param_2 - 1) {
      *DAT_07fc4e84 = 200;
      *DAT_07fc4e88 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    iVar2 = (*param_2 - 1) * 4;
    pcVar5 = *(code **)(DAT_07fc4e8c + iVar2);
    if (pcVar5 == DAT_07fc4e94) {
      puVar4 = (undefined4 *)(DAT_07fc4e8c + iVar2);
      *puVar4 = 0;
      puVar4[10] = 0;
    }
    else if (pcVar5 == DAT_07fc4e90) {
      pbVar3 = (byte *)func_0x07f1bbb0(DAT_07fc4e78,4,4,8);
      *pbVar3 = *param_2;
      *(undefined4 *)(pbVar3 + 4) = *(undefined4 *)(param_2 + 4);
      func_0x07f1bbe2();
    }
  }
  else {
    if (param_1 < DAT_07fc4e78 + 1) {
      return 1;
    }
    if (DAT_07fc4e78 + 10 < param_1) {
      return 1;
    }
    iVar2 = ((param_1 - 3 & 0xff) - 1) * 4;
    pcVar5 = *(code **)(DAT_07fc4e8c + iVar2);
    if (((pcVar5 != (code *)0x0) && (pcVar5 != DAT_07fc4e90)) && (pcVar5 != DAT_07fc4e94)) {
      puVar4 = (undefined4 *)(DAT_07fc4e8c + iVar2);
      *puVar4 = 0;
      puVar4[10] = 0;
      (*pcVar5)();
    }
  }
  *param_5 = 0;
  return 0;
}

