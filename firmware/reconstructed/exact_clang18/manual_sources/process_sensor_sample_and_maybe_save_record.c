/* Run one sensor sample step: process the reading and the record flag, count the sample,
 * advance the measurement phase counter (resetting the phase after more than one sample, or
 * three when the magnitude uses x and y only), mark whether the queued coordinate records are
 * all equal, queue the time event, and run the pending start/save check. A save check that
 * finds seven 1 events saves the received sensor reading to flash at 0x61000. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_cycle_control_state.h"
#include "firmware/reconstructed/include/sr08_event_record_queue.h"
#include "firmware/reconstructed/include/sr08_flash_operation.h"
#include "firmware/reconstructed/include/sr08_format.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_mode_transition.h"
#include "firmware/reconstructed/include/sr08_radio_configuration.h"
#include "firmware/reconstructed/include/sr08_ring_buffer.h"
#include "firmware/reconstructed/include/sr08_time_event_queue.h"

extern struct sr08_cycle_control_state cycle_control_state;
extern uint8_t sr08_shared_context[];
extern void process_sensor_reading_and_update_state(void);
extern void handle_record_flag_and_queue_sensor_configuration(void);
extern void copy_ring_buffer_entry_if_index_available(struct sr08_ring_buffer *queue, uint32_t index, void *destination);
extern int8_t scan_bounded_record_range_until_callback_at_87f4(void);
extern void save_valid_measurement_range_clear_stale_at_8500(void);

#define radio_state ((uint8_t *)&device_control_state)
#define cycle_words ((uint32_t *)(void *)&cycle_control_state)
#define context_words ((uint32_t *)(void *)sr08_shared_context)
#define mode_state ((uint8_t *)(void *)&merged_globals_5650)
#define time_words ((uint32_t *)(void *)&time_event_queue_state)

enum {
    SAMPLE_COUNT_WORD = 0x18 / 4,  /* cycle_control_state */
    PHASE = 0x03,                  /* device_control_state bytes */
    PHASE_1_COUNT = 0x04,
    PHASE_2_COUNT = 0x05,
    RECORDS_EQUAL = 0x07,
    PHASE_WORD = 0x54,
    EQUAL_RECORDS_NEEDED = 15,
    START_CHECK = 1,
    SAVE_CHECK = 2,
    SAVED_READING_STATUS_WORD = 0x3c / 4,  /* time_event_queue_state */
    SAVED_READING_WORD = 0x40 / 4,
    RECEIVED_READING_WORD = 0x48 / 4,
    SAVED_READING_BYTES = 20,
    SAVED_READING_FLASH = 0x61000,
    SAVED_READING_SECTOR = 0x1000,
    CONTEXT_SAMPLE_COUNT_WORD = 0x24 / 4,  /* sr08_shared_context */
    DISPLAY_MODE = 12,                     /* merged_globals_5650 */
};

void process_sensor_sample_and_maybe_save_record(void)
{
    uint8_t count;

    process_sensor_reading_and_update_state();
    handle_record_flag_and_queue_sensor_configuration();
    cycle_words[SAMPLE_COUNT_WORD]++;
    switch (radio_state[PHASE]) {
    case 1:
        count = ++radio_state[PHASE_1_COUNT];
        break;
    case 2:
        count = ++radio_state[PHASE_2_COUNT];
        break;
    default:
        goto phase_done;
    }
    if (count > (device_control_state.magnitude_axes < 0 ? 3 : 1)) {
        radio_state[PHASE] = 0;
        radio_state[PHASE_2_COUNT] = 0;
        radio_state[PHASE_1_COUNT] = 0;
        *(uint32_t *)(void *)(radio_state + PHASE_WORD) = 0;
    }
phase_done:;
    /* V204 clears next before first. */
    uint16_t first, next;
    next = 0;
    first = 0;
    struct sr08_ring_buffer *ring = &event_record_queue_state.coordinate_ring;
    uint32_t queued = (ring->head - ring->tail) & (ring->capacity - 1);
    if (queued >= EQUAL_RECORDS_NEEDED) {
        uint8_t equal;
        copy_ring_buffer_entry_if_index_available(ring, 0, &first);
        uint16_t first_value = first;
        for (uint32_t index = 1;; index++) {
            if (index == queued) {
                equal = 0xff;
                break;
            }
            copy_ring_buffer_entry_if_index_available(ring, index, &next);
            if (first_value != next) {
                equal = 0;
                break;
            }
        }
        radio_state[RECORDS_EQUAL] = equal;
    }
    uint8_t *check_state = (uint8_t *)&device_control_state.record_check.state;
    enqueue_ring_record_overwriting_oldest(&time_event_queue_state.ring,
                                           (const void *)&device_control_state.record_check.time_event);
    int8_t result;
    switch (*check_state) {
    case START_CHECK:
        result = scan_bounded_record_range_until_callback_at_87f4();
        arch_printf((const uint8_t *)"start check ret=%d\n", result);
        if (result == -1)
            goto clear;
        if (result == 1)
            update_mode_flags_and_transitions(1u << 14);
        break;
    case SAVE_CHECK:
        result = scan_bounded_record_range_until_callback_at_87f4();
        arch_printf((const uint8_t *)"save check ret=%d\n", result);
        if (result == 0)
            break;
        if (result == 1) {
            time_words[SAVED_READING_STATUS_WORD] = 1;
            time_words[SAVED_READING_WORD] = time_words[RECEIVED_READING_WORD];
            time_words[SAVED_READING_WORD + 1] = time_words[RECEIVED_READING_WORD + 1];
            erase_flash_range_status(SAVED_READING_FLASH, SAVED_READING_SECTOR);
            perform_flash_memory_operation((uint8_t *)&time_words[SAVED_READING_STATUS_WORD], SAVED_READING_FLASH,
                                           SAVED_READING_BYTES, SR08_FLASH_PROGRAM);
            save_valid_measurement_range_clear_stale_at_8500();
        }
    clear:
        *check_state = 0;
        break;
    }
    context_words[CONTEXT_SAMPLE_COUNT_WORD]++;
    if (mode_state[DISPLAY_MODE] == 32) {
        update_mode_flags_and_transitions(1u << 26);
        update_mode_flags_and_transitions(1u << 11);
    }
}
