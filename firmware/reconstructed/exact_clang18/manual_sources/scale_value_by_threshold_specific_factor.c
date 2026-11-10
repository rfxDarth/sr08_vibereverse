/* Scale the value directly below 0x8000; use the ROM wide multiply above it. */
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"

struct sr08_scale_factor_record {
    uint32_t reserved_00_to_0f[4];
    uint32_t scale_factor;
};

_Static_assert(offsetof(struct sr08_scale_factor_record, scale_factor) == 16,
               "scale factor must remain at byte offset sixteen");

__attribute__((used, section(".text.scale_value_by_threshold_specific_factor"))) uint32_t
scale_value_by_threshold_specific_factor(uint32_t value) {
    asm goto volatile("lsrs r0, r0, #15\n\tbeq %l[small]" : : : "r0", "cc" : small);

    volatile struct sr08_scale_factor_record *wide_state;
    __asm__ volatile("ldr %[state], [pc, #48]" : [state] "=r"(wide_state));
    uint32_t scale = wide_state->scale_factor;
    uint64_t product = __aeabi_lmul(scale, value);
    return (uint32_t)(product >> 10);

small: {
    volatile struct sr08_scale_factor_record *narrow_state;
    __asm__ volatile("ldr %[state], [pc, #28]" : [state] "=r"(narrow_state));
    return (narrow_state->scale_factor * value) >> 10;
}
}
