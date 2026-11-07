#ifndef V204_ACCEL_H
#define V204_ACCEL_H

#include <stdbool.h>
#include <stdint.h>
#include "v204_core.h"

/* Initialize the V204 accelerometer bus and apply the recovered register
 * setup if the device reports the expected WHO_AM_I value. */
bool v204_motion_sensor_init(uint8_t *who_am_i, uint8_t *variant);

/* Read the six-byte output frame at register 0xA8 and decode its axes. */
bool v204_motion_sensor_read(v204_accel_t *sample);

#endif
