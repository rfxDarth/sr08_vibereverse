/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fc6540(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 *puVar1;
  
  puVar1 = (undefined1 *)ROM_ke_msg_alloc /* 0x07f1bbb0 */(0xe10,param_4,param_3,6);
  *(undefined2 *)(puVar1 + 4) = 0;
  *(undefined2 *)(puVar1 + 2) = 0;
  *puVar1 = 1;
  ROM_ke_msg_send /* 0x07f1bbe2 */();
  return 0;
}

