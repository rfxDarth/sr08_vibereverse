/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4
FUN_07fc3ff8(uint param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined1 *param_5,int param_6,int param_7)

{
  undefined1 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  ushort *puVar4;
  ushort *puVar5;
  int iVar6;
  uint uVar7;
  
  uVar3 = 1;
  if (param_7 != 0) {
    iVar6 = param_7 + 1;
    puVar4 = (ushort *)(param_7 * 8 + param_6);
    do {
      puVar5 = puVar4;
      puVar4 = puVar5 + -4;
      iVar6 = iVar6 + -1;
      if (iVar6 < 1) {
        return 1;
      }
      uVar7 = (uint)*puVar4;
    } while ((uVar7 != param_1) && (uVar7 != DAT_07fc405c));
    pcVar2 = *(code **)(puVar5 + -2);
    if (pcVar2 == (code *)0x0) {
      *DAT_07fc4060 = 200;
      *DAT_07fc4064 = 8;
      do {
                    /* WARNING: Do nothing block with infinite loop */
      } while( true );
    }
    uVar1 = (*pcVar2)(param_1,param_2,param_4,param_3);
    *param_5 = uVar1;
    uVar3 = 0;
  }
  return uVar3;
}

