/* Recovered behavior:
 * Set bits zero through two in the selected shared flags word.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"

void set_shared_flags_0x07(void)

{
    *SR08_SHARED_FLAGS_REGISTER |= 7;
}
