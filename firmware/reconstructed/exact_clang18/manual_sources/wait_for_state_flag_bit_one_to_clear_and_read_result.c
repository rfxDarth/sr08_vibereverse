/* Recovered behavior:
 * Set state bit one, wait for it to clear, clear the halfword at state offset eight, and return
 * the halfword at offset ten.
 */
#include <stddef.h>
#include <stdint.h>

struct sr08_state_flag_wait_block {
    uint16_t flags;
    uint16_t reserved[3];
    uint16_t cleared_value;
    uint16_t result;
};

_Static_assert(offsetof(struct sr08_state_flag_wait_block, cleared_value) == 8,
               "wait-state clear field must remain at byte eight");
_Static_assert(offsetof(struct sr08_state_flag_wait_block, result) == 10, "wait-state result must remain at byte ten");

__attribute__((used, section(".text.wait_for_state_flag_bit_one_to_clear_and_read_result"))) uint16_t
wait_for_state_flag_bit_one_to_clear_and_read_result(void) {
    volatile struct sr08_state_flag_wait_block *state;
    __asm__ volatile("ldr %[state], [pc, #208]" : [state] "=r"(state));
    state->flags |= 2;
    uint32_t count;
    __asm__ volatile("ldr %[count], [pc, #20]" : [count] "=r"(count));
    do {
        uint32_t next;
        if (__builtin_add_overflow(count, 1u, &next))
            break;
        count = next;
    } while ((state->flags & 2) != 0);
    state->cleared_value = 0;
    return state->result;
}
