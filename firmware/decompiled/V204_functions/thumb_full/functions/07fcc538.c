/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_07fcc538(void)

{
  int iVar1;
  undefined1 uVar2;
  
  iVar1 = _DAT_07fcc8ac;
  if ((*(char *)(_DAT_07fcc8ac + 0xe) != '\x01') && (*(char *)(_DAT_07fcc8ac + 0xe) != '\x02')) {
    uVar2 = FUN_07fc33e4(_DAT_07fcc570,_DAT_07fcc574);
    *(undefined1 *)(iVar1 + 0xb) = uVar2;
    FUN_07fc32bc();
    FUN_07fc32bc();
    func_0x07f1bbe2();
    *(undefined4 *)(iVar1 + 0x58) = 0;
    func_0x07f1beb6(4,2);
  }
  return;
}

