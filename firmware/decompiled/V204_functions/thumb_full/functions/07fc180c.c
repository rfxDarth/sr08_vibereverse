/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc180c(int param_1,undefined4 param_2,undefined4 param_3,uint param_4)

{
  undefined1 *puVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  uint uStack_18;
  
  uStack_18 = param_4;
  puVar1 = (undefined1 *)func_0x07f1bbb0(DAT_07fc18e8,9,param_1 * 0x100 + 10,0x41);
  *puVar1 = 0x27;
  iVar5 = DAT_07fc18ec;
  iVar3 = 0;
  do {
    iVar2 = iVar3 + 1;
    puVar1[iVar3 + 1] = *(undefined1 *)(*(int *)(iVar5 + param_1 * 4) + (0x68 - iVar3));
    iVar3 = iVar2;
  } while (iVar2 < 0x20);
  iVar3 = 0;
  do {
    iVar2 = iVar3 + 1;
    puVar1[iVar3 + 0x21] = *(undefined1 *)(*(int *)(iVar5 + param_1 * 4) + (0x88 - iVar3));
    iVar3 = iVar2;
  } while (iVar2 < 0x20);
  uVar4 = func_0x07f1cdd4();
  iVar5 = func_0x07f1d6ce(puVar1 + 1,uVar4);
  if (iVar5 == 0) {
    uStack_18 = 10;
    func_0x07f13cc8(param_1,5,&uStack_18);
    uVar4 = func_0x07f14c98(param_1);
    func_0x07f13b9c(param_1,uVar4,uStack_18 & 0xff | 0x60,1);
  }
  func_0x07f1bbe2(puVar1);
  return;
}

