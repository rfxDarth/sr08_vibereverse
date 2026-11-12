/* Store a timer callback in the first free of the ten application timer
 * slots and start that timer for `delay` ticks. Returns the one-based slot
 * number, or zero when every slot is in use. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"

enum { APPLICATION_TIMER_SLOT_COUNT = 10 };

typedef void (*sr08_application_timer_callback)(void);

extern void create_timer(uint8_t timer_index, uint32_t delay);

uint8_t app_easy_timer(uint32_t delay, sr08_application_timer_callback callback) {
    uint32_t slot_number = 0;
    sr08_application_timer_callback *slot = merged_globals_57b8.timer_callbacks;
    uint32_t index;
    for (index = 0; index != APPLICATION_TIMER_SLOT_COUNT; ++index, ++slot) {
        if (*slot == 0) {
            *slot = callback;
            slot_number = index + 1;
            create_timer((uint8_t)slot_number, delay);
            break;
        }
    }
    return (uint8_t)slot_number;
}
