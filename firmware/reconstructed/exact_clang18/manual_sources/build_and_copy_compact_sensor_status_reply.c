/* Build and copy the compact sensor-status reply for either record state.
 *
 * Compiled with ARM Compiler 5 (see ARM_COMPILER_GROUPS in build_v204.py).
 */
#include <stdint.h>
#include <string.h>
#include "firmware/reconstructed/include/sr08_sensor_status_record.h"

enum { SENSOR_RECORD_STATE_MEASURING = 2 };

struct compact_sensor_status_reply {
    uint8_t state;
    uint32_t current_value;
    uint8_t measurement_status;
    uint16_t measurement_field;
    uint8_t reserved[8];
};


void build_and_copy_compact_sensor_status_reply(void *output) {
    struct compact_sensor_status_reply reply;
    struct sr08_sensor_status_context *context;

    memset(&reply, 0, sizeof reply);
    reply.state = sensor_status_record.state;
    context = sensor_status_record.context;
    reply.current_value = context->current_value;
    if (reply.state == SENSOR_RECORD_STATE_MEASURING) {
        reply.measurement_status = context->measurement_status;
        reply.measurement_field = (uint16_t)((context->packed_measurement_word << 6) >> 16);
    } else {
        reply.measurement_status = 0;
        reply.measurement_field = 0;
    }
    memcpy(output, &reply, sizeof reply);
}
