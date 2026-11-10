#include <stdint.h>

/* Conditional mode updates using the two display-state helpers. */
extern void emit_event_packet_when_active_mode_changes(uint32_t);
extern void build_event_header_and_fourteen_byte_scratch_area(void);

__attribute__((used, naked, section(".text.conditional_mode_updates_using_two_display_at_74a8"))) void
conditional_mode_updates_using_two_display_at_74a8(void) {
    __asm__ volatile("push {r2, r3, r4, lr}\n"
                     "mov r4, r0\n"
                     "movs r0, #29\n"
                     "tst r4, r0\n"
                     "beq .Lcheck_secondary_display\n"
                     "movs r0, #42\n"
                     "ldr r1, [pc, #104]\n"
                     "ldrb r0, [r1, r0]\n"
                     "bl emit_event_packet_when_active_mode_changes\n"
                     ".Lcheck_secondary_display: lsls r0, r4, #30\n"
                     "bpl .Ldone\n"
                     "movs r0, #42\n"
                     "ldr r1, [pc, #92]\n"
                     "ldrb r0, [r1, r0]\n"
                     "movs r1, #0\n"
                     "str r1, [sp, #0]\n"
                     "mov r2, r1\n"
                     "mov r3, r1\n"
                     "bl build_event_header_and_fourteen_byte_scratch_area\n"
                     ".Ldone: pop {r2, r3, r4, pc}\n");
}
