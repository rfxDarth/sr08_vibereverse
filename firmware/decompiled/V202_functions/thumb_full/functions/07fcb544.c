/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fcb544(int param_1,undefined2 *param_2)

{
  undefined4 uVar1;
  uint uVar2;
  undefined1 local_24;
  undefined1 auStack_23 [19];
  
  if (param_1 == DAT_07fcb5ec) {
    FUN_07fc521c(s_up__d__d__d_07fcb608,*param_2,param_2[1],param_2[2]);
    FUN_07fc2e6c(*param_2,param_2[1],param_2[2]);
  }
  else if (param_1 == DAT_07fcb5f0) {
    if (param_2[1] == 5) {
      FUN_07fc4d88();
    }
    else if (param_2[1] == 2) {
      FUN_07fc521c(&DAT_07fcb5f4);
      FUN_07fca148(param_2 + 3,0x14);
      uVar1 = FUN_07fc432c();
      FUN_07fc521c(DAT_07fcb5f8,uVar1);
      local_24 = *(undefined1 *)(param_2 + 3);
      func_0x07f1e0ac(auStack_23,(int)param_2 + 7,0x13);
      FUN_07fc2ef8(DAT_07fcb5fc + 0x48,&local_24);
      FUN_07fc2ebc();
      uVar2 = (uint)*(byte *)(param_2 + 3);
      if ((((uVar2 - 0x10 < 0x16) && ((1 << (uVar2 - 0x10 & 0xff) & DAT_07fcb600) != 0)) ||
          ((uVar2 - 0x31 < 0x1c && ((1 << (uVar2 - 0x31 & 0xff) & DAT_07fcb604) != 0)))) ||
         (uVar2 == 1)) {
        FUN_07fc2e14();
      }
    }
  }
  return;
}

