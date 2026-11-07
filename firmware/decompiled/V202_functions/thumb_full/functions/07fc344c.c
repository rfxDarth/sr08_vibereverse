/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined1 FUN_07fc344c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined1 local_18 [4];
  
  iVar1 = 0;
  do {
    if (iVar1 + 4 == 0x1c) {
      FUN_07fcb544(param_1,param_2);
      return 0;
    }
    iVar2 = (**(code **)(DAT_07fc348c + iVar1))(param_1,param_2,param_3,param_4,local_18);
    iVar1 = iVar1 + 4;
  } while (iVar2 != 0);
  return local_18[0];
}

