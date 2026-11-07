/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fc1394(undefined4 param_1,int param_2,uint param_3)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  
  uVar3 = param_3 >> 8;
  uVar2 = 0;
  iVar1 = ROM_ke_state_get /* 0x07f1bf1a */();
  if (((iVar1 == 0) || (iVar1 == 0x13)) || (iVar1 == 0x14)) {
    ROM_co_buf_rx_free /* 0x07f02ac6 */(*(undefined1 *)(param_2 + 6));
  }
  else if ((int)((uint)*(byte *)(*(int *)(_DAT_07fc16d0 + uVar3 * 4) + 0x2d) << 0x1b) < 0) {
    iVar1 = ROM_ke_state_get /* 0x07f1bf1a */(param_3);
    if (iVar1 == 0x15) {
      uVar2 = 2;
    }
    else {
      ROM_co_buf_rx_free /* 0x07f02ac6 */(*(undefined1 *)(param_2 + 6));
      iVar1 = ROM_lld_get_mode /* 0x07f072fa */(uVar3);
      if (iVar1 == 3) {
        if ((int)((uint)*(byte *)(*(int *)(_DAT_07fc16d0 + uVar3 * 4) + 0x2d) << 0x1d) < 0) {
          ROM_llc_common_enc_key_ref_comp_evt_send /* 0x07f03336 */(uVar3,0x3d);
        }
        else {
          ROM_llc_common_enc_change_evt_send /* 0x07f03352 */(uVar3,0,0x3d);
        }
      }
      ROM_llc_util_dicon_procedure /* 0x07f063f4 */(uVar3,0x3d);
    }
  }
  else {
    *(short *)(param_2 + -8) = (short)_DAT_07fc16d4;
    *(short *)(param_2 + -6) = (short)(param_3 >> 8);
    ROM_hci_send_2_host /* 0x07f0eb10 */(param_2);
    uVar2 = 1;
  }
  return uVar2;
}

