/* Recovered behavior:
 * Clear the shared state word, call the fixed ROM service, and clear bit 31 of the control
 * register.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"
#include "firmware/reconstructed/include/sr08_rom_services.h"
enum { SHARED_FLAGS_CLEAR_BIT_31_MASK = 0x7fffffff };
#define SHARED_RUNTIME_STATE ((uint32_t *)0x07fd76acu)
#define ROM_SERVICE_ID 0x000004e2u

void clear_shared_state_and_mmio_flag(void)

{
    *SHARED_RUNTIME_STATE = 0;
    rwip_wakeup_delay_set(ROM_SERVICE_ID);
    *SR08_SHARED_FLAGS_REGISTER = *SR08_SHARED_FLAGS_REGISTER & SHARED_FLAGS_CLEAR_BIT_31_MASK;
}
