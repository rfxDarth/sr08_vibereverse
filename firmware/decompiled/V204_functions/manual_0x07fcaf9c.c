/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


undefined8 FUN_07fcaf9c(int param_1,undefined2 *param_2,undefined4 param_3)

{
  short sVar1;
  char cVar2;
  undefined4 *puVar3;
  int iVar4;
  undefined2 *puVar5;
  short *psVar6;
  int iVar7;
  uint uVar8;
  
  cVar2 = (char)*(short *)(param_1 + 2);
  puVar3 = DAT_07fcb16c;
  if (((cVar2 != '&') && (puVar3 = DAT_07fcb170, cVar2 != -3)) &&
     (puVar3 = DAT_07fcb174, cVar2 != -4)) {
    return CONCAT44(param_2,0x40);
  }
  psVar6 = (short *)(DAT_07fcb168 + 0x16);
  iVar7 = 0x21;
  do {
    iVar7 = iVar7 + -1;
    puVar5 = param_2;
    if (iVar7 == 0) {
      uVar8 = 0;
      iVar7 = DAT_07fcb168;
      goto LAB_07fcafd4;
    }
    sVar1 = *psVar6;
    psVar6 = psVar6 + 0xc;
  } while (sVar1 != *(short *)(param_1 + 2));
  iVar4 = 0x42;
LAB_07fcafd0:
  return CONCAT44(puVar5,iVar4);
LAB_07fcafd4:
  if (uVar8 == 0x20) {
LAB_07fcb010:
    return CONCAT44(puVar5,0x4b);
  }
  if (*(short *)(iVar7 + 0x16) == 0xff) {
    puVar5 = (undefined2 *)(param_1 + 8);
    iVar4 = (*(code *)*puVar3)(iVar7,param_1 + 6,*(undefined2 *)(param_1 + 4),
                               *(undefined1 *)(param_1 + 1),puVar5,param_3);
    if (iVar4 == 0) {
      *(undefined2 *)(iVar7 + 0x16) = *(undefined2 *)(param_1 + 2);
      *param_2 = *(undefined2 *)(iVar7 + 0x14);
    }
    if ((uVar8 & 0xff) != 0x20) goto LAB_07fcafd0;
    goto LAB_07fcb010;
  }
  iVar7 = iVar7 + 0x18;
  uVar8 = uVar8 + 1;
  goto LAB_07fcafd4;
}

