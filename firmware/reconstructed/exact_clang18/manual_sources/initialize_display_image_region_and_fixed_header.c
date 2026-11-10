/* Initialize the display's image region and fixed event header fields. */
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_flash_operation.h"

enum {
    DISPLAY_IMAGE_FIRST_ERASE_ADDRESS = 0x2e000,
    DISPLAY_IMAGE_FIRST_ERASE_SIZE = 0x10000,
    DISPLAY_IMAGE_SECOND_ERASE_ADDRESS = 0x4c000,
    DISPLAY_IMAGE_SECOND_ERASE_SIZE = 0x15000,
    DISPLAY_IMAGE_MODE_OFFSET = 0x8a,
    DISPLAY_IMAGE_EVENT_HEADER = 0x3e,
    DISPLAY_IMAGE_REGION_VALUE = 0x3200,
};

struct sr08_display_image_state {
    uint8_t reserved_prefix[0x36];
    uint16_t event_header;
    uint8_t reserved_38_to_88[0x89 - 0x38];
    uint8_t marker;
    uint8_t mode;
    uint8_t reserved_8b_to_93[0x94 - 0x8b];
    uint16_t image_region;
    uint8_t reserved_tail[0xd4 - 0x96];
};

_Static_assert(offsetof(struct sr08_display_image_state, event_header) == 0x36,
               "display event header must remain at byte 0x36");
_Static_assert(offsetof(struct sr08_display_image_state, marker) == 0x89, "display marker must remain at byte 0x89");
_Static_assert(offsetof(struct sr08_display_image_state, mode) == 0x8a, "display mode must remain at byte 0x8a");
_Static_assert(offsetof(struct sr08_display_image_state, image_region) == 0x94,
               "display image region must remain at byte 0x94");
_Static_assert(sizeof(struct sr08_display_image_state) == 0xd4, "display image state must remain 0xd4 bytes");

__attribute__((used, section(".text.initialize_display_image_region_and_fixed_header"))) void
initialize_display_image_region_and_fixed_header(void) {
    volatile struct sr08_display_image_state *state;

    erase_flash_range(DISPLAY_IMAGE_FIRST_ERASE_ADDRESS, DISPLAY_IMAGE_FIRST_ERASE_SIZE);
    erase_flash_range(DISPLAY_IMAGE_SECOND_ERASE_ADDRESS, DISPLAY_IMAGE_SECOND_ERASE_SIZE);
    __asm__ volatile("ldr %[state], [pc, #408]" : [state] "=r"(state));
    __aeabi_memclr((uint8_t *)state, sizeof(*state));
    __asm__ volatile("movs r0, #%c[mode_offset]\n\t"
                     "movs r1, #50\n\t"
                     "strb r1, [%[state], r0]"
                     :
                     : [state] "r"(state), [mode_offset] "i"(DISPLAY_IMAGE_MODE_OFFSET)
                     : "r0", "r1", "memory");
    state->marker = 0xaa;
    state->image_region = DISPLAY_IMAGE_REGION_VALUE;
    state->event_header = DISPLAY_IMAGE_EVENT_HEADER;
}
