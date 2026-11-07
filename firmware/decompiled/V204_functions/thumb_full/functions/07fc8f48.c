/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc8f48(undefined4 param_1,undefined1 param_2)

{
  int iVar1;
  code *pcVar2;
  undefined1 uVar3;
  uint uVar4;
  
  iVar1 = DAT_07fc8fa0;
  *(undefined1 *)(DAT_07fc8fa0 + 0x12) = param_2;
  *(undefined1 *)(iVar1 + 0x18) = 0;
  *(undefined1 *)(iVar1 + 0x17) = 0;
  *(undefined2 *)(iVar1 + 0x14) = 0;
  FUN_07fcd8a0();
  *(undefined2 *)(iVar1 + 0x1e) = 0;
  FUN_07fcebc4();
  FUN_07fc7f94();
  uVar4 = FUN_07fc8584(0x47);
  if (uVar4 < 0x40) {
    FUN_07fc8680(DAT_07fc8fa4);
    pcVar2 = DAT_07fc8fa8;
    uVar3 = (*DAT_07fc8fa8)(0x45);
    iVar1 = DAT_07fc8fac;
    *(undefined1 *)(DAT_07fc8fac + 3) = uVar3;
    uVar3 = (*pcVar2)(0x46);
    *(undefined1 *)(iVar1 + 5) = uVar3;
    uVar3 = (*pcVar2)(0x47);
    *(undefined1 *)(iVar1 + 7) = uVar3;
    uVar3 = (*pcVar2)(0x48);
    *(undefined1 *)(iVar1 + 9) = uVar3;
    FUN_07fc8680(iVar1);
  }
  FUN_07fc8134(param_1);
  return;
}

