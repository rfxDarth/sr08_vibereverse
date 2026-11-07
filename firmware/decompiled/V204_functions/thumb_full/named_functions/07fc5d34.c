/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined8 FUN_07fc5d34(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  short sVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 local_18;
  
  local_18 = param_4;
  iVar3 = FUN_07fcb080(0xfd);
  sVar1 = *(short *)(iVar3 + 4);
  sVar2 = *(short *)(param_2 + 2);
  iVar4 = ROM_ke_state_get /* 0x07f1bf1a */(param_3);
  if (iVar4 == 1) {
    uVar5 = 2;
  }
  else {
    iVar4 = FUN_07fc7284(sVar2 + sVar1);
    if (iVar4 == 0) {
      *DAT_07fc5dac = 200;
      *DAT_07fc5db0 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    iVar4 = FUN_07fc5a88(iVar4,&local_18);
    if (iVar4 != 0) {
      *DAT_07fc5dac = 200;
      *DAT_07fc5db0 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    uVar5 = 1;
    ROM_ke_state_set /* 0x07f1beb6 */(param_3,1);
    *(undefined1 *)(iVar3 + 0xc) = 0;
    *(int *)(iVar3 + 8) = param_2 + -0xc;
    *(char *)(iVar3 + 0xd) = (char)local_18;
    FUN_07fc5968();
  }
  return CONCAT44(param_2,uVar5);
}

