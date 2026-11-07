/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


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

