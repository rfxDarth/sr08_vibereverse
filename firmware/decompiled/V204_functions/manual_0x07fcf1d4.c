/* Ghidra 12.1.4 pseudocode; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570; Thumb context explicitly set. Not original source. */


void FUN_07fcf1d4(undefined4 param_1,undefined4 param_2,int param_3,int param_4)

{
  undefined2 unaff_r5;
  int unaff_r6;
  int unaff_r7;
  code *UNRECOVERED_JUMPTABLE;
  int iStack00000144;
  
  iStack00000144 = unaff_r6 << 0x1f;
  *(undefined2 *)(param_3 + 0x20) = unaff_r5;
  *(int *)(param_3 + 0x44) = unaff_r7 + -0x3b;
  *(undefined2 *)(unaff_r7 + -0x11) = 0;
                    /* WARNING: Could not recover jumptable at 0x07fcf252. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*UNRECOVERED_JUMPTABLE)(0,param_4,0x1f,param_4 + -0x38,param_1,param_2);
  return;
}

