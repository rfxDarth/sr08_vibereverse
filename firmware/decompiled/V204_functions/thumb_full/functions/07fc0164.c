/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fc0164(void)

{
  undefined4 uVar1;
  uint unaff_lr;
  
  if ((unaff_lr & 4) != 0) {
    uVar1 = getProcessStackPointer();
                    /* WARNING: Could not recover jumptable at 0x07fc0172. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (*_DAT_07fc0190)(uVar1);
    return;
  }
  uVar1 = getMainStackPointer();
                    /* WARNING: Could not recover jumptable at 0x07fc017a. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*_DAT_07fc0190)(uVar1);
  return;
}

