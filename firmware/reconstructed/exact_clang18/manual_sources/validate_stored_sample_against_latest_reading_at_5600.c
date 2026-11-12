/* Read slot SLOT of the weekday flash area for TIMESTAMP into SAMPLE (36 bytes).
 * Clear it and return -1 when it is erased or more than a day and a minute
 * away from TIMESTAMP; otherwise return 0. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_flash_operation.h"

enum { SECONDS_PER_DAY = 86400, WEEKDAY_SAMPLE_SIZE = 36 };

int8_t validate_stored_sample_against_latest_reading_at_5600(uint32_t timestamp, uint32_t slot, uint32_t *sample)
{
    uint32_t weekday = timestamp / SECONDS_PER_DAY % 7;
    int8_t result = 0;
    perform_flash_memory_operation((uint8_t *)sample, slot * WEEKDAY_SAMPLE_SIZE + weekday * 0x2000 + 0x2e000,
                                   WEEKDAY_SAMPLE_SIZE, SR08_FLASH_READ);
    uint32_t stored = sample[0];
    uint32_t difference = timestamp - stored;
    if (timestamp < stored)
        difference = stored - timestamp;
    if ((stored == 0xffffffff) | (difference >= SECONDS_PER_DAY + 61)) {
        __aeabi_memclr(sample, WEEKDAY_SAMPLE_SIZE);
        result = -1;
    }
    return result;
}
