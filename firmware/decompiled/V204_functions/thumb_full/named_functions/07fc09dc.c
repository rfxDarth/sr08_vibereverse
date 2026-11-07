/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fc09dc(undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  undefined4 uVar2;
  
  cVar1 = *param_2;
  uVar2 = 0;
  if (cVar1 == '\x01') {
    ROM_rwble_hl_reset /* 0x07f1c28a */();
    uVar2 = 1;
    *_DAT_07fc0a68 = param_2;
    ROM_gapm_basic_hci_cmd_send /* 0x07f18256 */(_DAT_07fc0a7c);
  }
  else if (cVar1 == '\x1d') {
    ROM_platform_reset /* 0x07f027e4 */(_DAT_07fc0a80);
  }
  else if (cVar1 == '+') {
    if (*_DAT_07fc0a84 == 0) {
      *_DAT_07fc0a84 = 1;
      ROM_smpm_ecdh_key_create /* 0x07f029f0 */(_DAT_07fc0a88);
    }
  }
  else {
    ROM_gapm_send_error_evt /* 0x07f16b30 */(cVar1,param_4,0x40);
  }
  return uVar2;
}

