/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fc5dd8(undefined4 param_1,byte *param_2,undefined4 param_3)

{
  undefined2 uVar1;
  int iVar2;
  undefined2 *puVar3;
  
  iVar2 = ROM_ke_state_get /* 0x07f1bf1a */(param_3);
  if (iVar2 == 1) {
    iVar2 = (uint)*param_2 * 0x100 + 8;
    if (param_2[6] == 0) {
      puVar3 = (undefined2 *)ROM_ke_msg_alloc /* 0x07f1bbb0 */(DAT_07fc5e4c,iVar2,param_3,*(short *)(param_2 + 4) + 6)
      ;
      uVar1 = FUN_07fc5a6c(param_2[2]);
      *(undefined1 *)(puVar3 + 2) = 0;
      *puVar3 = uVar1;
      puVar3[1] = *(undefined2 *)(param_2 + 4);
      ROM___aeabi_memcpy /* 0x07f1e0ac */((int)puVar3 + 5,param_2 + 7,*(undefined2 *)(param_2 + 4));
    }
    else {
      puVar3 = (undefined2 *)ROM_ke_msg_alloc /* 0x07f1bbb0 */(DAT_07fc5e4c,iVar2,param_3,6);
      uVar1 = FUN_07fc5a6c(param_2[2]);
      *(undefined1 *)(puVar3 + 2) = 0x80;
      *puVar3 = uVar1;
    }
    ROM_ke_msg_send /* 0x07f1bbe2 */(puVar3);
    ROM_ke_state_set /* 0x07f1beb6 */(param_3,0);
  }
  return 0;
}

