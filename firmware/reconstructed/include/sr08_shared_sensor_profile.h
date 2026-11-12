#ifndef SR08_SHARED_SENSOR_PROFILE_H
#define SR08_SHARED_SENSOR_PROFILE_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stddef.h>
#include <stdint.h>

/* Sensor profile record at 0x07fd039c (see ../data/V204_ram_symbols.json),
 * defined with sensor_frame_batch_state in V204's original translation unit. */
struct shared_sensor_profile {
    uint8_t profile_byte_0;
    uint8_t profile_byte_1;
    uint8_t profile_byte_2;
    uint8_t reserved_03;
    uint32_t profile_word_04;
    uint32_t profile_word_08;
    uint8_t profile_byte_0c;
};

SR08_STATIC_ASSERT(offsetof(struct shared_sensor_profile, profile_word_04) == 4, "profile word at offset 4");

extern struct shared_sensor_profile shared_sensor_profile;

#endif
