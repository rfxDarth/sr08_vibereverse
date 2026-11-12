/* Adapted from SDK rwble.c BLE_WAKEUP_LP_Handler/power_up and rwip.c.
 * Copyright (C) RivieraWaves 2009-2014
 * Copyright (C) 2017-2024 Modified by Renesas Electronics Corporation and/or its affiliates.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"
extern void initialize_peripheral_state_and_interrupts(void);
extern void ble_regs_pop(void);
/* Register offsets from SDK da14585_586.h. */
enum {
    CLK_AMBA_OFFSET=0x00, CLK_FREQ_TRIM_OFFSET=0x02,
    CLK_RADIO_OFFSET=0x08, CLK_CTRL_OFFSET=0x0a,
    PMU_CTRL_OFFSET=0x10, SYS_STAT_OFFSET=0x14,
    CLK_32K_OFFSET=0x20, CLK_16M_OFFSET=0x22,
};
#define SYS16(offset) (*(volatile uint16_t *)(0x50000000u+(offset)))
__attribute__((used,section(".text.BLE_WAKEUP_LP_Handler"))) void
BLE_WAKEUP_LP_Handler(void) {
    if ((SYS16(CLK_CTRL_OFFSET)&3u)!=0) {
        if ((SYS16(SYS_STAT_OFFSET)&4u)!=0) initialize_peripheral_state_and_interrupts();
        SYS16(CLK_32K_OFFSET)|=0x80;
        volatile uint16_t *cal=(volatile uint16_t *)0x50001600;
        cal[1]=255;
        cal[0]=4;
        SYS16(CLK_AMBA_OFFSET)|=0x30;
        SYS16(CLK_AMBA_OFFSET)|=3;
        for (;;) {
            uint32_t high=cal[3];
            uint32_t low=cal[2];
            if ((high<<16)+low>1000u) break;
        }
        cal[0]=5;
        /* Linked in the main LTO module, armlink takes this literal from 0x1f34's pool (0x07fc1fa4), as V204. */
        SYS16(CLK_FREQ_TRIM_OFFSET)=*(volatile uint16_t *)((uint8_t *)&merged_globals_5650+0x3a);
        SYS16(CLK_32K_OFFSET)&=(uint16_t)~0x80;
    }
    while ((*(volatile uint16_t *)0x50003308&4u)!=0) {}
    SYS16(CLK_AMBA_OFFSET)&=(uint16_t)~0x30;
    SYS16(CLK_AMBA_OFFSET)&=(uint16_t)~3;
    if ((SYS16(CLK_CTRL_OFFSET)&3u)!=0) {
        SYS16(CLK_CTRL_OFFSET)&=(uint16_t)~3;
        SYS16(CLK_16M_OFFSET)&=(uint16_t)~1;
    }
    SYS16(CLK_RADIO_OFFSET)|=0x80;
    SYS16(PMU_CTRL_OFFSET)&=(uint16_t)~4;
    while ((SYS16(SYS_STAT_OFFSET)&2u)==0) {}
    ble_regs_pop();
    *(volatile uint32_t *)0x40000208=*(volatile uint32_t *)((uint8_t *)&merged_globals_5650+0x54);
    volatile uint32_t *interrupts=(volatile uint32_t *)0x40000010;
    (void)*interrupts;
    while ((*interrupts&4u)==0) {}
}
