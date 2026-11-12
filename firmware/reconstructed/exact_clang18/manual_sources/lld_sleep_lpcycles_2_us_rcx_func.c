/* lld_sleep_lpcycles_2_us_rcx_func (Renesas DA145xx SDK, arch_system.c): convert RCX20 low-power
 * cycles to microseconds.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"

uint32_t lld_sleep_lpcycles_2_us_rcx_func(uint32_t lpcycles)
{
    uint32_t us = 0;

    if (lpcycles >= 0x8000) {
        uint64_t res = (uint64_t)lpcycles * merged_globals_56d0.rcx_period;
        us = res >> 10;
    } else {
        us = (lpcycles * merged_globals_56d0.rcx_period) >> 10;
    }
    return (us);
}
