/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


int FUN_07fc3ea0(undefined1 *param_1,uint param_2,uint param_3,int param_4)

{
  undefined2 *puVar1;
  undefined1 uVar2;
  undefined2 uVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  char cVar10;
  undefined1 *puVar11;
  int local_2c;
  undefined2 local_24;
  uint local_18;
  
  *DAT_07fc4108 = 200;
  puVar1 = DAT_07fc4094;
  if (*(char *)(DAT_07fc4090 + 2) == '\0') {
    uVar3 = 1;
  }
  else {
    uVar3 = 8;
  }
  DAT_07fc4094[1] = uVar3;
  *puVar1 = uVar3;
  local_18 = 0;
  FUN_07fcbb6c();
  FUN_07fcbb94(0xab);
  if (param_4 == 1) {
    if ((*(char *)(DAT_07fc4090 + 0xe) == '\x01') && (iVar5 = FUN_07fcc494(), iVar5 == 0)) {
LAB_07fc4032:
      FUN_07fcbae2();
      cVar10 = -1;
      goto LAB_07fc408a;
    }
    FUN_07fcbb6c(0);
    uVar9 = 0x800000 - param_2;
    if (param_3 <= 0x800000 - param_2) {
      uVar9 = param_3;
    }
    local_24 = 1;
    local_18 = 0x100;
    local_2c = 0;
    uVar8 = 0;
    uVar6 = (param_2 + 0x100 & 0xffffff00) - 1;
    uVar7 = uVar9;
    while (uVar4 = local_2c, uVar8 < uVar9) {
      if (uVar6 < uVar7 + param_2) {
        uVar7 = (uVar6 - param_2) + 1;
      }
      uVar4 = FUN_07fcbad0();
      if ((uVar4 != 0) || (uVar4 = FUN_07fcbb38(), uVar4 != 0)) break;
      FUN_07fcbb6c(2);
      uVar3 = local_24;
      if (*(char *)(DAT_07fc4090 + 2) != '\0') {
        uVar3 = 8;
      }
      DAT_07fc4094[1] = uVar3;
      FUN_07fcba98(param_2 | 0x2000000);
      FUN_07fcbb6c(0);
      uVar4 = uVar7;
      if (0xff < (uVar7 & 0xffff)) {
        uVar4 = local_18;
      }
      puVar11 = param_1 + uVar8;
      for (; (uVar4 & 0xffff) != 0; uVar4 = uVar4 - 1) {
        FUN_07fcba98(*puVar11);
        puVar11 = puVar11 + 1;
      }
      if (*(char *)(DAT_07fc4090 + 2) == '\0') {
        uVar3 = 1;
      }
      else {
        uVar3 = 8;
      }
      *DAT_07fc4094 = uVar3;
      uVar4 = FUN_07fcbb10();
      if (uVar4 != 0) break;
      uVar8 = uVar7 + uVar8;
      uVar7 = uVar9 - uVar8;
      param_2 = uVar6 + 1;
      uVar6 = uVar6 + 0x100;
    }
  }
  else if (param_4 == 0) {
    uVar4 = FUN_07fcbad0();
    if (uVar4 == 0) {
      FUN_07fcbb6c(2);
      if (*(char *)(DAT_07fc4090 + 2) == '\0') {
        uVar3 = 1;
      }
      else {
        uVar3 = 8;
      }
      DAT_07fc4094[1] = uVar3;
      FUN_07fcba98(param_2 | 0x3000000);
      FUN_07fcbb6c(0);
      if (0x800000 < param_3 + param_2) {
        param_3 = 0x800000 - param_2;
      }
      for (; param_3 != 0; param_3 = param_3 - 1) {
        uVar2 = FUN_07fcba98(0);
        *param_1 = uVar2;
        param_1 = param_1 + 1;
      }
      if (*(char *)(DAT_07fc439c + 2) == '\0') {
        uVar3 = 1;
      }
      else {
        uVar3 = 8;
      }
      *DAT_07fc4094 = uVar3;
      uVar4 = 0;
    }
  }
  else {
    if ((*(char *)(DAT_07fc439c + 0xe) == '\x01') && (iVar5 = FUN_07fcc494(), iVar5 == 0))
    goto LAB_07fc4032;
    uVar9 = param_3 + DAT_07fc409c >> 0xc;
    if (uVar9 == 0) {
      uVar9 = 1;
    }
    param_2 = param_2 & DAT_07fc4098;
    uVar4 = 0xff;
    for (; uVar9 != 0; uVar9 = uVar9 - 1) {
      *DAT_07fc4108 = 200;
      uVar4 = FUN_07fcbad0();
      if ((uVar4 != 0) || (uVar4 = FUN_07fcbb38(), uVar4 != 0)) break;
      FUN_07fcbb6c(2);
      FUN_07fcbb94(param_2 | 0x20000000);
      uVar4 = FUN_07fcbb10();
      if (uVar4 != 0) break;
      param_2 = DAT_07fc409c + param_2 + 1;
      uVar4 = local_18;
    }
  }
  cVar10 = (char)uVar4;
  FUN_07fcbae2();
LAB_07fc408a:
  return (int)cVar10;
}

