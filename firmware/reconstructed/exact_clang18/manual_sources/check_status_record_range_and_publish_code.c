/* Ignore inactive records. For active records, publish code five when the
 * candidate halfword is zero, publish seven at or above the exclusive limit,
 * or store an in-range candidate in shared state.
 */
#include <stddef.h>
#include <stdint.h>

struct sr08_status_range_record_prefix {
    uint8_t reserved_00_to_01[2];
    uint8_t status;
    uint8_t reserved_03;
    uint16_t candidate;
};

_Static_assert(offsetof(struct sr08_status_range_record_prefix, status) == 2,
               "status record flag must remain at offset two");
_Static_assert(offsetof(struct sr08_status_range_record_prefix, candidate) == 4,
               "status record candidate must remain at offset four");

extern void publish_transfer_status_code(uint32_t code);

__attribute__((used, section(".text.check_status_record_range_and_publish_code"))) uint32_t
check_status_record_range_and_publish_code(uint32_t unused_context __attribute__((unused)),
                                           const struct sr08_status_range_record_prefix *record) {
    /* The caller's record pointer arrives in r1; retain V204's small stack frame. */
    __asm__ volatile("push {r7, lr}" ::: "memory");
    if (record->status == 0)
        goto done;

    uint32_t candidate = record->candidate;
    if (candidate == 0)
        goto publish_five;

    register uint32_t exclusive_limit __asm__("r1");
    __asm__ volatile("ldr r1, [pc, #24]" : "=r"(exclusive_limit));
    /* Keep the comparison's operand order and branch edge byte-exact. */
    __asm__ goto("cmp r0, %[limit]\n\tbcc %l[store_value]" : : [limit] "r"(exclusive_limit) : "cc" : store_value);
    __asm__ goto("movs r0, #7\n\tb %l[publish]" ::: "cc" : publish);

publish_five:
    __asm__ volatile("movs r0, #5" ::: "cc");
publish:
    __asm__ volatile("bl publish_transfer_status_code" ::: "r0", "r1", "r2", "r3", "lr", "cc", "memory");
    __asm__ goto("b %l[done]" ::: : done);

store_value:
    __asm__ volatile("ldr r1, [pc, #176]\n\tstr r0, [r1, #24]" ::: "r1", "memory");
done:
    __asm__ volatile("movs r0, #0\n\tpop {r7, pc}" ::: "r0", "memory");
    __builtin_unreachable();
}
