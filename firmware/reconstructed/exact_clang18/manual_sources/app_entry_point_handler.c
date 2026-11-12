/* Offer an event to each of the six registered service callbacks in turn.
 * The first callback that returns zero has handled it, and the byte it
 * wrote is the result. If none handles it, run the default service-event
 * dispatcher and return zero. */
#include <stdint.h>

typedef uint32_t (*sr08_service_event_callback)(uint32_t, uint32_t, uint32_t, uint32_t, uint8_t *result);

enum { SERVICE_EVENT_CALLBACK_COUNT = 6 };

extern const sr08_service_event_callback app_process_handlers[SERVICE_EVENT_CALLBACK_COUNT];
extern void user_catch_rest_hndl(uint32_t, uint32_t, uint32_t, uint32_t);

uint8_t app_entry_point_handler(uint32_t first, uint32_t second, uint32_t third,
                                                    uint32_t fourth) {
    uint8_t result;
    uint32_t index;
    for (index = 0; index < SERVICE_EVENT_CALLBACK_COUNT; ++index)
        if (app_process_handlers[index](first, second, third, fourth, &result) == 0)
            return result;
    user_catch_rest_hndl(first, second, third, fourth);
    return 0;
}
