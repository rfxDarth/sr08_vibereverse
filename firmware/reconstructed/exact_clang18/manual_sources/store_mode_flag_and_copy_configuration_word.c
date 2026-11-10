/* Recovered behavior:
 * Set mode flag four, store the input byte at state offset 15, and copy a configuration word to
 * byte offset 24.
 */
#include <stddef.h>
#include <stdint.h>
extern void update_mode_flags_and_transitions(uint32_t);

struct sr08_mode_configuration_state {
    uint8_t reserved_prefix[15];
    uint8_t mode;
    uint8_t reserved_16_to_23[8];
    uint32_t configuration_word;
};

_Static_assert(offsetof(struct sr08_mode_configuration_state, mode) == 15, "mode byte must remain at byte fifteen");
_Static_assert(offsetof(struct sr08_mode_configuration_state, configuration_word) == 24,
               "configuration word must remain at byte twenty-four");

__attribute__((noinline, used, section(".text.store_mode_flag_and_copy_configuration_word"))) void
store_mode_flag_and_copy_configuration_word(uint8_t input) {
    volatile struct sr08_mode_configuration_state *state;
    const uint32_t *source;
    uint32_t value;
    update_mode_flags_and_transitions(4);
    __asm__ volatile("ldr %[state], [pc, #988]" : [state] "=r"(state) : : "memory");
    state->mode = input;
    __asm__ volatile("ldr %[source], [pc, #128]" : [source] "=r"(source) : : "memory");
    value = *source;
    state->configuration_word = value;
}
