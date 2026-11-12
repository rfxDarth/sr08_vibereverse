/* Copy record offsets7 through2, highest offset first. The record alias
 * names bytes at v204_auto_07fc00a0 +0x70 and allocates no new storage. */
#include <stdint.h>
void copy_six_profile_bytes_from_offsets_two_to_seven(uint8_t *destination)
{
    extern const volatile uint8_t v204_profile_record[8];
    const volatile uint8_t *profile_bytes = v204_profile_record;
    uint32_t source_offset = 7;
    while (source_offset != 1) {
        *destination = profile_bytes[source_offset];
        ++destination;
        source_offset--;
    }
}
