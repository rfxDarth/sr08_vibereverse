// rea decompile_all
// name: FUN_07fc4fa4
// address: 0x7fc4fa4
// body: available
// range: 0x7fc4fa4-0x7fc5083 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc4fa4(void)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  uint uVar6;
  undefined1 local_28;
  undefined1 local_27;
  undefined1 local_26;
  undefined1 local_25;
  undefined1 local_24;
  undefined1 local_23;
  undefined1 local_22;
  undefined1 local_21;
  undefined1 local_20;
  undefined1 local_1f;
  undefined1 local_1e;
  undefined1 local_1d;
  undefined1 local_1c;
  undefined1 local_1b;
  undefined1 local_1a;
  undefined1 local_19;
  undefined1 local_18;
  undefined1 local_17;
  undefined1 local_16;
  undefined1 local_15;
  
  local_28 = 3;
  iVar1 = *(int *)(DAT_07fc511c + 0x38);
  local_23 = (undefined1)iVar1;
  uVar3 = *(undefined4 *)(DAT_07fc5118 + 0x28);
  local_27 = (undefined1)uVar3;
  local_20 = (undefined1)((uint)iVar1 >> 0x18);
  local_21 = (undefined1)((uint)iVar1 >> 0x10);
  local_22 = (undefined1)((uint)iVar1 >> 8);
  local_24 = (undefined1)((uint)uVar3 >> 0x18);
  local_25 = (undefined1)((uint)uVar3 >> 0x10);
  local_26 = (undefined1)((uint)uVar3 >> 8);
  uVar6 = 0;
  if (DAT_07fc5084 <= *(uint *)(DAT_07fc511c + 0x44)) {
    uVar6 = *(uint *)(DAT_07fc511c + 0x44);
  }
  local_17 = (undefined1)uVar6;
  local_16 = (undefined1)(uVar6 >> 8);
  local_15 = (undefined1)(uVar6 >> 0x10);
  uVar6 = iVar1 * (uint)*(ushort *)(DAT_07fc511c + 0x36);
  uVar3 = func_0x07f1dfb8(uVar6 * *(byte *)(DAT_07fc511c + 0x8a) * 0xe,DAT_07fc5088);
  local_1b = (undefined1)uVar3;
  uVar2 = func_0x07f1dfb8((uVar6 & 0x7fffffff) >> 4,5);
  local_1f = (undefined1)uVar2;
  local_18 = (undefined1)((uint)uVar3 >> 0x18);
  local_19 = (undefined1)((uint)uVar3 >> 0x10);
  local_1a = (undefined1)((uint)uVar3 >> 8);
  local_1c = (undefined1)((uint)uVar2 >> 0x18);
  local_1d = (undefined1)((uint)uVar2 >> 0x10);
  local_1e = (undefined1)((uint)uVar2 >> 8);
  FUN_07fc2550(&local_28);
  local_15 = 0;
  local_16 = 0;
  local_17 = 0;
  local_28 = 0x13;
  uVar4 = *(undefined4 *)(DAT_07fc5118 + 0x28);
  local_27 = (undefined1)uVar4;
  uVar5 = *(undefined4 *)(DAT_07fc511c + 0x3c);
  uVar2 = *(undefined4 *)(DAT_07fc511c + 0x40);
  local_23 = (undefined1)uVar5;
  local_1f = (undefined1)uVar2;
  uVar3 = *(undefined4 *)(DAT_07fc511c + 0x48);
  local_1b = (undefined1)uVar3;
  local_24 = (undefined1)((uint)uVar4 >> 0x18);
  local_25 = (undefined1)((uint)uVar4 >> 0x10);
  local_26 = (undefined1)((uint)uVar4 >> 8);
  local_20 = (undefined1)((uint)uVar5 >> 0x18);
  local_21 = (undefined1)((uint)uVar5 >> 0x10);
  local_22 = (undefined1)((uint)uVar5 >> 8);
  local_1c = (undefined1)((uint)uVar2 >> 0x18);
  local_1d = (undefined1)((uint)uVar2 >> 0x10);
  local_1e = (undefined1)((uint)uVar2 >> 8);
  local_18 = (undefined1)((uint)uVar3 >> 0x18);
  local_19 = (undefined1)((uint)uVar3 >> 0x10);
  local_1a = (undefined1)((uint)uVar3 >> 8);
  FUN_07fc2550(&local_28);
  return;
}

