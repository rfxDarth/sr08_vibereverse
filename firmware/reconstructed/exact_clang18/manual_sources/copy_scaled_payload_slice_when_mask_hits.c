/* Apply V204's masked range gate, then copy the selected scaled record slice. */
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"

struct sr08_scaled_payload_descriptor {
    uint32_t range_value;
    uint32_t range_origin;
    uint32_t selection_mask;
    uint32_t copy_length;
    uintptr_t payload_base;
};

_Static_assert(offsetof(struct sr08_scaled_payload_descriptor, range_value) == 0,
               "scaled payload range value must remain at offset zero");
_Static_assert(offsetof(struct sr08_scaled_payload_descriptor, range_origin) == 4,
               "scaled payload range origin must remain at offset four");
_Static_assert(offsetof(struct sr08_scaled_payload_descriptor, selection_mask) == 8,
               "scaled payload mask must remain at offset eight");
_Static_assert(offsetof(struct sr08_scaled_payload_descriptor, copy_length) == 12,
               "scaled payload length must remain at offset twelve");
_Static_assert(offsetof(struct sr08_scaled_payload_descriptor, payload_base) == 16,
               "scaled payload base must remain at offset sixteen");
_Static_assert(sizeof(struct sr08_scaled_payload_descriptor) == 20,
               "scaled payload descriptor fields must remain five words");

__attribute__((used, section(".text.copy_scaled_payload_slice_when_mask_hits"))) uint32_t
copy_scaled_payload_slice_when_mask_hits(const struct sr08_scaled_payload_descriptor *descriptor, void *output) {
    register const struct sr08_scaled_payload_descriptor *record __asm__("r0") = descriptor;
    register uint32_t range_delta __asm__("r2");
    register uint32_t element_scale __asm__("r3");
    register uint32_t range_mask __asm__("r5");
    register uint32_t copy_status __asm__("r4");

    /* Load the range operands and preserve the descriptor base in r0. */
    __asm__ volatile("ldmia r0!, {r2, r3, r5}\n\t"
                     "subs r2, r2, r3\n\t"
                     "movs r4, #0\n\t"
                     "subs r5, r5, #1\n\t"
                     "subs r0, #12"
                     : "+r"(record), "=r"(range_delta), "=r"(element_scale), "=r"(range_mask), "=r"(copy_status)
                     :
                     : "memory", "cc");

    /* A clear masked delta is V204's not-selected result (-1). */
    if ((range_mask & range_delta) == 0) {
        copy_status = ~copy_status;
    } else {
        uint32_t bytes_to_copy = record->copy_length;
        uintptr_t payload_base = record->payload_base;
        /* The selected source is payload_base + range_delta * element_scale. */
        __asm__ volatile("muls r3, r2\n\t"
                         "adds r3, %[base], r3"
                         : "+r"(element_scale)
                         : [base] "r"(payload_base), "r"(bytes_to_copy)
                         : "cc");
        __aeabi_memcpy(output, (const void *)(uintptr_t)element_scale, bytes_to_copy);
    }
    return copy_status;
}
