// rea decompile_all
// name: FUN_07fc5d2c
// address: 0x7fc5d2c
// body: available
// range: 0x7fc5d2c-0x7fc5da1 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined8 FUN_07fc5d2c(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  short sVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 local_18;
  
  local_18 = param_4;
  iVar3 = FUN_07fca05c(0xfd);
  sVar1 = *(short *)(iVar3 + 4);
  sVar2 = *(short *)(param_2 + 2);
  iVar4 = func_0x07f1bf1a(param_3);
  if (iVar4 == 1) {
    uVar5 = 2;
  }
  else {
    iVar4 = FUN_07fc6d80(sVar2 + sVar1);
    if (iVar4 == 0) {
      *DAT_07fc5da4 = 200;
      *DAT_07fc5da8 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    iVar4 = FUN_07fc5a80(iVar4,&local_18);
    if (iVar4 != 0) {
      *DAT_07fc5da4 = 200;
      *DAT_07fc5da8 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    uVar5 = 1;
    func_0x07f1beb6(param_3,1);
    *(undefined1 *)(iVar3 + 0xc) = 0;
    *(int *)(iVar3 + 8) = param_2 + -0xc;
    *(char *)(iVar3 + 0xd) = (char)local_18;
    FUN_07fc5960();
  }
  return CONCAT44(param_2,uVar5);
}

