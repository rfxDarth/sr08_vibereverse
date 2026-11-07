// rea decompile_all
// name: FUN_07fcb544
// address: 0x7fcb544
// body: available
// range: 0x7fcb544-0x7fcb5e9 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fcb544(int param_1,undefined2 *param_2)

{
  undefined4 uVar1;
  uint uVar2;
  undefined1 local_24;
  undefined1 auStack_23 [19];
  
  if (param_1 == DAT_07fcb5ec) {
    FUN_07fc521c(s_up__d__d__d_07fcb608,*param_2,param_2[1],param_2[2]);
    FUN_07fc2e6c(*param_2,param_2[1],param_2[2]);
  }
  else if (param_1 == DAT_07fcb5f0) {
    if (param_2[1] == 5) {
      FUN_07fc4d88();
    }
    else if (param_2[1] == 2) {
      FUN_07fc521c(&DAT_07fcb5f4);
      FUN_07fca148(param_2 + 3,0x14);
      uVar1 = FUN_07fc432c();
      FUN_07fc521c(DAT_07fcb5f8,uVar1);
      local_24 = *(undefined1 *)(param_2 + 3);
      func_0x07f1e0ac(auStack_23,(int)param_2 + 7,0x13);
      FUN_07fc2ef8(DAT_07fcb5fc + 0x48,&local_24);
      FUN_07fc2ebc();
      uVar2 = (uint)*(byte *)(param_2 + 3);
      if ((((uVar2 - 0x10 < 0x16) && ((1 << (uVar2 - 0x10 & 0xff) & DAT_07fcb600) != 0)) ||
          ((uVar2 - 0x31 < 0x1c && ((1 << (uVar2 - 0x31 & 0xff) & DAT_07fcb604) != 0)))) ||
         (uVar2 == 1)) {
        FUN_07fc2e14();
      }
    }
  }
  return;
}

