/* Copy three signed-coordinate values into the display state and notify it. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_state.h"
#include "firmware/reconstructed/include/sr08_coordinate_queue.h"

__attribute__((used, section(".text.copy_three_signed_coordinates_to_display_state"))) void
copy_three_signed_coordinates_to_display_state(volatile uint16_t *x, volatile uint16_t *y, volatile int16_t *angle) {
    *angle = (int16_t) - *angle;
    /* Store x, y, and the negated heading at display-state offsets 0xce–0xd3. */
    __asm__ volatile("ldrh r0, [%[x], #0]\n\t"
                     "movs r3, #206\n\t"
                     "ldr r4, [pc, #24]\n\t"
                     "strh r0, [r4, r3]\n\t"
                     "ldrh r0, [%[y], #0]\n\t"
                     "movs r1, #208\n\t"
                     "strh r0, [r4, r1]\n\t"
                     "ldrh r0, [%[angle], #0]\n\t"
                     "movs r1, #210\n\t"
                     "strh r0, [r4, r1]"
                     : [x] "+r"(x), [y] "+r"(y)
                     : [angle] "r"(angle)
                     : "r3", "r4", "cc", "memory");
    struct sr08_coordinate_queue_state *record_state;
    __asm__ volatile("ldr %[state], [pc, #12]" : [state] "=r"(record_state));
    enqueue_ring_record_overwriting_oldest(&record_state->queue, (const void *)angle);
}
