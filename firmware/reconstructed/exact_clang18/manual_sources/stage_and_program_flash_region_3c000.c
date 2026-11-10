/* Stage and program the flash image beginning at address 0x3c000. */
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_flash_operation.h"

struct sr08_flash_staging_area {
    uint32_t reserved_prefix[12];
    uint32_t program_words[0x70 / sizeof(uint32_t)];
};

_Static_assert(offsetof(struct sr08_flash_staging_area, program_words) == 48,
               "flash program buffer must begin at byte 48");
_Static_assert(sizeof(((struct sr08_flash_staging_area *)0)->program_words) == 0x70,
               "flash program buffer must remain 0x70 bytes");

__attribute__((noinline, used, section(".text.stage_and_program_flash_region_3c000"))) void
stage_and_program_flash_region_3c000(void) {
    volatile uint32_t *source;
    volatile struct sr08_flash_staging_area *staging;
    uint32_t value;

    __asm__ volatile("ldr %[source], [pc, #36]" : [source] "=r"(source) : : "memory");
    value = *source;
    __asm__ volatile("ldr %[staging], [pc, #748]" : [staging] "=r"(staging) : : "memory");
    staging->program_words[0] = value;

    erase_flash_range(0x3c000, 0x2000);
    perform_flash_memory_operation((uint8_t *)staging->program_words, 0x3c000, sizeof(staging->program_words),
                                   SR08_FLASH_PROGRAM);
}
