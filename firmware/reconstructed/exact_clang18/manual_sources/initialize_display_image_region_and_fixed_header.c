/* Erase both record flash regions and reset the shared context defaults. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_flash_operation.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"

void initialize_display_image_region_and_fixed_header(void)
{
    uint8_t *context = (uint8_t *)&sr08_shared_context;
    erase_flash_range_status(0x2e000, 0x10000);
    erase_flash_range_status(0x4c000, 0x15000);
    __aeabi_memclr(context, 0xd4);
    context[0x89] = 0xaa;
    context[0x8a] = 0x32;
    *(uint16_t *)&context[0x36] = 0x3e;
    sr08_shared_context.display_transition_flag = 0;
    sr08_shared_context.display_character = 0x32;
}
