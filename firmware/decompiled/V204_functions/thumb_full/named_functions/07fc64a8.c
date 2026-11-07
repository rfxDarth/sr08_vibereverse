/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fc64a8(undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  byte bVar2;
  undefined2 uVar3;
  undefined1 *puVar4;
  undefined1 uVar5;
  uint uVar6;
  undefined1 auStack_34 [32];
  
  cVar1 = *param_2;
  if (cVar1 == '\x02') {
    puVar4 = (undefined1 *)ROM_ke_msg_alloc /* 0x07f1bbb0 */(_DAT_07fc6538,param_4,param_3,10);
    *(undefined2 *)(puVar4 + 8) = 0x7d;
    *(undefined2 *)(puVar4 + 6) = 0;
    *(undefined2 *)(puVar4 + 4) = 0x10;
    *(undefined2 *)(puVar4 + 2) = 8;
    uVar5 = 2;
  }
  else {
    if (cVar1 != '\x01') {
      if (cVar1 != '\0') {
        return 0;
      }
      bVar2 = *(byte *)(DAT_07fc65c0 + 0x48);
      uVar6 = (uint)bVar2;
      ROM___aeabi_memcpy /* 0x07f1e0ac */(auStack_34,DAT_07fc65c0 + 0x49,uVar6);
      puVar4 = (undefined1 *)ROM_ke_msg_alloc /* 0x07f1bbb0 */(_DAT_07fc6538,param_4,param_3,uVar6 + 10);
      *(ushort *)(puVar4 + 2) = (ushort)bVar2;
      *puVar4 = 0;
      ROM___aeabi_memcpy /* 0x07f1e0ac */(puVar4 + 4,auStack_34,uVar6);
      goto LAB_07fc652e;
    }
    uVar3 = *(undefined2 *)(DAT_07fc65c0 + 0x6a);
    puVar4 = (undefined1 *)ROM_ke_msg_alloc /* 0x07f1bbb0 */(_DAT_07fc6538,param_4,param_3,10);
    *(undefined2 *)(puVar4 + 2) = uVar3;
    uVar5 = 1;
  }
  *puVar4 = uVar5;
LAB_07fc652e:
  ROM_ke_msg_send /* 0x07f1bbe2 */(puVar4);
  return 0;
}

