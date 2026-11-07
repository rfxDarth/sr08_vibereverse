/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


undefined4 FUN_07fc6568(undefined4 param_1,char *param_2,undefined4 param_3,uint param_4)

{
  undefined2 uVar1;
  int iVar2;
  char *pcVar3;
  char cVar4;
  
  iVar2 = DAT_07fc65c0;
  if (*param_2 == '\x01') {
    *(undefined2 *)(DAT_07fc65c0 + 0x6a) = *(undefined2 *)(param_2 + 2);
  }
  else {
    if (*param_2 != '\0') {
      cVar4 = 'H';
      goto LAB_07fc659c;
    }
    uVar1 = *(undefined2 *)(param_2 + 2);
    *(char *)(DAT_07fc65c0 + 0x48) = (char)uVar1;
    ROM___aeabi_memcpy /* 0x07f1e0ac */(iVar2 + 0x49,param_2 + 4,(char)uVar1);
  }
  cVar4 = '\0';
LAB_07fc659c:
  pcVar3 = (char *)ROM_ke_msg_alloc /* 0x07f1bbb0 */(DAT_07fc65c4,param_4 & 0xffffff0a | 10,4,2);
  pcVar3[1] = cVar4;
  *pcVar3 = *param_2;
  ROM_ke_msg_send /* 0x07f1bbe2 */();
  return 0;
}

