/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fcc9c8(void)

{
  undefined4 uVar1;
  undefined1 *puVar2;
  
  FUN_07fc532c(_DAT_07fcca00,s_vtimer_enable_hid_timer_handler_07fcca04,0x77);
  uVar1 = func_0x07f0283e(0x26);
  puVar2 = (undefined1 *)func_0x07f1bbb0(0x2600,uVar1,4,4);
  *(short *)(puVar2 + 2) = (short)_DAT_07fcca24;
  *puVar2 = 0;
  func_0x07f1bbe2();
  FUN_07fcc9a4(0xb,_DAT_07fcca28);
  return;
}

