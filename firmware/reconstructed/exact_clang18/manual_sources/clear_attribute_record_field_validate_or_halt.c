#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_attmdb.h"

struct attribute_validation_request {
    uint8_t reserved[16];
    uint8_t *data;
};

struct attribute_validation_data {
    uint8_t reserved_prefix[6];
    uint16_t handle;
    uint8_t reserved_middle[2];
    uint16_t field_to_clear;
};

_Static_assert(offsetof(struct attribute_validation_request, data) == 16,
               "attribute validation data pointer must remain at offset sixteen");
_Static_assert(offsetof(struct attribute_validation_data, handle) == 6, "attribute handle must remain at offset six");
_Static_assert(offsetof(struct attribute_validation_data, field_to_clear) == 10,
               "field cleared by validation must remain at offset ten");

/* r0 points to a descriptor whose data pointer is at +16. Clear data+10,
 * submit the handle at data+6 plus 12 with a one-byte zero, and halt if the
 * attribute update fails. Failure codes 200 and 8 go to two MMIO registers. */
__attribute__((used, section(".text.clear_attribute_record_field_validate_or_halt"))) void
clear_attribute_record_field_validate_or_halt(struct attribute_validation_request *request) {
    /* Push four words to align the call; the zero argument reuses a saved byte. */
    __asm__ volatile("push {r5, r6, r7, lr}");
    struct attribute_validation_data *data = (struct attribute_validation_data *)request->data;
    data->field_to_clear = 0;

    const uint8_t *zero_value;
    __asm__ volatile("add %[zero_value], sp, #4\n"
                     "strb %[zero], [%[zero_value]]"
                     : [zero_value] "=r"(zero_value)
                     : [zero] "r"(0)
                     : "memory");

    uint32_t handle = (uint16_t)(data->handle + 12);
    int32_t result = attmdb_att_set_value(handle, 1, 0, zero_value);
    if (result == 0)
        goto validation_success;
    /* These PC-relative loads address the two fixed MMIO pointer literals. */
    __asm__ volatile("ldr r0, [pc, #12]\n"
                     "movs r1, #200\n"
                     "strh r1, [r0, #0]\n"
                     "ldr r0, [pc, #12]\n"
                     "movs r1, #8\n"
                     "strh r1, [r0, #0]\n"
                     ".Lvalidation_halt:\n"
                     "b .Lvalidation_halt"
                     :
                     :
                     : "r0", "r1", "memory");
    __builtin_unreachable();

validation_success:
    __asm__ volatile("pop {r2, r3, r7, pc}");
    __builtin_unreachable();
}
