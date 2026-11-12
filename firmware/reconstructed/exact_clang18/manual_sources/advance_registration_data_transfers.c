/* Pump the predefined HID mouse and touch report sequences (0x07fca64c, ac6lto).
 * Both sequences share a phase counter in cycle_control_state; each branch re-arms its own one-tick timer and stops
 * queuing while four report completions are outstanding. Report index 0 is the mouse report (four bytes per step,
 * repeated step->repeat_count times), index 1 the touch report built from a fixed 7-byte template and a y table.
 * The historical name is kept as the V204 symbol. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_sdk_hogpd.h"
#include "firmware/reconstructed/include/sr08_sdk_app.h"
#include "firmware/reconstructed/include/sr08_radio_configuration.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"
#include "firmware/reconstructed/include/sr08_cycle_control_state.h"

struct hid_sequence_state {
    uint8_t reserved_00_to_23[0x24];
    uint32_t phase;
    uint32_t repeats;
};
struct mouse_sequence_step {
    uint8_t repeat_count;
    uint8_t report[4];
};
SR08_STATIC_ASSERT(offsetof(struct hid_sequence_state, phase) == 0x24, "HID phase at cycle-state+0x24");
SR08_STATIC_ASSERT(sizeof(struct mouse_sequence_step) == 5, "mouse sequence stride is five bytes");

/* The sequence state lives in cycle_control_state (+0x24 phase, +0x28 mouse repeats); the two report tables are
 * fixed V204 data (build_v204.py FIXED_DATA_SYMBOLS). */
extern struct sr08_cycle_control_state cycle_control_state;
#define hid_sequence_state (*(struct hid_sequence_state *)(void *)&cycle_control_state)
extern const struct mouse_sequence_step hid_mouse_sequence[4]; /* 0x07fcfb7a */
extern const uint8_t hid_touch_y_sequence[12][2]; /* 0x07fcfb8e */
extern void allocate_ble_data_record_and_send(uint32_t index, const uint8_t *data, uint32_t length);


/* The two sequences share a phase counter. Each branch schedules its own
 * continuation and stops queuing at four outstanding report completions.
 * Report index 0 is mouse data; index 1 is the descriptor's touch report.
 */
__attribute__((used,section(".text.advance_registration_data_transfers")))
void advance_registration_data_transfers(void)
{
    struct hogpd_env_tag *env = PRF_ENV_GET(HOGPD, hogpd);
    volatile uint8_t *flags = (volatile uint8_t *)&device_control_state;
    if (flags[0x20] == 1) {
        app_easy_timer(1, advance_registration_data_transfers);
        while (env->reports_in_flight <= 3) {
            uint8_t mode = flags[0x20];
            int running = mode != 0;
            /* No code: a second use keeps the `mode != 0` compare, so the loop exit is the false edge as in
             * V204 (it decides the order of this function's literal pool words). */
            __builtin_assume(running | ((uintptr_t)env != 1));
            if (!running)
                break;
            uint32_t phase = hid_sequence_state.phase;
            /* The 0.65 weight reproduces V204's register and block choices. */
            if (__builtin_expect_with_probability(!!((int32_t)phase >= 4), 1, 0.65)) {
                flags[0x20] = 0;
                hid_sequence_state.phase = 0;
                hid_sequence_state.repeats = 0;
                continue;
            }
            uint32_t repeats = hid_sequence_state.repeats + 1;
            hid_sequence_state.repeats = repeats;
            const struct mouse_sequence_step *step = &hid_mouse_sequence[phase];
            if ((int32_t)repeats >= step->repeat_count) {
                hid_sequence_state.phase = phase + 1;
                hid_sequence_state.repeats = 0;
                if ((int32_t)phase >= 3) {
                    flags[0x20] = 0;
                    hid_sequence_state.phase = 0;
                    hid_sequence_state.repeats = 0;
                }
            }
            if (sr08_shared_context.connection_state != 0)
                allocate_ble_data_record_and_send(0, step->report, 4);
        }
        if (ke_state_get(env->prf_env.prf_task & 0x7fff) == 0 && env->reports_in_flight >= 4)
            env->reports_in_flight = 0;
    }
    if (flags[0x21] == 1) {
        app_easy_timer(1, advance_registration_data_transfers);
        while (env->reports_in_flight <= 3 && flags[0x21] != 0) {
            uint8_t report[7] = {3,6,0x70,7,0,0,1};
            uint32_t phase = hid_sequence_state.phase;
            uint32_t next = phase + 1;
            hid_sequence_state.phase = next;
            report[4] = hid_touch_y_sequence[phase][0];
            report[5] = hid_touch_y_sequence[phase][1];
            if (next == 12) {
                flags[0x21] = 0;
                report[6] = 0;
                report[0] = 0;
                hid_sequence_state.phase = 0;
            }
            if (sr08_shared_context.connection_state != 0)
                allocate_ble_data_record_and_send(1, report, 7);
        }
        if (ke_state_get(env->prf_env.prf_task & 0x7fff) == 0 && env->reports_in_flight >= 4)
            env->reports_in_flight = 0;
    }
}
