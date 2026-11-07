/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fc5294(int param_1,int param_2,int param_3,undefined1 *param_4,uint param_5)

{
  undefined1 uVar1;
  char cVar2;
  int iVar3;
  char cVar4;
  undefined1 *puVar5;
  uint uVar6;
  bool bVar7;
  
  uVar6 = 0;
  bVar7 = param_1 < 0;
  if (param_2 == 10 && bVar7) {
    param_1 = -param_1;
  }
  if (param_3 == 0) {
    cVar2 = 'W';
  }
  else {
    cVar2 = '7';
  }
  do {
    iVar3 = func_0x07f1dfb8(param_1,param_2);
    param_1 = param_1 - iVar3 * param_2;
    cVar4 = cVar2;
    if (param_1 < 10) {
      cVar4 = '0';
    }
    param_4[uVar6] = (char)param_1 + cVar4;
    uVar6 = uVar6 + 1;
    param_1 = iVar3;
  } while (0 < iVar3);
  for (; uVar6 < param_5; uVar6 = uVar6 + 1) {
    param_4[uVar6] = 0x30;
  }
  if (param_2 == 10 && bVar7) {
    param_4[uVar6] = 0x2d;
    uVar6 = uVar6 + 1;
  }
  puVar5 = param_4 + uVar6;
  *puVar5 = 0;
  for (uVar6 = (uint)((int)puVar5 - (int)param_4) >> 1; puVar5 = puVar5 + -1, uVar6 != 0;
      uVar6 = uVar6 - 1) {
    uVar1 = *param_4;
    *param_4 = *puVar5;
    *puVar5 = uVar1;
    param_4 = param_4 + 1;
  }
  return;
}

