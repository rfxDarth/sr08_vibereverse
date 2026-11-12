/* Recovered behavior:
 * Set bit 15, clear bits zero and one, and preserve bits 2 through 14 in the control word.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"
#define CONTROL_PRESERVED_BITS 0x7ffcu

void platform_reset_func(void)

{
    *SR08_SYSTEM_CONTROL_REGISTER_50000012 =
        (*SR08_SYSTEM_CONTROL_REGISTER_50000012 & CONTROL_PRESERVED_BITS) | SR08_BIT_15_MASK;
}
