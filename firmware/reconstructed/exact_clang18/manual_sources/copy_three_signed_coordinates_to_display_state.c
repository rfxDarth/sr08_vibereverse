/* Publish coordinates and enqueue the negated heading record. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_shared_context.h"
#include "firmware/reconstructed/include/sr08_display_state.h"
#include "firmware/reconstructed/include/sr08_event_record_queue.h"
__attribute__((used, section(".text.copy_three_signed_coordinates_to_display_state"))) void
copy_three_signed_coordinates_to_display_state(volatile uint16_t *x,
        volatile uint16_t *y, volatile int16_t *angle) {
    *angle = (int16_t)-*angle;
    volatile struct sr08_display_coordinate_state *state =
        (volatile struct sr08_display_coordinate_state *)&sr08_shared_context;
    state->x_coordinate = (int16_t)*x;
    state->y_coordinate = (int16_t)*y;
    state->heading_angle = *angle;
    enqueue_ring_record_overwriting_oldest(&event_record_queue_state.coordinate_ring,
                                           (const void *)angle);
}
