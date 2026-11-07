// rea decompile_all
// name: FUN_07fc7538
// address: 0x7fc7538
// body: available
// range: 0x7fc7538-0x7fc75c3 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4 FUN_07fc7538(undefined4 param_1,byte *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  byte *pbVar4;
  byte bVar5;
  undefined4 uVar6;
  
  uVar6 = param_4;
  iVar1 = FUN_07fcb080(0x26);
  if (iVar1 == 0) {
    *DAT_07fc77f4 = 200;
    *DAT_07fc77f8 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  bVar5 = *param_2;
  if (bVar5 < 9) {
    iVar2 = func_0x07f14c80();
    if (iVar2 != DAT_07fc75c4) {
      iVar2 = iVar1 + 6;
      pbVar4 = param_2;
      for (uVar3 = (uint)*(byte *)(iVar1 + 0x21); pbVar4 = pbVar4 + 2, uVar3 != 0; uVar3 = uVar3 - 1
          ) {
        *(undefined2 *)(iVar2 + (uint)*param_2 * 2) = *(undefined2 *)pbVar4;
        iVar2 = iVar2 + 0x16;
      }
      if (*(char *)(DAT_07fc75c8 + 0x11) == '\x02') {
        bVar5 = 0;
        *(undefined1 *)(DAT_07fc75cc + 0xb0) = 0;
      }
      else {
        bVar5 = 0;
      }
      goto LAB_07fc75aa;
    }
    bVar5 = *param_2;
  }
  if (bVar5 < 9) {
    bVar5 = 0x89;
  }
  else {
    bVar5 = 0x40;
  }
LAB_07fc75aa:
  pbVar4 = (byte *)func_0x07f1bbb0(DAT_07fc75d0,param_4,param_3,2,uVar6);
  pbVar4[1] = bVar5;
  *pbVar4 = *param_2;
  func_0x07f1bbe2();
  return 0;
}

