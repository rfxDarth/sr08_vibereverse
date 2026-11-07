/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc132a(int param_1,int param_2,undefined4 param_3,uint param_4)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  uint uStack_18;
  
  iVar2 = DAT_07fc16c8;
  iVar1 = *(int *)(DAT_07fc16c8 + param_1 * 4);
  if (*(char *)(iVar1 + 0x48) == '\x19') {
    uStack_18 = param_4;
    ROM___aeabi_memcpy /* 0x07f1e0ac */(iVar1 + 0x49,param_2 + 5,0x40);
    iVar2 = ROM_memcmp /* 0x07f1e0f4 */(*(int *)(iVar2 + param_1 * 4) + 0x49,DAT_07fc16cc,0x40);
    if (iVar2 == 0) {
      uStack_18._0_1_ = 0xb;
      ROM_smpc_pdu_send /* 0x07f13cc8 */(param_1,5,&uStack_18);
      uStack_18 = CONCAT31(uStack_18._1_3_,(undefined1)uStack_18) | 0x60;
      uVar3 = ROM_gapc_get_role /* 0x07f14c98 */(param_1);
      ROM_smpc_pairing_end /* 0x07f13b9c */(param_1,uVar3,uStack_18 & 0xff,1);
    }
    else {
      ROM_smpc_dhkey_calc_start /* 0x07f1b5b2 */(param_1,DAT_07fc16cc + -0x20);
    }
  }
  return;
}

