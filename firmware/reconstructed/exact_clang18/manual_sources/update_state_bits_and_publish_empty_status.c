/* Vendor sleep blockers: set or clear bits in a mask and allow extended sleep
 * only while no bit is set. Unlike arch_set_extended_sleep/arch_disable_sleep,
 * this writes sleep_env and rwip_env directly. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_arch_sleep.h"

void update_state_bits_and_publish_empty_status(uint32_t release, uint32_t blockers)
{
    if (release)
        merged_globals_5650.sleep_block_mask &= ~blockers;
    else
        merged_globals_5650.sleep_block_mask |= blockers;
    uint32_t mask = merged_globals_5650.sleep_block_mask;
    sleep_env.slp_state = (sleep_state_t)(mask == 0);
    rwip_env.sleep_enable = (mask == 0);
}
