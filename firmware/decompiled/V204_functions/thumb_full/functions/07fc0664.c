/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc0664(int param_1,uint param_2,int param_3,uint param_4)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  uint extraout_r1;
  int extraout_r2;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  int iStack_68;
  char acStack_64 [32];
  byte abStack_44 [24];
  uint uStack_2c;
  int iStack_24;
  uint uStack_20;
  int iStack_1c;
  uint uStack_18;
  
  uStack_18 = param_4;
  iStack_1c = param_3;
  uStack_20 = param_2;
  iStack_24 = param_1;
  iVar2 = 0;
  uVar7 = 0;
  uVar5 = 1;
  if (**(char **)(_DAT_07fc0a68 + 4) == '\f') {
    uVar5 = 0;
    uStack_2c = 0;
    goto LAB_07fc069a;
  }
  acStack_64[0] = '\x01';
  do {
    uStack_2c = 0;
    if (uVar7 == 0) {
LAB_07fc069a:
      iStack_68 = iStack_24;
      uVar6 = uStack_20;
    }
    else {
      iStack_68 = iStack_1c;
      uVar6 = uStack_18;
    }
    uStack_2c = 0;
    uVar4 = 0;
    if (0x1f < uVar6) {
      iVar2 = 0x40;
    }
    while ((uVar4 < uVar6 && (iVar2 == 0))) {
      cVar1 = *(char *)(iStack_68 + uVar4 + 1);
      uVar3 = 0;
      uVar7 = uVar5;
      if ((cVar1 == '\x01') || (((cVar1 == '\x17' || (cVar1 == '\x18')) || (cVar1 == '\x19')))) {
        do {
          uVar7 = (uint)(char)((char)uVar7 + -1);
          if ((int)uVar7 < 0) goto LAB_07fc06d6;
        } while (acStack_64[uVar7] != cVar1);
        if ((int)uVar7 < 0) {
LAB_07fc06d6:
          acStack_64[uVar5] = cVar1;
          uVar5 = uVar5 + 1 & 0xff;
        }
        else {
          uVar3 = 0x4a;
        }
      }
      func_0x07f1e154(uVar3,cVar1,uVar4,cVar1);
      iVar2 = extraout_r2 >> 0x20;
      uVar7 = uStack_2c;
      do {
        uVar7 = (uint)(char)((char)uVar7 + -1);
        if ((int)uVar7 < 0) goto LAB_07fc0722;
      } while (abStack_44[uVar7] != extraout_r1);
      if ((int)uVar7 < 0) {
LAB_07fc0722:
        abStack_44[uStack_2c] = (byte)extraout_r1;
        uStack_2c = uStack_2c + 1 & 0xff;
      }
      else {
        iVar2 = 0x4a;
      }
      uVar4 = (uint)*(byte *)(iStack_68 + extraout_r2) + extraout_r2 + 1 & 0xffff;
      uVar7 = uVar5;
    }
    if (uVar4 != uVar6) {
      iVar2 = 0x4a;
    }
    uVar7 = uVar7 + 1 & 0xff;
    if ((1 < uVar7) || (iVar2 != 0)) {
      return;
    }
  } while( true );
}

