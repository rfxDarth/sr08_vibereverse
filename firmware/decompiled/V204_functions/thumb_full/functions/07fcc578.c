/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcc578(int param_1,undefined2 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  uint uVar2;
  undefined1 *puVar3;
  undefined *puVar4;
  short sVar5;
  undefined1 local_28;
  undefined1 auStack_27 [19];
  
  if (param_1 == DAT_07fcc6e0) {
    if (param_2[1] == 5) {
      FUN_07fc4e98();
    }
    else if (param_2[1] == 2) {
      FUN_07fc532c(&DAT_07fcc6f4);
      FUN_07fcb178(param_2 + 3,0x14);
      uVar1 = FUN_07fc4440();
      FUN_07fc532c(DAT_07fcc6f8,uVar1);
      local_28 = *(undefined1 *)(param_2 + 3);
      func_0x07f1e0ac(auStack_27,(undefined1 *)((int)param_2 + 7),0x13);
      FUN_07fc2ea8(DAT_07fcc6fc + 0x48,&local_28);
      FUN_07fc2e6c();
      uVar2 = (uint)*(byte *)(param_2 + 3);
      if ((((uVar2 - 0x10 < 0x16) && ((1 << (uVar2 - 0x10 & 0xff) & DAT_07fcc700) != 0)) ||
          ((uVar2 - 0x31 < 0x1c && ((1 << (uVar2 - 0x31 & 0xff) & DAT_07fcc704) != 0)))) ||
         (uVar2 == 1)) {
        FUN_07fc2dc4();
      }
    }
  }
  else {
    if (param_1 == DAT_07fcc6e4) {
      func_0x07f1e0de(&local_28,0x14);
      sVar5 = 0;
      puVar4 = (undefined *)0x0;
      if (*(char *)((int)param_2 + 1) == '\x01') {
        if (*(char *)((int)param_2 + 3) == '\x01') {
          sVar5 = 0x92;
          puVar4 = PTR_DAT_07fcc710;
        }
        else {
          sVar5 = 0;
          puVar4 = (undefined *)0x0;
          if (*(char *)((int)param_2 + 3) == '\0') {
            sVar5 = 0;
            puVar4 = (undefined *)0x0;
            if (*(byte *)(param_2 + 3) < 2) {
              sVar5 = *(short *)(PTR_DAT_07fcc714 + (uint)*(byte *)(param_2 + 3) * 0xc + 2);
              puVar4 = &local_28;
            }
          }
        }
      }
      puVar3 = (undefined1 *)func_0x07f1bbb0(DAT_07fcc70c,param_4,param_3,sVar5 + 10);
      puVar3[2] = 0;
      *puVar3 = (char)((uint)param_4 >> 8);
      puVar3[1] = *(undefined1 *)((int)param_2 + 1);
      puVar3[4] = *(undefined1 *)(param_2 + 1);
      puVar3[8] = *(undefined1 *)(param_2 + 3);
      puVar3[5] = *(undefined1 *)((int)param_2 + 3);
      *(short *)(puVar3 + 6) = sVar5;
      func_0x07f1e0ac(puVar3 + 9,puVar4,sVar5);
    }
    else {
      if (param_1 != DAT_07fcc6e8) {
        if (param_1 == DAT_07fcc6ec) {
          *(undefined1 *)(DAT_07fcc708 + 0xb0) = 0;
          return;
        }
        if (param_1 != DAT_07fcc6f0) {
          return;
        }
        FUN_07fc532c(s_up__d__d__d_07fcc718,*param_2,param_2[1],param_2[2]);
        FUN_07fc2e1c(*param_2,param_2[1],param_2[2]);
        return;
      }
      puVar3 = (undefined1 *)func_0x07f1bbb0(DAT_07fcc70c + 2,param_4,param_3,4);
      puVar3[1] = 0;
      *puVar3 = *(undefined1 *)param_2;
      puVar3[2] = *(undefined1 *)(param_2 + 1);
      puVar3[3] = *(undefined1 *)((int)param_2 + 3);
    }
    func_0x07f1bbe2(puVar3);
  }
  return;
}

