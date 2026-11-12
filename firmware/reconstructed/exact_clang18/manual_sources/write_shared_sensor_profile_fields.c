/* Store the caller's three leading bytes, two 32-bit profile values, and final
 * byte at offsets 0, 1, 2, 4, 8, and 12 of the shared sensor-profile record.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_shared_sensor_profile.h"

void write_shared_sensor_profile_fields(uint8_t profile_byte_0, uint8_t profile_byte_1, uint8_t profile_byte_2,
                                        uint32_t profile_word_04, uint32_t profile_word_08,
                                        uint8_t profile_byte_0c) {
    shared_sensor_profile.profile_byte_0 = profile_byte_0;
    shared_sensor_profile.profile_byte_1 = profile_byte_1;
    shared_sensor_profile.profile_byte_2 = profile_byte_2;
    shared_sensor_profile.profile_word_08 = profile_word_08;
    shared_sensor_profile.profile_word_04 = profile_word_04;
    shared_sensor_profile.profile_byte_0c = profile_byte_0c;
}
