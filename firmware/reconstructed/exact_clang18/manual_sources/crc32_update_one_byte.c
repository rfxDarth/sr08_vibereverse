/* Process one CRC-32 byte with eight reflected-polynomial rounds. */
#include <stdint.h>

#define CRC32_REFLECTED_POLYNOMIAL 0xedb88320u

uint32_t crc32_update_one_byte(uint32_t crc_state) {
    unsigned round;
    for (round = 0; round < 8; round++) {
        if (crc_state & 1)
            crc_state = (crc_state >> 1) ^ CRC32_REFLECTED_POLYNOMIAL;
        else
            crc_state >>= 1;
    }
    return crc_state;
}
