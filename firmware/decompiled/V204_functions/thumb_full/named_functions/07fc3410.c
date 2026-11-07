/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc3410(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined1 *puVar3;
  int *piVar4;
  
  iVar1 = DAT_07fc3458;
  if (param_1 - 1U < 10) {
    piVar4 = (int *)(param_1 * 4 + DAT_07fc3454 + -4);
    iVar2 = *piVar4;
    if ((iVar2 != 0) && (iVar2 != DAT_07fc3458)) {
      ROM_ke_timer_clear /* 0x07f1c0e8 */(param_1 + DAT_07fc345c + 1,4,param_3,param_4,param_4);
      *piVar4 = iVar1;
      puVar3 = (undefined1 *)ROM_ke_msg_alloc /* 0x07f1bbb0 */(DAT_07fc345c,4,4,8);
      *puVar3 = (char)param_1;
      ROM_ke_msg_send /* 0x07f1bbe2 */();
    }
  }
  return;
}

