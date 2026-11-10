/* Recovered behavior:
 * Wait for and scale the shared timer value, clear the transition-state byte at offset 48, set
 * offset 44 to 0xff, and store the scaled result at shared-state word offset 15.
 */
#include <stdint.h>

extern uint32_t request_sensor_sample_then_scale_result(void);

enum {
    TRANSITION_STATE_MARKER_OFFSET = 0x2c,
    TRANSITION_STATE_FLAG_OFFSET = 0x30,
    SHARED_SCALED_RESULT_WORD_OFFSET = 0x3c,
};

__attribute__((used, section(".text.reset_transition_state_and_store_scaled_value"))) void
reset_transition_state_and_store_scaled_value(void) {
    (void)request_sensor_sample_then_scale_result();
    /* Reset transition flags and publish the scaled timer value. */
    __asm__ volatile(
        "movs r1, #%c[state_flag_offset]\n\t"
        "ldr r2, [pc, #352]\n\t"
        "movs r3, #0\n\t"
        "strb r3, [r2, r1]\n\t"
        "movs r1, #%c[marker_offset]\n\t"
        "movs r3, #255\n\t"
        "strb r3, [r2, r1]\n\t"
        "ldr r1, [pc, #500]\n\t"
        "str r0, [r1, #%c[result_word_offset]]"
        :
        : [state_flag_offset] "i"(TRANSITION_STATE_FLAG_OFFSET), [marker_offset] "i"(TRANSITION_STATE_MARKER_OFFSET),
          [result_word_offset] "i"(SHARED_SCALED_RESULT_WORD_OFFSET)
        : "r1", "r2", "r3", "memory");
}
