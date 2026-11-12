/* Erase the per-weekday flash slots (one 0x2000-byte page at 0x2e000 and one
 * 0x3000-byte block at 0x4c000) of the day that contains the timestamp. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_flash_operation.h"

void translate_rom_result_to_display_coordinates(uint32_t timestamp)
{
    uint32_t weekday = timestamp / 86400 % 7;
    erase_flash_range_status(0x2e000 + weekday * 0x2000, 0x2000);
    erase_flash_range_status(0x4c000 + weekday * 0x3000, 0x3000);
}
