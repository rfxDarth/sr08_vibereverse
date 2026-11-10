/* Save PRIMASK, disable interrupts, set the pending flag when status bit 7 is
 * clear, then restore the caller's interrupt mask and return its prior value.
 */
#include <stdint.h>

__attribute__((used, section(".text.set_pending_flag_if_status_bit_7_clear"))) int
set_pending_flag_if_status_bit_7_clear(void) {
    register uint32_t saved_mask __asm__("r1");
    register uint32_t set_mask __asm__("r0");
    __asm__ volatile("mrs r1, primask\n\t"
                     "movs r0, #1\n\t"
                     "msr primask, r0"
                     : "=r"(saved_mask), "=r"(set_mask)
                     :
                     : "cc");

    register volatile uint16_t *status __asm__("r2");
    __asm__ volatile("ldr r2, [pc, #32]" : "=r"(status));
    /* Keep this field test C-level; Clang lowers it to the original lsl/bmi. */
    if ((*status & 0x0080u) == 0) {
        register volatile uint16_t *pending_flags __asm__("r2");
        __asm__ volatile("ldr r2, [pc, #28]" : "=r"(pending_flags));
        *pending_flags |= (uint16_t)set_mask;
    }

    /* PRIMASK has only zero/one states; preserve one or normalize zero for return. */
    if (saved_mask != 0) {
        __asm__ volatile("msr primask, %0" : : "r"(set_mask) : "memory");
        return (int)set_mask;
    }

    set_mask = 0;
    __asm__ volatile("msr primask, %0" : : "r"(set_mask) : "memory");
    return (int)set_mask;
}
