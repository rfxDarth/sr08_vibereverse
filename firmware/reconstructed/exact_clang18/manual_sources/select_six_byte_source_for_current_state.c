/* Select the six-byte source from the current state, record the selection, and copy. */
#include <stddef.h>
#include <stdint.h>

struct six_byte_source_selection {
    uint8_t reserved[5];
    uint8_t use_device_address;
    uint8_t address[6];
};

_Static_assert(offsetof(struct six_byte_source_selection, use_device_address) == 5,
               "source-selection flag must remain at offset five");
_Static_assert(offsetof(struct six_byte_source_selection, address) == 6,
               "six-byte source address must remain at offset six");

__attribute__((used, naked, section(".text.select_six_byte_source_for_current_state"))) void
select_six_byte_source_for_current_state(struct six_byte_source_selection *selection) {
    __asm__ volatile("push {r4, lr}\n"
                     "mov r4, r0\n"
                     "ldr r0, [pc, #452]\n"
                     "ldrh r0, [r0, #40]\n"
                     "lsls r0, r0, #30\n"
                     "lsrs r0, r0, #30\n"
                     "cmp r0, #1\n"
                     "beq .Luse_static_address\n"
                     "movs r0, #0\n"
                     ".Luse_static_address: strb r0, [r4, #5]\n"
                     "cmp r0, #0\n"
                     "beq .Lcopy_static_address\n"
                     "bl gapm_get_bdaddr\n"
                     "mov r1, r0\n"
                     "movs r2, #6\n"
                     "adds r0, r4, #6\n"
                     ".Lcopy_address: bl __aeabi_memcpy\n"
                     "pop {r4, pc}\n"
                     ".Lcopy_static_address: movs r2, #6\n"
                     "ldr r1, [pc, #416]\n"
                     "adds r0, r4, #6\n"
                     "b .Lcopy_address\n");
}
