/* lld_sleep_us_2_lpcycles_rcx_func (Renesas DA145xx SDK, arch_system.c): convert microseconds to
 * RCX20 low-power cycles.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"

uint32_t lld_sleep_us_2_lpcycles_rcx_func(uint32_t us)
{
    uint32_t lpcycles = 0;

    lpcycles = (us * merged_globals_56d0.rcx_freq + 500000) / 1000000;
    return (lpcycles);
}
