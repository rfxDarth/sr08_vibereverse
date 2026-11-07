/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fc01b4(undefined4 param_1,int param_2)

{
  undefined2 uVar1;
  int iVar2;
  uint uVar3;
  
  iVar2 = ROM_atts_allocate_pdu /* 0x07f11956 */(param_1,3,0);
  uVar1 = ROM_gattm_get_max_mtu /* 0x07f12cf4 */();
  *(undefined2 *)(iVar2 + 2) = uVar1;
  ROM_atts_send_pdu /* 0x07f11978 */(iVar2);
  uVar3 = ROM_gattm_get_max_mtu /* 0x07f12cf4 */();
  if (*(ushort *)(param_2 + 2) <= uVar3) {
    uVar3 = (uint)*(ushort *)(param_2 + 2);
  }
  ROM_gattc_set_mtu /* 0x07f11b46 */(param_1,uVar3);
  return 0;
}

