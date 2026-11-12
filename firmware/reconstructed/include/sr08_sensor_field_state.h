#ifndef SR08_SENSOR_FIELD_STATE_H
#define SR08_SENSOR_FIELD_STATE_H

#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_static_assert.h"

/* Configuration at sensor_field_state + 0x20. The byte views are used by
 * the publisher; the wider views are used by the six-way action dispatcher.
 */
struct sr08_sensor_field_config {
    uint8_t enabled;
    uint8_t reserved_01;
    uint16_t value_02;
    union {
        uint32_t value_04;
        struct {
            uint8_t byte_24;
            uint8_t value_25;
            uint8_t value_26;
            uint8_t value_27;
        };
    };
    uint16_t value_08;
    union {
        uint16_t value_0a;
        struct {
            uint8_t value_2a;
            uint8_t byte_2b;
        };
    };
    union {
        uint16_t value_0c;
        struct {
            uint8_t value_2c;
            uint8_t byte_2d;
        };
    };
    union {
        uint8_t value_0e;
        uint8_t value_2e;
    };
    uint8_t reserved_0f;
    uint32_t value_10;
    uint32_t value_14;
    uint32_t value_18;
    uint8_t value_1c;
    uint8_t reserved_1d;
    uint16_t value_1e;
};

/* Arena at 0x07fd1ffc. apply_sensor_control_action clears forty bytes at
 * +0x40; display override accesses +0x58 and +0x60 in that same tail.
 */
struct sr08_sensor_field_state {
    uint8_t reserved_00_to_1f[0x20];
    struct sr08_sensor_field_config config;
    uint8_t reserved_40_to_67[0x28];
};
SR08_STATIC_ASSERT(sizeof(struct sr08_sensor_field_config) == 0x20, "sensor field configuration size");
SR08_STATIC_ASSERT(offsetof(struct sr08_sensor_field_config, value_25) == 5, "published byte at 0x25");
SR08_STATIC_ASSERT(offsetof(struct sr08_sensor_field_config, value_2a) == 10, "published byte at 0x2a");
SR08_STATIC_ASSERT(offsetof(struct sr08_sensor_field_state, config) == 0x20, "sensor field configuration offset");
SR08_STATIC_ASSERT(sizeof(struct sr08_sensor_field_state) == 0x68, "sensor field arena size");
extern struct sr08_sensor_field_state sensor_field_state;

#endif
