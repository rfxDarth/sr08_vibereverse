/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc31f8(int param_1,undefined1 param_2)

{
  int iVar1;
  
  iVar1 = ROM_ke_msg_alloc /* 0x07f1bbb0 */(DAT_07fc321c,param_1 * 0x100 + 10,4,0x2c);
  *(undefined1 *)(iVar1 + 0x28) = param_2;
  *(undefined1 *)(iVar1 + 0x29) = 1;
  ROM_ke_msg_send /* 0x07f1bbe2 */();
  return;
}

