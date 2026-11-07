/* Ghidra 12.1.4, Thumb-context analysis; V202 payload SHA-256: 6d22f804d6d42fd2f195c7df97df46fd0e12d6921ecc6eafdd2d58a1f56f7a02. Not original source. */


void FUN_07fc1fa8(int *param_1,int param_2,undefined1 *param_3,uint param_4)

{
  uint uVar1;
  undefined1 *puVar2;
  
  puVar2 = (undefined1 *)*param_1;
  uVar1 = (param_2 - (int)puVar2) + 0x5f;
  if (param_4 <= uVar1) {
    uVar1 = param_4;
  }
  for (; uVar1 != 0; uVar1 = uVar1 - 1) {
    *puVar2 = *param_3;
    puVar2 = (undefined1 *)(*param_1 + 1);
    *param_1 = (int)puVar2;
    param_3 = param_3 + 1;
  }
  *puVar2 = 0;
  return;
}

