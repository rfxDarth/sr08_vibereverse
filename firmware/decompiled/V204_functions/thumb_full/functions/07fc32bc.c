/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 FUN_07fc32bc(undefined4 param_1,undefined4 param_2,undefined4 param_3,uint param_4)

{
  byte bVar1;
  int iVar2;
  char cVar3;
  undefined2 *puVar4;
  undefined4 uVar5;
  undefined1 uVar6;
  uint uVar7;
  uint uStack_18;
  
  iVar2 = _DAT_07fc3340;
  if (*(int *)(_DAT_07fc3340 + 0x58) != 0) {
    return CONCAT44(param_2,*(int *)(_DAT_07fc3340 + 0x58));
  }
  uStack_18 = param_4;
  puVar4 = (undefined2 *)func_0x07f1bbb0(_DAT_07fc3344,9,4,0x52);
  *(undefined2 **)(iVar2 + 0x58) = puVar4;
  *(undefined1 *)(puVar4 + 4) = 7;
  puVar4[3] = 0x3a0;
  puVar4[2] = 0x3a0;
  *puVar4 = 0xd;
  *(undefined1 *)(puVar4 + 5) = 0;
  *(undefined1 *)((int)puVar4 + 9) = 1;
  uVar6 = 0;
  if (*(char *)(iVar2 + 10) != '\0') {
    uVar6 = 0x16;
  }
  *(undefined1 *)((int)puVar4 + 0xb) = uVar6;
  func_0x07f1e0ac(puVar4 + 6,_DAT_07fc3348 + 0x28);
  *(undefined1 *)((int)puVar4 + 0x2b) = 0;
  uVar5 = FUN_07fc8fb0(&uStack_18);
  bVar1 = *(byte *)((int)puVar4 + 0x2b);
  uVar7 = (uint)bVar1;
  cVar3 = (char)uStack_18;
  *(char *)((int)puVar4 + uVar7 + 0x2c) = (char)uStack_18 + '\x01';
  *(undefined1 *)((int)puVar4 + uVar7 + 0x2d) = 9;
  func_0x07f1e0ac((int)puVar4 + uVar7 + 0x2e,uVar5,uStack_18 & 0xff);
  *(byte *)((int)puVar4 + 0x2b) = cVar3 + bVar1 + '\x02';
  return CONCAT44(param_2,*(undefined4 *)(_DAT_07fc3340 + 0x58));
}

