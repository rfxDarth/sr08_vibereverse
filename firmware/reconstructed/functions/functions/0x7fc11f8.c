// rea decompile_all
// name: FUN_07fc11f8
// address: 0x7fc11f8
// body: available
// range: 0x7fc11f8-0x7fc12c5 inclusive
// range: 0x7fc12e8-0x7fc1329 inclusive
// non_contiguous: true
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// limitations: The session serves operations only after Ghidra reports default auto-analysis complete; incomplete analysis does not expose partial results.; The imported Program and temporary project are ephemeral and deleted on close. Annotation operations edit session database metadata; original executable bytes are never written.; Cancelling an active Ghidra request terminates its ephemeral database and discards session annotations. The selected target remains open; the next provider query imports the original artifact again.; Default-space addresses use lowercase 0x-prefixed hexadecimal; other address spaces use <percent-encoded-space>:0x<hex>.; Headerless raw-binary analysis uses the caller-supplied architecture and entry address; file offset 0 is mapped at that address. Headers are not discovered from file bytes.; Little-endian generic Ghidra languages are used for x86, x86_64, arm, arm64, and NMOS 6502; m68k uses the big-endian 68000 default language, which decodes the 68040 superset. Big-endian ARM, Thumb-only, Cortex-M, 65C02, 65816, separate 68020/68030/CPU32/ColdFire variants, and other processor variants are unsupported in this increment.; Static analysis does not emulate reset vectors, memory-mapped I/O, or firmware boot sequences.; Pseudocode is Ghidra decompiler output, not original source and not text-equivalent to Hopper output.; External functions and functions without an analyzable body return null; other decompiler failures remain explicit.
// pseudocode: provider-specific; not original source


void FUN_07fc11f8(int param_1,int param_2,undefined4 param_3,uint param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  uint local_18;
  
  iVar3 = DAT_07fc12e4;
  iVar4 = param_1 * 4;
  local_18 = param_4;
  if (*(char *)(*(int *)(DAT_07fc12e4 + iVar4) + 0x48) == '$') {
    func_0x07f1e0ac(*(int *)(*(int *)(DAT_07fc12e4 + iVar4) + 0x10) + 0x2e,param_2 + 5,0x10);
    *(undefined1 *)(*(int *)(iVar3 + iVar4) + 0x48) = 0x25;
    func_0x07f1425c(param_1,0);
  }
  if (*(char *)(*(int *)(iVar3 + iVar4) + 0x48) == '\f') {
    func_0x07f1e0ac(*(int *)(*(int *)(iVar3 + iVar4) + 0x10) + 0x2e,param_2 + 5,0x10);
    iVar1 = *(int *)(*(int *)(iVar3 + iVar4) + 0x10);
    if ((int)((uint)*(byte *)(iVar1 + 0x5f) << 0x1c) < 0) {
      iVar1 = func_0x07f14c98(param_1);
      if (iVar1 == 1) {
        *(undefined1 *)(*(int *)(*(int *)(iVar3 + iVar4) + 0x10) + 0xc6) = 0;
        func_0x07f13cc8(param_1,4,*(int *)(*(int *)(iVar3 + iVar4) + 0x10) + 0x1e);
        iVar3 = *(int *)(iVar3 + iVar4);
        if (*(char *)(*(int *)(iVar3 + 0x10) + 0x5e) == '\0') {
          *(undefined1 *)(iVar3 + 0x48) = 0x1b;
          func_0x07f1441a(param_1);
        }
        else {
          *(undefined1 *)(iVar3 + 0x48) = 0x1a;
          func_0x07f14370(param_1,0);
        }
      }
      else {
        *(undefined1 *)(*(int *)(iVar3 + iVar4) + 0x48) = 7;
        func_0x07f1425c(param_1,0);
      }
      return;
    }
    iVar1 = func_0x07f1e0f4(iVar1 + 0x1e,iVar1 + 0x2e,0x10);
    if (iVar1 == 0) {
      local_18._0_1_ = 4;
      func_0x07f13cc8(param_1,5,&local_18);
      local_18 = CONCAT31(local_18._1_3_,(undefined1)local_18) | 0x60;
      uVar2 = func_0x07f14c98(param_1);
      func_0x07f13b9c(param_1,uVar2,local_18 & 0xff,1);
      return;
    }
    *(undefined1 *)(*(int *)(iVar3 + iVar4) + 0x48) = 9;
    uVar2 = func_0x07f14c98(param_1);
    func_0x07f13972(param_1,uVar2,0);
  }
  return;
}

