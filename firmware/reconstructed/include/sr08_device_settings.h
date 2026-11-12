/* V204's device-settings record at 0x07fd05ae (vendor code; its other fields
 * are not identified yet). The connection-parameter fields are named from
 * their use: V204's param-update request (0x07fc2dc4) sends them, requires
 * slave_latency 0, and the GAPC_UPDATE_PARAMS rejection path in
 * gapc_cmp_evt_handler() lengthens both intervals.
 */
#ifndef SR08_DEVICE_SETTINGS_H
#define SR08_DEVICE_SETTINGS_H

#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_static_assert.h"

struct sr08_device_settings {
    uint8_t reserved_00[0x0a];
    uint16_t conn_intv_min;  /* 1.25 ms units */
    uint16_t conn_intv_max;  /* 1.25 ms units */
    uint16_t slave_latency;
};

SR08_STATIC_ASSERT(offsetof(struct sr08_device_settings, conn_intv_min) == 0x0a,
                   "conn_intv_min must remain at 0x07fd05b8");

extern struct sr08_device_settings device_settings;

#endif
