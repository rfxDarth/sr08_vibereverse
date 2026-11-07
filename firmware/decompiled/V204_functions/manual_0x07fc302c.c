/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_07fc302c(void)

{
  byte bVar1;
  undefined1 uVar2;
  undefined1 *puVar3;
  int iVar4;
  code *pcVar5;
  undefined1 *puVar6;
  
  iVar4 = _DAT_07fc30d4;
  if (*(char *)(_DAT_07fc30d4 + 5) == '\0') {
    *(undefined1 *)(_DAT_07fc30d4 + 5) = 1;
    FUN_07fc532c(0x7fc30d8);
    puVar3 = (undefined1 *)func_0x07f1bbb0(_DAT_07fc30f0,9,4,0x18);
    *(undefined2 *)(puVar3 + 4) = 4;
    *(undefined2 *)(puVar3 + 2) = 0x26;
    *puVar3 = 0x1b;
    uVar2 = func_0x07fc7358();
    *(undefined2 *)(puVar3 + 10) = 0x204;
    puVar3[8] = 1;
    *(undefined2 *)(puVar3 + 6) = 0;
    puVar3[1] = uVar2;
    puVar6 = _DAT_07fc30f4;
    for (iVar4 = -2; iVar4 != 0; iVar4 = iVar4 + 1) {
      puVar3[iVar4 + 0x10] = *puVar6;
      puVar3[iVar4 + 0xe] = puVar6[1];
      puVar6 = puVar6 + 0xc;
    }
    *(undefined2 *)(puVar3 + 0x12) = 0x300;
    *(undefined2 *)(puVar3 + 0x10) = 0x100;
    func_0x07f1bbe2(puVar3);
  }
  else {
    if (*(char *)(_DAT_07fc30d4 + 6) == '\0') {
      *(undefined1 *)(_DAT_07fc30d4 + 6) = 1;
      pcVar5 = pcRam07fc30fc;
    }
    else {
      bVar1 = *(byte *)(_DAT_07fc30d4 + 7);
      if (bVar1 == 1) {
        *(undefined1 *)(_DAT_07fc30d4 + 5) = 0;
        *(undefined2 *)(iVar4 + 6) = 0;
        return 1;
      }
      *(byte *)(_DAT_07fc30d4 + 7) = bVar1 + 1;
      pcVar5 = *(code **)((uint)bVar1 * 0x1c + 0x7fc311c);
    }
    (*pcVar5)();
  }
  return 0;
}

