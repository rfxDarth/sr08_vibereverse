/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

longlong FUN_07fcc414(undefined4 param_1,uint param_2,undefined4 param_3,uint param_4)

{
  short sVar1;
  int iVar2;
  int iVar3;
  undefined1 *puVar4;
  undefined1 uVar5;
  
  iVar2 = FUN_07fcb080(0xfc);
  iVar3 = ROM_attmdb_att_set_value /* 0x07f1003a */(*(short *)(iVar2 + 6) + 0xc,1,0,(undefined1 *)(param_2 + 2));
  if (iVar3 != 0) {
    *_DAT_07fcc48c = 200;
    *_DAT_07fcc490 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  if (*(short *)(iVar2 + 10) != 0) {
    puVar4 = (undefined1 *)ROM_ke_msg_alloc /* 0x07f1bbb0 */(0xc10,param_4 & 0xffffff08 | 8,param_3,9);
    sVar1 = *(short *)(iVar2 + 10);
    *(undefined2 *)(puVar4 + 2) = 0;
    if (sVar1 == 1) {
      uVar5 = 0x12;
    }
    else {
      uVar5 = 0x13;
    }
    *puVar4 = uVar5;
    sVar1 = *(short *)(iVar2 + 6);
    *(undefined2 *)(puVar4 + 6) = 1;
    *(short *)(puVar4 + 4) = sVar1 + 0xc;
    puVar4[8] = *(undefined1 *)(param_2 + 2);
    ROM_ke_msg_send /* 0x07f1bbe2 */();
  }
  return (ulonglong)param_2 << 0x20;
}

