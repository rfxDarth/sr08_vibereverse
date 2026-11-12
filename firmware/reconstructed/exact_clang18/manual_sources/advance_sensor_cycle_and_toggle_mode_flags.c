/* Advance the sensor-cycle counters, toggle the shared mode flag on alternating
 * cycles, and, while reporting is enabled, queue a 0x50 report record with the
 * seven report values, connection RSSI, a shared state byte and the low step count.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_mode_transition.h"
#include "firmware/reconstructed/include/sr08_sdk_llc.h"

#define CYCLE_REPORT_RECORD 0x50
#define MODE_FLAG_SET_TRANSITION 0x800u
#define MODE_FLAG_CLEAR_TRANSITION (1u << 27)

/* Prefix views of fixed RAM blocks (not C-allocated objects). Reuse their
 * canonical linker names: extra names for the same addresses make armlink's
 * shared-literal identity ambiguous. These views name only this routine's
 * established fields; other translation units use additional views.
 */
struct sensor_cycle_state {
    uint8_t reserved_00_to_0f[0x10];
    uint8_t mode_flag;
    uint8_t reserved_11_to_34[0x24];
    uint8_t cycle_active;
    uint8_t cycle_count;
    uint8_t cycle_limit;
};
/* Vendor fields of merged_globals_56d0 used here. */
struct sensor_cycle_counters {
    uint32_t cycle_counter;
    uint8_t reserved_04_to_2b[0x28];
    /* Also used as the SUOTA activation value; its report meaning is unknown. */
    uint32_t report_value;
};
/* Only report fields whose offsets are established by this routine are named. */
struct sensor_report_context {
    uint8_t reserved_00_to_37[0x38];
    uint32_t total_steps;
    uint8_t reserved_3c_to_c3[0x88];
    uint8_t enabled;
    uint8_t kind;
    uint16_t values[7];
};
extern struct sensor_cycle_state merged_globals_5650;
extern struct sensor_cycle_counters merged_globals_56d0;
extern struct sensor_report_context sr08_shared_context;
struct sensor_snapshot_record {
    uint16_t command;
    uint8_t kind;
    uint8_t words_le[14];
    int8_t rssi;
    uint8_t shared_value;
    uint8_t steps_low;
};
/* Annotations return the same address and emit no runtime operation. They
 * preserve V204's source/payload address expressions through optimization;
 * removing either lets armclang combine the halfword/byte addresses.
 * Keep byte offsets here: a typed array GEP lets the compiler fold the loads.
 */
#define REPORT_BYTE(offset) (((const uint8_t *)&sr08_shared_context)[offset])
#define REPORT_HALFWORD(offset)                                                                                        \
    (*(const uint16_t *)(const void *)((const uint8_t *)__builtin_annotation((uintptr_t)(&sr08_shared_context),        \
                                                                             "snapshot source") +                      \
                                       (offset)))

SR08_STATIC_ASSERT(offsetof(struct sensor_cycle_state, mode_flag) == 0x10, "mode flag offset");
SR08_STATIC_ASSERT(offsetof(struct sensor_cycle_state, cycle_active) == 0x35, "cycle control offset");
SR08_STATIC_ASSERT(offsetof(struct sensor_cycle_counters, report_value) == 0x2c, "report counter offset");
SR08_STATIC_ASSERT(offsetof(struct sensor_report_context, total_steps) == 0x38, "step counter offset");
SR08_STATIC_ASSERT(offsetof(struct sensor_report_context, enabled) == 0xc4, "report enable offset");
SR08_STATIC_ASSERT(offsetof(struct sensor_report_context, values) == 0xc6, "report values offset");
SR08_STATIC_ASSERT(sizeof(struct sensor_snapshot_record) == 20, "queue record length");
SR08_STATIC_ASSERT(offsetof(struct sensor_snapshot_record, words_le) == 3, "unaligned report values");
SR08_STATIC_ASSERT(offsetof(struct sensor_snapshot_record, rssi) == 17, "report RSSI offset");

extern void search_queue_and_insert_limit_twenty(const void *record);

__attribute__((used, section(".text.advance_sensor_cycle_and_toggle_mode_flags"))) void
advance_sensor_cycle_and_toggle_mode_flags(void) {
    struct sensor_cycle_state *state = &merged_globals_5650;
    struct sensor_cycle_counters *counters = &merged_globals_56d0;
    /* SDK ROM llc_env[0]. Capture before hooks, which may change the live link. */
    struct llc_env_tag *link = *(struct llc_env_tag **)0x07fd7918u;
    struct sensor_snapshot_record record;
    volatile struct sensor_snapshot_record *output = &record;
    volatile uint8_t *bytes = (volatile uint8_t *)&record;
    volatile uint8_t *payload = (volatile uint8_t *)__builtin_annotation((uintptr_t)(bytes + 3), "snapshot payload");
    uint8_t active = state->cycle_active;

    if (active == 1 && ++state->cycle_count >= state->cycle_limit)
        state->cycle_active = 0;
    counters->cycle_counter++;
    if (active == 1 && (counters->cycle_counter & 1)) {
        if (state->mode_flag == 0) {
            state->mode_flag = 1;
            update_mode_flags_and_transitions(MODE_FLAG_SET_TRANSITION);
        }
    } else if (state->mode_flag == 1) {
        state->mode_flag = 0;
        update_mode_flags_and_transitions(MODE_FLAG_CLEAR_TRANSITION);
    }
    if (REPORT_BYTE(0xc4) != 1)
        return;
    /* V204 stores all low bytes, then the kind, then all high bytes. */
    output->command = CYCLE_REPORT_RECORD;
    uint16_t value_0 = REPORT_HALFWORD(0xc6);
    payload[0] = value_0;
    uint16_t value_1 = REPORT_HALFWORD(0xc8);
    payload[2] = value_1;
    uint16_t value_2 = REPORT_HALFWORD(0xca);
    payload[4] = value_2;
    uint16_t value_3 = REPORT_HALFWORD(0xcc);
    payload[6] = value_3;
    uint16_t value_4 = REPORT_HALFWORD(0xce);
    payload[8] = value_4;
    uint16_t value_5 = REPORT_HALFWORD(0xd0);
    payload[10] = value_5;
    uint16_t value_6 = REPORT_HALFWORD(0xd2);
    payload[12] = value_6;
    bytes[2] = REPORT_BYTE(0xc5);
    payload[1] = value_0 >> 8;
    payload[3] = value_1 >> 8;
    payload[5] = value_2 >> 8;
    payload[7] = value_3 >> 8;
    payload[9] = value_4 >> 8;
    payload[11] = value_5 >> 8;
    payload[13] = value_6 >> 8;
    bytes[17] = link->rssi;
    bytes[18] = counters->report_value;
    bytes[19] = sr08_shared_context.total_steps;
    search_queue_and_insert_limit_twenty(&record);
}
