/* Serialize the active measurement into a 16-byte record: mode, value, and
 * two status bytes. Modes three and four also carry two extra bytes. */
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_sensor_frame_batch_state.h"
#include "firmware/reconstructed/include/sr08_static_assert.h"

struct sr08_serialized_measurement {
    uint8_t mode;
    uint8_t reserved_01_to_03[3];
    uint32_t value;
    uint8_t extra[2];
    uint8_t status[2];
    uint32_t reserved_0c;
};

SR08_STATIC_ASSERT(sizeof(struct sr08_serialized_measurement) == 16, "serialized measurement is 16 bytes");

void serialize_measurement_record_by_mode(struct sr08_serialized_measurement *output) {
    struct sr08_sensor_frame_batch_state *state = &sensor_frame_batch_state;
    struct sr08_serialized_measurement record = {0};
    struct sr08_measurement_context *context = state->context;
    uint8_t mode = context->mode;
    record.mode = mode;
    record.value = context->value;
    record.status[0] = context->status_byte_c95;
    record.status[1] = context->status_byte_ca0;
    if (mode == 3 || mode == 4) {
        record.extra[0] = context->extra_byte_008;
        record.extra[1] = context->extra_byte_c88;
    } else {
        record.extra[0] = 0;
        record.extra[1] = 0;
    }
    *output = record;
}
