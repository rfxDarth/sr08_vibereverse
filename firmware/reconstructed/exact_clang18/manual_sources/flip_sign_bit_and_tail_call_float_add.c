/* C XOR veneer with the target's register-pinned high-bit mask. */
#include <stdint.h>

extern void add_v204_software_float_values(uint32_t, uint32_t);

__attribute__((used, section(".text.flip_sign_bit_and_tail_call_float_add"))) void
flip_sign_bit_and_tail_call_float_add(uint32_t first, uint32_t second) {
    /* Flip bit 31 of the second ABI argument before tail-calling the helper. */
    register uint32_t sign_bit_mask __asm__("r2") = 1;
    __asm__ volatile("lsls r2, r2, #31" : "+r"(sign_bit_mask));
    __asm__ volatile("eors r1, r2\n\tb add_v204_software_float_values" : : : "r1");
    __builtin_unreachable();
}
