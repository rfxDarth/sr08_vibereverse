/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fc08ba(undefined4 param_1,char *param_2)

{
  char cVar1;
  int iVar2;
  undefined1 *puVar3;
  int *piVar4;
  int iVar5;
  
  piVar4 = DAT_07fc0a6c;
  iVar5 = *DAT_07fc0a6c;
  if (iVar5 == 0) {
    return 0;
  }
  cVar1 = (char)DAT_07fc0a6c[0xd];
  if (cVar1 == '\0') {
    return 0;
  }
  if (cVar1 == '\x01') {
    if (*param_2 == '\0') {
      piVar4 = DAT_07fc0a6c + 5;
      *(undefined1 *)(DAT_07fc0a6c + 0xd) = 2;
      ROM___aeabi_memcpy /* 0x07f1e0ac */(piVar4,param_2 + 1,0x20);
      ROM_llm_create_p256_key /* 0x07f0291c */(2,DAT_07fc0a78,piVar4);
      return 0;
    }
  }
  else if (cVar1 != '\x02') {
    return 0;
  }
  if ((*(ushort *)(iVar5 + 8) == DAT_07fc0a70) && (iVar2 = ROM_llm_util_check_evt_mask /* 0x07f0c4f8 */(7), iVar2 != 0)) {
    puVar3 = (undefined1 *)ROM_ke_msg_alloc /* 0x07f1bbb0 */(DAT_07fc0a74,0,0x3e,0x42);
    *puVar3 = 8;
    if (*param_2 == '\0') {
      puVar3[1] = 0;
      iVar5 = 0;
      do {
        iVar2 = iVar5 + 1;
        puVar3[iVar5 + 2] = param_2[0x20 - iVar5];
        iVar5 = iVar2;
      } while (iVar2 < 0x20);
      iVar5 = 0;
      do {
        iVar2 = iVar5 + 1;
        puVar3[iVar5 + 0x22] = param_2[0x40 - iVar5];
        iVar5 = iVar2;
      } while (iVar2 < 0x20);
    }
    else {
      puVar3[1] = 3;
      puVar3[2] = *param_2;
    }
  }
  else {
    if (((uint)*(ushort *)(iVar5 + 8) != DAT_07fc0a70 + 1) ||
       (iVar5 = ROM_llm_util_check_evt_mask /* 0x07f0c4f8 */(8), iVar5 == 0)) goto LAB_07fc09a2;
    puVar3 = (undefined1 *)ROM_ke_msg_alloc /* 0x07f1bbb0 */(DAT_07fc0a74,0,0x3e,0x22);
    *puVar3 = 9;
    if (*param_2 == '\0') {
      puVar3[1] = 0;
      iVar5 = 0;
      do {
        iVar2 = iVar5 + 1;
        puVar3[iVar5 + 2] = param_2[0x20 - iVar5];
        iVar5 = iVar2;
      } while (iVar2 < 0x20);
    }
    else {
      puVar3[1] = 0x12;
      iVar5 = 0;
      do {
        iVar2 = iVar5 + 1;
        puVar3[iVar5 + 2] = 0xff;
        iVar5 = iVar2;
      } while (iVar2 < 0x20);
    }
  }
  ROM_hci_send_2_host /* 0x07f0eb10 */();
LAB_07fc09a2:
  *(undefined1 *)(piVar4 + 0xd) = 0;
  ROM_rwip_prevent_sleep_clear /* 0x07f1c4b6 */(0x40);
  ROM_co_list_pop_front /* 0x07f02b24 */(piVar4);
  ROM_ke_msg_free /* 0x07f1bc36 */();
  if (*piVar4 != 0) {
    ROM_llm_p256_start /* 0x07f02912 */();
  }
  return 0;
}

