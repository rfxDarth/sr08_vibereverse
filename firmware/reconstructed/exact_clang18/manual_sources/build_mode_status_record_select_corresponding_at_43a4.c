/* Build the mode status record and select its corresponding halfword value. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_record_dispatch.h"

__attribute__((used, naked, section(".text.build_mode_status_record_select_corresponding_at_43a4"))) void
build_mode_status_record_select_corresponding_at_43a4(uint32_t mode __attribute__((unused))) {
    __asm__ volatile("push {r4, r5, r6, lr}\n"
                     "mov r5, r0\n"
                     /* Snapshot the current global word as a status record. */
                     "ldr r0, [pc, #64]\n"
                     "ldr r0, [r0, #0]\n"
                     "movs r1, #1\n"
                     "bl serialize_status_and_global_values_with_word\n"
                     /* Stop sensor calibration before changing the mode state. */
                     "movs r4, #0\n"
                     "mov r0, r4\n"
                     "bl start_or_stop_sensor_calibration\n"
                     /* Update the shared control words from fixed data. */
                     "movs r0, #152\n"
                     "ldr r1, [pc, #116]\n"
                     "ldr r2, [pc, #48]\n"
                     "strh r2, [r1, r0]\n"
                     "adds r1, #152\n"
                     "ldr r0, [pc, #112]\n"
                     "ldr r0, [r0, #44]\n"
                     "str r0, [r1, #4]\n"
                     /* Select the flash value for mode two, mode one, or default. */
                     "cmp r5, #2\n"
                     "beq .Lselect_mode_two_value\n"
                     "mov r6, r4\n"
                     "b .Lcheck_mode_one\n"
                     ".Lselect_mode_two_value: ldr r6, [pc, #32]\n"
                     ".Lcheck_mode_one: cmp r5, #1\n"
                     "bne .Lprogram_selected_mode_value\n"
                     "ldr r6, [pc, #28]\n"
                     /* Program the chosen value, publish it, and reset. */
                     ".Lprogram_selected_mode_value: bl stage_and_program_flash_region_3c000\n"
                     "ldr r0, [pc, #28]\n"
                     "strh r6, [r0, #0]\n"
                     "mov r0, r4\n"
                     "bl platform_reset\n"
                     "pop {r4, r5, r6, pc}\n");
}
