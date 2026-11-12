#ifndef SR08_SENSOR_STATUS_RECORD_H
#define SR08_SENSOR_STATUS_RECORD_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stddef.h>
#include <stdint.h>

/* First RW object at 0x07fd0360 (see ../data/V204_ram_symbols.json). A
 * non-null context marks the record subsystem active. */
/* Context object at 0x07fd0b58, set up by initialize_shared_control_state_tables. */
struct sr08_sensor_status_word_pair {
    uint32_t first;
    uint32_t second;
};

enum {
    SR08_SENSOR_STATUS_HISTORY_LENGTH = 40,
    SR08_SENSOR_STATUS_SAMPLE_LENGTH = 120,
    SR08_SENSOR_STATUS_STATE_WORD_COUNT = 15,
};

struct sr08_sensor_status_context {
    uint8_t measurement_status;
    uint8_t default_level_a;
    uint8_t default_level_b;
    uint8_t reserved_03;
    uint16_t counter_04;
    uint16_t reserved_06;
    uint32_t current_value;
    uint32_t reserved_0c_to_13[2];
    uint32_t state_words_14[SR08_SENSOR_STATUS_STATE_WORD_COUNT];
    uint8_t flag_50;
    uint8_t reserved_51;
    uint16_t history_a[SR08_SENSOR_STATUS_HISTORY_LENGTH];
    uint16_t history_b[SR08_SENSOR_STATUS_HISTORY_LENGTH];
    uint16_t reserved_f2;
    struct sr08_sensor_status_word_pair history_pairs[SR08_SENSOR_STATUS_HISTORY_LENGTH];
    uint32_t samples[SR08_SENSOR_STATUS_SAMPLE_LENGTH];
    uint8_t ready_flag;
    uint8_t reserved_415_to_417[3];
    uint32_t packed_measurement_word; /* bits 10..25 hold the reported field */
    uint32_t reserved_41c;
    uint8_t systolic_estimate;
    uint8_t diastolic_estimate;
};

SR08_STATIC_ASSERT(offsetof(struct sr08_sensor_status_context, current_value) == 0x08, "current value at 0x08");
SR08_STATIC_ASSERT(offsetof(struct sr08_sensor_status_context, history_a) == 0x52, "history A at 0x52");
SR08_STATIC_ASSERT(offsetof(struct sr08_sensor_status_context, history_b) == 0xa2, "history B at 0xa2");
SR08_STATIC_ASSERT(offsetof(struct sr08_sensor_status_context, history_pairs) == 0xf4, "history pairs at 0xf4");
SR08_STATIC_ASSERT(offsetof(struct sr08_sensor_status_context, samples) == 0x234, "samples at 0x234");
SR08_STATIC_ASSERT(offsetof(struct sr08_sensor_status_context, ready_flag) == 0x414, "ready flag at 0x414");
SR08_STATIC_ASSERT(offsetof(struct sr08_sensor_status_context, packed_measurement_word) == 0x418,
                   "packed measurement word at 0x418");
SR08_STATIC_ASSERT(offsetof(struct sr08_sensor_status_context, systolic_estimate) == 0x420, "estimate at 0x420");

struct sr08_sensor_status_record {
    uint8_t state;
    uint8_t reserved_01[3];
    struct sr08_sensor_status_context *context;
};

extern struct sr08_sensor_status_record sensor_status_record;
extern struct sr08_sensor_status_context sensor_status_context;

#endif
