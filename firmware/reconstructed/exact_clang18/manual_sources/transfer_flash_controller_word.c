/* Transfer one value through the flash controller's 16-bit MMIO registers.
 * The controller block begins at 0x50001200. Offsets 0, 2, 4, 6, and 8 are
 * status, low data, high data, transfer trigger, and control.
 */
#include <stddef.h>
#include <stdint.h>

struct sr08_flash_controller_registers {
    uint16_t status;
    uint16_t data_low;
    uint16_t data_high;
    uint16_t transfer_trigger;
    uint16_t control;
};

_Static_assert(offsetof(struct sr08_flash_controller_registers, data_low) == 2,
               "flash data-low register must remain at offset two");
_Static_assert(offsetof(struct sr08_flash_controller_registers, data_high) == 4,
               "flash data-high register must remain at offset four");
_Static_assert(offsetof(struct sr08_flash_controller_registers, transfer_trigger) == 6,
               "flash trigger register must remain at offset six");
_Static_assert(offsetof(struct sr08_flash_controller_registers, control) == 8,
               "flash control register must remain at offset eight");
_Static_assert(sizeof(struct sr08_flash_controller_registers) == 10,
               "flash controller register prefix must remain five halfwords");

__attribute__((used, section(".text.transfer_flash_controller_word"))) uint32_t
transfer_flash_controller_word(uint32_t value) {
    register volatile struct sr08_flash_controller_registers *controller __asm__("r1");
    /* Reuse the shared controller-address literal at the original PC offset. */
    __asm__ volatile("ldr r1, [pc, #240]" : "=r"(controller));
    register uint32_t trigger __asm__("r2") = 1;

    uint16_t control = controller->control;
    controller->control = (control | 2u) & (uint16_t)~trigger;

    /* Send the high halfword when the controller's status bit 8 is set. */
    if (controller->status & 0x0100u)
        controller->data_high = (uint16_t)(value >> 16);

    /* V204 forms the response mask in r3 from the trigger value in r2. */
    __asm__ volatile("lsls r3, r2, #8" ::: "r3", "cc");
    controller->data_low = (uint16_t)value;

    /* Wait until status bit 13 reports completion, then trigger readback. */
    while (!(controller->status & 0x2000u)) {
    }
    controller->transfer_trigger = (uint16_t)trigger;

    /* Keep the original branch and return layout while combining readback. */
    __asm__ goto("ldrh r0, [r1, #0]\n\t"
                 "tst r0, r3\n\t"
                 "beq %l[no_high]"
                 :
                 :
                 : "r0", "cc"
                 : no_high);
    __asm__ goto volatile("ldrh r0, [r1, #4]\n\t"
                          "lsls r2, r0, #16\n\t"
                          "b %l[combine]"
                          :
                          :
                          : "r0", "r2", "cc"
                          : combine);
no_high:
    __asm__ volatile("movs r2, #0" ::: "r2", "cc");
combine:
    __asm__ volatile("ldrh r0, [r1, #2]\n\t"
                     "orrs r0, r2\n\t"
                     "bx lr" ::
                         : "r0", "cc", "memory");
    __builtin_unreachable();
}
