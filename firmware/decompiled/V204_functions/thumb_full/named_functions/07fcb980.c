/* Ghidra 12.1.4, Thumb-context analysis; V204 payload SHA-256: 5020c236a289544d878196bec3e21b005835237bc2fc34935927533bcd1c8570. Not original source. */


void FUN_07fcb980(void)

{
  undefined4 *puVar1;
  uint uVar2;
  uint uVar3;
  
  puVar1 = DAT_07fcba6c;
  while (uVar3 = puVar1[-2], uVar3 != 0) {
    if ((int)(uVar3 << 0x18) < 0) {
      *puVar1 = 0x80;
      ROM_ea_finetimer_isr /* 0x07f0cd46 */();
      FUN_07fc566c();
    }
    if ((int)(uVar3 << 0x1e) < 0) {
      *puVar1 = 2;
      ROM_lld_evt_rx_isr /* 0x07f08cd2 */();
    }
    if ((int)(uVar3 << 0x1c) < 0) {
      *puVar1 = 8;
      ROM_lld_evt_end_isr /* 0x07f08c52 */(0);
      *(undefined1 *)(DAT_07fcbbbc + 3) = 4;
    }
    if ((uVar3 & 0x100) != 0) {
      *puVar1 = 0x100;
      ROM_lld_evt_end_isr /* 0x07f08c52 */(1);
    }
    if ((uVar3 & 0x200) != 0) {
      *puVar1 = 0x200;
      ROM_ea_sw_isr /* 0x07f0ce18 */();
    }
    if ((int)(uVar3 << 0x19) < 0) {
      *puVar1 = 0x40;
      ROM_lld_evt_timer_isr /* 0x07f08c48 */();
    }
    if ((int)(uVar3 << 0x1b) < 0) {
      *puVar1 = 0x10;
      ROM_lld_crypt_isr /* 0x07f074be */();
    }
    if ((int)(uVar3 << 0x1d) < 0) {
      *puVar1 = 4;
      *DAT_07fcba70 = *DAT_07fcba70 & 0xfffe;
      ROM_rwip_wakeup /* 0x07f1c4a0 */();
      ROM_rf_reinit /* 0x07f026b8 */();
      FUN_07fc566c();
      *(undefined1 *)(DAT_07fcbbbc + 3) = 0;
      if (((int)((uint)*DAT_07fcba74 << 0x16) < 0) && (*(char *)(DAT_07fcbbbc + 4) == '\0')) {
        *(undefined1 *)(DAT_07fcbbbc + 4) = 1;
        if ((*DAT_07fcba78 & 1) == 0) {
          uVar2 = FUN_07fc1ff4();
          if (0x22c < uVar2) {
            *(undefined1 *)(DAT_07fcbbbc + 4) = 2;
          }
        }
      }
    }
    if ((uVar3 & 1) != 0) {
      *puVar1 = 1;
      ROM_rwip_wakeup_end /* 0x07f1c4d8 */();
      ROM_ea_finetimer_isr /* 0x07f0cd46 */();
      *(undefined1 *)(DAT_07fcbbbc + 3) = 1;
    }
    if ((int)(uVar3 << 0x1a) < 0) {
      *puVar1 = 0x20;
    }
  }
  return;
}

