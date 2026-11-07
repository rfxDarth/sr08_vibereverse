/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc74d4(int param_1,uint param_2)

{
  undefined2 *puVar1;
  int iVar2;
  uint uVar3;
  
  if (param_2 < 8) {
    iVar2 = *(int *)(param_1 + 0x10);
    *(undefined2 *)(DAT_07fc7520 + 0x20) = 0;
    puVar1 = (undefined2 *)(param_2 * 2 + iVar2 + 6);
    for (uVar3 = (uint)*(byte *)(iVar2 + 0x21); uVar3 != 0; uVar3 = uVar3 - 1) {
      *puVar1 = 0;
      puVar1 = puVar1 + 0xb;
    }
    *(undefined1 *)(iVar2 + 0x22) = 0;
    ROM_ke_state_set /* 0x07f1beb6 */(*(undefined2 *)(param_1 + 0x14),0);
    *(undefined1 *)(DAT_07fc75cc + 0xb0) = 0;
    return;
  }
  *DAT_07fc77f4 = 200;
  *DAT_07fc77f8 = 8;
  do {
                    /* WARNING: Do nothing block with infinite loop */
  } while( true );
}

