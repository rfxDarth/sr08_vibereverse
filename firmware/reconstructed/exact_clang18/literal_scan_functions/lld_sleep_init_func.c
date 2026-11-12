/* lld_sleep_init_func (Renesas DA145xx SDK, arch_system.c): clear the ROM sleep environment, set
 * the wake-up delay and enable external wake-up.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_rom_services.h"

#define BLE_DEEPSLCNTL_REG (*(volatile uint32_t *)0x40000030u)
#define BLE_EXTWKUPDSB (1u << 31)
#define SLEEP_DELAY_US 1250u /* set_sleep_delay() */

struct lld_sleep_env_tag {
    uint32_t irq_mask;
};
extern struct lld_sleep_env_tag lld_sleep_env;

void lld_sleep_init_func(void)
{
    lld_sleep_env.irq_mask = 0;
    rwip_wakeup_delay_set(SLEEP_DELAY_US);
    BLE_DEEPSLCNTL_REG &= ~BLE_EXTWKUPDSB;
}
