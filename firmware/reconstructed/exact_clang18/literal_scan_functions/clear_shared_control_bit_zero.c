/* Recovered behavior:
 * Clear bit zero in the shared control register at 0x50001104.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"

void clear_shared_control_bit_zero(void)

{
    *SR08_SHARED_CONTROL_REGISTER_50001104 &= SR08_16BIT_CLEAR_BIT_0_MASK;
}
