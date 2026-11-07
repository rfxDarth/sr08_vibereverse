// rea decompile_all
// name: FUN_07fca7a0
// address: 0x7fca7a0
// body: available
// range: 0x7fca7a0-0x7fca7b3 inclusive
// range: 0x7fca7c8-0x7fca83d inclusive
// non_contiguous: true
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


undefined4 FUN_07fca7a0(int param_1,byte *param_2,undefined1 *param_3)

{
  undefined1 uVar1;
  undefined4 uVar2;
  byte bVar3;
  
  switch(param_1) {
  case 0x40:
    if (1 < *param_2) {
      param_3[1] = 7;
      uVar1 = 0xd0;
LAB_07fca81a:
      *param_3 = uVar1;
      uVar2 = 0;
      bVar3 = 2;
      goto LAB_07fca83a;
    }
    break;
  case 0x41:
    if (*param_2 != 0) {
      uVar1 = 6;
LAB_07fca82e:
      *param_3 = uVar1;
      uVar2 = 0;
      bVar3 = 1;
      goto LAB_07fca83a;
    }
    break;
  case 0x42:
    if (*param_2 != 0) {
      uVar1 = 0x40;
      goto LAB_07fca82e;
    }
    break;
  case 0x43:
    if (*param_2 != 0) {
      uVar1 = 100;
      goto LAB_07fca82e;
    }
    break;
  case 0x44:
    if (*param_2 != 0) {
      uVar1 = 0x32;
      goto LAB_07fca82e;
    }
    break;
  default:
    if (param_1 != 7) {
      if (param_1 != 1) {
        return 1;
      }
      bVar3 = 6;
      func_0x07f1e0ac(param_3,DAT_07fca840 + 2,6);
      uVar2 = 0;
      goto LAB_07fca83a;
    }
    if (1 < *param_2) {
      param_3[1] = 1;
      uVar1 = 0xf4;
      goto LAB_07fca81a;
    }
  }
  uVar2 = 4;
  bVar3 = 0;
LAB_07fca83a:
  *param_2 = bVar3;
  return uVar2;
}

