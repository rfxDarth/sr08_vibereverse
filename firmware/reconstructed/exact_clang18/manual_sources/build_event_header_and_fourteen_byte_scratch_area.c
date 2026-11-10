/* Build the six-byte event header and its fourteen-byte scratch area. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_mode_state.h"
#include "firmware/reconstructed/include/sr08_event_packet.h"

extern void search_queue_and_insert_limit_one(void *);

__attribute__((used, section(".text.build_event_header_and_fourteen_byte_scratch_area"))) void
build_event_header_and_fourteen_byte_scratch_area(uint32_t first, uint32_t second, uint32_t third, uint32_t fourth,
                                                  uint32_t fifth) {
    volatile struct sr08_event_packet packet;
    register uint32_t first_argument_copy __asm__("r7");
    register uint32_t second_argument_copy __asm__("r6");
    register uint32_t third_argument_copy __asm__("r5");
    register uint32_t first_parameter __asm__("r0") = first;
    register uint32_t second_parameter __asm__("r1") = second;
    register uint32_t third_parameter __asm__("r2") = third;
    volatile struct sr08_mode_state *state;

    __asm__ volatile("mov r5, r2\n\t"
                     "mov r6, r1\n\t"
                     "mov r7, r0"
                     : "=r"(first_argument_copy), "=r"(second_argument_copy), "=r"(third_argument_copy)
                     : "r"(first_parameter), "r"(second_parameter), "r"(third_parameter)
                     : "memory");
    __asm__ volatile("ldr %[state], [pc, #484]" : [state] "=r"(state));
    state->active_mode = (uint8_t)first_argument_copy;
    __aeabi_memclr((uint8_t *)packet.scratch, sizeof(packet.scratch));
    packet.payload.fields.fifth = (uint8_t)fifth;
    packet.payload.fields.fourth = (uint8_t)fourth;
    packet.payload.fields.third = (uint8_t)third_argument_copy;
    packet.payload.fields.second = (uint8_t)second_argument_copy;
    packet.payload.fields.first = (uint8_t)first_argument_copy;
    packet.header = 0x24;
    search_queue_and_insert_limit_one((void *)&packet);
}
