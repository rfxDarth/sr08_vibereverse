/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fc625c(undefined4 param_1,undefined2 *param_2,undefined4 param_3,uint param_4)

{
  int iVar1;
  undefined1 uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  
  uVar5 = param_4;
  iVar3 = func_0x07f1bf1a(param_3);
  if (iVar3 != 2) {
    *_DAT_07fc6330 = 200;
    *_DAT_07fc6334 = 8;
    do {
                    /* WARNING: Do nothing block with infinite loop */
    } while( true );
  }
  uVar4 = param_4 >> 8;
  iVar3 = _DAT_07fc6338 + uVar4 * 0xe;
  uVar2 = (undefined1)(param_4 >> 8);
  *(undefined1 *)(iVar3 + 0x5a) = uVar2;
  if (uVar4 != 0xff) {
    *(undefined1 *)(iVar3 + 0x5b) = 1;
    func_0x07f1beb6(4,3);
    *(undefined2 *)(iVar3 + 0x58) = *param_2;
    *(undefined1 *)(iVar3 + 0x5c) = *(undefined1 *)((int)param_2 + 9);
    func_0x07f1e0ac(iVar3 + 0x5d,param_2 + 5,6);
    FUN_07fc31f8(uVar4,*(undefined1 *)(_DAT_07fc633c + uVar4 * 0x7a + 0x7a));
    iVar1 = _DAT_07fc6340;
    if (*(char *)(iVar3 + 0x5a) != -1) {
      *(undefined1 *)(_DAT_07fc6340 + 8) = uVar2;
      FUN_07fc532c(0x7fc6344,param_2[1],param_2[2],param_2[3],uVar5);
      FUN_07fc2e1c(param_2[1],param_2[2],param_2[3]);
      FUN_07fc3410(*(undefined1 *)(iVar1 + 0xb));
      if (((param_2[1] != 0x50) || (param_2[2] != 0)) || (param_2[3] != 600)) {
        uVar2 = FUN_07fc33e4(600,_DAT_07fc6354);
        *(undefined1 *)(iVar1 + 9) = uVar2;
      }
      goto LAB_07fc631a;
    }
  }
  FUN_07fcc538();
LAB_07fc631a:
  if (*(char *)(iVar3 + 0x5a) == -1) {
    FUN_07fcc538();
  }
  FUN_07fc4fc8(1);
  return 0;
}

