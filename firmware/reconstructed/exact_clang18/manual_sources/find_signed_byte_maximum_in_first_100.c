/* Return the signed-byte maximum of the first 100 entries. */
#include <stdint.h>

enum { SIGNED_BYTE_SCAN_LENGTH = 100 };

uint8_t find_signed_byte_maximum_in_first_100(const int8_t *bytes) {
    int32_t maximum = bytes[0];
    int32_t index;
    for (index = 0; index < SIGNED_BYTE_SCAN_LENGTH; ++index)
        if (bytes[index] > maximum)
            maximum = bytes[index];
    return (uint8_t)maximum;
}
