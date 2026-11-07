// rea decompile_all
// name: FUN_07fc4e98
// address: 0x7fc4e98
// body: available
// range: 0x7fc4e98-0x7fc4f25 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc4e98(void)

{
  int iVar1;
  int iVar2;
  undefined4 local_28;
  undefined4 local_24;
  undefined1 local_20;
  undefined1 auStack_1f [11];
  
  iVar2 = FUN_07fcba7c();
  if ((iVar2 == 1) && (*(char *)(DAT_07fc522c + 1) != '\x01')) {
    func_0x07f1e0de(auStack_1f,0xb);
    local_20 = 0;
    local_24 = DAT_07fc4f2c;
    local_28 = 0xf6;
    FUN_07fc24c6(&local_28);
    func_0x07f1e0de((int)&local_28 + 1,0x13);
    local_28 = CONCAT31(local_28._1_3_,0xf6);
    FUN_07fc72f0((int)&local_28 + 1);
    FUN_07fc24c6(&local_28);
    FUN_07fc519c();
    FUN_07fc5230();
    FUN_07fc50b4();
    iVar1 = DAT_07fc5028;
    if (*(char *)(DAT_07fc5028 + 0x20) == '\x01') {
      FUN_07fc259c(0xb,*(undefined1 *)(DAT_07fc4f30 + 0xb),*(undefined1 *)(DAT_07fc5028 + 0x28));
    }
    *(undefined1 *)(iVar1 + 0x35) = 1;
    *DAT_07fc4f30 = 0;
    *(undefined2 *)(iVar1 + 0x36) = 0x600;
  }
  *(char *)(DAT_07fc522c + 1) = (char)iVar2;
  return;
}

