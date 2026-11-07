/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc3ab0(undefined1 param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 *puVar3;
  
  iVar1 = FUN_07fcb080(0x26);
  uVar2 = ROM_prf_get_task_from_id /* 0x07f0283e */(0x26);
  puVar3 = (undefined1 *)ROM_ke_msg_alloc /* 0x07f1bbb0 */(DAT_07fc3b20,uVar2,4,param_3 + 8U & 0xffff);
  if (puVar3 != (undefined1 *)0x0) {
    *(char *)(iVar1 + 0x22) = *(char *)(iVar1 + 0x22) + '\x01';
    *(short *)(puVar3 + 4) = (short)param_3;
    puVar3[6] = param_1;
    *(undefined2 *)(puVar3 + 2) = 0;
    *puVar3 = 0;
    ROM___aeabi_memcpy /* 0x07f1e0ac */(puVar3 + 7,param_2,param_3);
    uVar2 = FUN_07fc4440();
    FUN_07fc532c(s_ble_send__d_07fc3b24,uVar2);
    FUN_07fcb178(puVar3 + 7,param_3);
    ROM_ke_msg_send /* 0x07f1bbe2 */(puVar3);
    return;
  }
  FUN_07fc532c(s_malloc_failure_07fc3b30);
  return;
}

