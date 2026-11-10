/* Translate the ROM conversion result into the two display coordinates. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_flash_operation.h"

__attribute__((used, section(".text.translate_rom_result_to_display_coordinates"))) void
translate_rom_result_to_display_coordinates(uint32_t value) {
    uint32_t converted;
    uint32_t converted_r1;
    uint32_t x;

    __asm__ volatile("ldr r1, [pc, #336]\n\t"
                     "bl __aeabi_uidiv\n\t"
                     "movs r1, #7\n\t"
                     "bl __aeabi_uidiv\n\t"
                     "mov %[converted], %[remainder]"
                     : "+r"(value), [converted] "=r"(converted), [remainder] "=r"(converted_r1)
                     :
                     : "r2", "r3", "lr", "cc", "memory");
    __asm__ volatile("lsls %[x], %[y], #13\n\t"
                     "movs %[y], #23\n\t"
                     "lsls %[y], %[y], #13\n\t"
                     "adds %[x], %[x], %[y]\n\t"
                     "movs %[y], #1\n\t"
                     "lsls %[y], %[y], #13"
                     : [x] "=r"(x), [y] "+r"(converted_r1)
                     :
                     : "cc");
    erase_flash_range(x, converted_r1);
    uint32_t erase_size;
    __asm__ volatile("movs r0, #3\n\t"
                     "lsls %[erase_size], r0, #12\n\t"
                     "muls %[converted], %[erase_size]\n\t"
                     "movs r0, #19\n\t"
                     "lsls r0, r0, #14\n\t"
                     "adds r0, %[converted], r0"
                     : "=r"(x), [erase_size] "=r"(erase_size)
                     : [converted] "r"(converted)
                     : "cc");
    erase_flash_range(x, erase_size);
}
