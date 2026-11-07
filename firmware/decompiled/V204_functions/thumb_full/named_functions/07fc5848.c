/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc5848(uint param_1,uint param_2,undefined4 param_3)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  
  iVar1 = FUN_07fcb080(0xfd);
  piVar3 = (int *)(iVar1 + 0x10);
  piVar2 = piVar3;
  do {
    piVar2 = (int *)*piVar2;
    if (piVar2 == (int *)0x0) goto LAB_07fc5880;
  } while (*(byte *)(piVar2 + 1) != param_1);
  if (*(byte *)((int)piVar2 + 5) != param_2) {
    ROM_co_list_extract /* 0x07f02c04 */(piVar3,piVar2,0);
    ROM_ke_free /* 0x07f1ba8a */(piVar2);
LAB_07fc5880:
    piVar2 = (int *)ROM_ke_malloc /* 0x07f1b994 */(param_2 + 8,1);
    ROM___aeabi_memclr /* 0x07f1e0de */(piVar2,param_2 + 8);
    ROM_co_list_push_back /* 0x07f02b5c */(piVar3,piVar2);
  }
  *(char *)((int)piVar2 + 5) = (char)param_2;
  *(char *)((int)piVar2 + 4) = (char)param_1;
  ROM___aeabi_memcpy /* 0x07f1e0ac */((int)piVar2 + 6,param_3);
  return;
}

