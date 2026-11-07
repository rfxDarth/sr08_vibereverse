/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


undefined4 FUN_07fc521c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 unaff_lr;
  undefined1 auStack_80 [96];
  undefined4 *local_20;
  undefined4 local_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  local_20 = &local_c;
  local_c = param_2;
  uStack_8 = param_3;
  uStack_4 = param_4;
  uVar1 = FUN_07fc5248(auStack_80,param_1);
  FUN_07fcbe54(auStack_80,uVar1);
  return unaff_lr;
}

