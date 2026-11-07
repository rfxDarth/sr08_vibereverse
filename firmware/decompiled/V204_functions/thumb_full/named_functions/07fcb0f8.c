/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcb0f8(int param_1)

{
  char cVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 *puVar5;
  int iVar6;
  uint uVar7;
  
  iVar3 = DAT_07fcb170;
  iVar2 = DAT_07fcb16c;
  if (param_1 == 0) {
    puVar5 = DAT_07fcb168;
    for (uVar7 = 0x10; uVar7 != 0x30; uVar7 = uVar7 + 1) {
      *(undefined2 *)((int)puVar5 + 0x16) = 0xff;
      *(short *)(puVar5 + 5) = (short)uVar7;
      *puVar5 = 0;
      puVar5[1] = 0;
      puVar5[2] = 0;
      puVar5[3] = 0;
      puVar5[4] = 0;
      ROM_ke_task_create /* 0x07f1be52 */(uVar7 & 0xff,puVar5);
      puVar5 = puVar5 + 6;
    }
  }
  else {
    puVar5 = DAT_07fcb168;
    for (iVar6 = 0x20; iVar6 != 0; iVar6 = iVar6 + -1) {
      cVar1 = *(char *)((int)puVar5 + 0x16);
      iVar4 = iVar2;
      if (((cVar1 == '&') || (iVar4 = iVar3, cVar1 == -3)) || (iVar4 = DAT_07fcb174, cVar1 == -4)) {
        (**(code **)(iVar4 + 4))(puVar5);
      }
      *(undefined2 *)((int)puVar5 + 0xe) = 0;
      puVar5[1] = 0;
      puVar5[2] = 0;
      *(undefined2 *)((int)puVar5 + 0x16) = 0xff;
      ROM_ke_task_msg_flush /* 0x07f1bf40 */(*(undefined1 *)(puVar5 + 5));
      puVar5 = puVar5 + 6;
    }
  }
  return;
}

