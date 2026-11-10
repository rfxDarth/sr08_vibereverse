// rea decompile_all
// name: clear_sensor_processing_history_tables
// address: 0x7fceef8
// body: available
// range: 0x7fceef8-0x7fcf00f inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


undefined4 clear_sensor_processing_history_tables(void)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  iVar3 = DAT_07fcf010;
  uVar1 = 0;
  iVar4 = *(int *)(DAT_07fcf010 + 0x1c);
  do {
    iVar2 = uVar1 * 2 + iVar4;
    *(undefined2 *)(iVar2 + 0xca4) = 0;
    uVar1 = uVar1 + 1 & 0xffff;
    *(undefined2 *)(iVar2 + 0xcba) = 0;
  } while (uVar1 < 0xb);
  uVar1 = 0;
  iVar4 = *(int *)(iVar3 + 0x1c);
  do {
    iVar2 = uVar1 * 2 + iVar4;
    *(undefined2 *)(iVar2 + 0xd48) = 0;
    uVar1 = uVar1 + 1 & 0xffff;
    *(undefined2 *)(iVar2 + 0xd58) = 0;
  } while (uVar1 < 8);
  uVar1 = 0;
  iVar4 = *(int *)(iVar3 + 0x1c);
  do {
    iVar2 = uVar1 * 2 + iVar4;
    *(undefined2 *)(iVar2 + 0xcd0) = 0;
    *(undefined2 *)(iVar2 + 0xcda) = 0;
    uVar1 = uVar1 + 1 & 0xffff;
    *(undefined2 *)(iVar2 + 0xce4) = 0;
  } while (uVar1 < 5);
  uVar1 = 0;
  iVar4 = *(int *)(iVar3 + 0x1c);
  do {
    iVar2 = uVar1 * 2 + iVar4;
    *(undefined2 *)(iVar2 + 0xd04) = 0;
    uVar1 = uVar1 + 1 & 0xffff;
    *(undefined2 *)(iVar2 + 0xd14) = 0;
  } while (uVar1 < 4);
  iVar4 = *(int *)(iVar3 + 0x1c);
  uVar1 = 0;
  do {
    iVar2 = uVar1 * 2;
    uVar1 = uVar1 + 1 & 0xffff;
    *(undefined2 *)(iVar2 + iVar4 + 0xd1c) = 0;
  } while (uVar1 < 6);
  iVar4 = *(int *)(iVar3 + 0x1c);
  uVar1 = 0;
  do {
    iVar2 = uVar1 * 2;
    uVar1 = uVar1 + 1 & 0xffff;
    *(undefined2 *)(iVar2 + iVar4 + 0xd28) = 0;
  } while (uVar1 < 4);
  iVar3 = *(int *)(iVar3 + 0x1c);
  *(undefined2 *)(iVar3 + 0xcf8) = 0;
  *(undefined2 *)(iVar3 + 0xcfa) = 0;
  *(undefined2 *)(iVar3 + 0xcfc) = 0;
  *(undefined4 *)(iVar3 + 0xd34) = 0;
  *(undefined2 *)(iVar3 + 0xd38) = 0;
  *(undefined2 *)(iVar3 + 0xd3a) = 0;
  *(undefined2 *)(iVar3 + 0xd3c) = 0;
  *(undefined2 *)(iVar3 + 0xd3e) = 0;
  *(undefined2 *)(iVar3 + 0xd40) = 0x1e;
  *(undefined4 *)(iVar3 + 0xd44) = 0;
  *(undefined4 *)(iVar3 + 0xd68) = 0;
  *(undefined1 *)(iVar3 + 0xd6c) = 0;
  *(undefined1 *)(iVar3 + 0xd6d) = 0;
  *(undefined1 *)(iVar3 + 0xd6e) = 0;
  *(undefined1 *)(iVar3 + 0xd6f) = 0;
  *(undefined1 *)(iVar3 + 0xd75) = 0;
  *(undefined1 *)(iVar3 + 0xd72) = 0;
  *(undefined1 *)(iVar3 + 0xd73) = 0;
  *(undefined1 *)(iVar3 + 0xd74) = 0;
  *(undefined1 *)(iVar3 + 0xd71) = 0;
  *(undefined1 *)(iVar3 + 0xd76) = 0;
  *(undefined4 *)(iVar3 + 0xd80) = 0;
  *(undefined4 *)(iVar3 + 0xd84) = 0;
  *(undefined4 *)(iVar3 + 0xd88) = 0;
  *(undefined4 *)(iVar3 + 0xd8c) = 0;
  *(undefined4 *)(iVar3 + 0xd90) = 0;
  *(undefined4 *)(iVar3 + 0xd94) = 0;
  *(undefined4 *)(iVar3 + 0xd98) = 0;
  *(undefined4 *)(iVar3 + 0xd9c) = 0;
  *(undefined4 *)(iVar3 + 0xda0) = 0;
  *(undefined4 *)(iVar3 + 0xda4) = 0;
  *(undefined4 *)(iVar3 + 0xda8) = 0;
  *(undefined4 *)(iVar3 + 0xdac) = 0;
  *(undefined4 *)(iVar3 + 0xdb0) = 0;
  *(undefined4 *)(iVar3 + 0xdb4) = 0;
  *(undefined4 *)(iVar3 + 0xdb8) = 0;
  *(undefined4 *)(iVar3 + 0xdbc) = 0;
  *(undefined4 *)(iVar3 + 0xdc0) = 0;
  *(undefined4 *)(iVar3 + 0xdc4) = 0;
  *(undefined4 *)(iVar3 + 0xdc8) = 0;
  *(undefined4 *)(iVar3 + 0xdcc) = 0;
  *(undefined4 *)(iVar3 + 0xdd0) = 0;
  *(undefined4 *)(iVar3 + 0xdd4) = 0;
  *(undefined4 *)(iVar3 + 0xdd8) = 0;
  *(undefined4 *)(iVar3 + 0xddc) = 0;
  *(undefined4 *)(iVar3 + 0xde0) = 0;
  *(undefined4 *)(iVar3 + 0xde4) = 0;
  *(undefined4 *)(iVar3 + 0xde8) = 0;
  *(undefined4 *)(iVar3 + 0xdec) = 0;
  *(undefined4 *)(iVar3 + 0xdf0) = 0;
  *(undefined4 *)(iVar3 + 0xdf4) = 0;
  return 1;
}

