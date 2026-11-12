/* Preserve PRIMASK while updating bit0 when the status bit7 is clear. */
#include <stdint.h>
int set_pending_flag_if_status_bit_7_clear(void)
{
    uint32_t saved_mask = __builtin_arm_rsr("primask");
    uint32_t set_mask = 1;
    __builtin_arm_wsr("primask", set_mask);
    volatile uint16_t *status = (volatile uint16_t *)0x50000008u;
    if ((*status & 0x80u) == 0) {
        volatile uint16_t *pending_flags = (volatile uint16_t *)0x50003308u;
        *pending_flags |= (uint16_t)set_mask;
    }
    /* Compiler fences preserve the original restore operations' memory clobbers. */
    if (saved_mask != 0) {
        __atomic_signal_fence(__ATOMIC_SEQ_CST);
        __builtin_arm_wsr("primask", set_mask);
        __atomic_signal_fence(__ATOMIC_SEQ_CST);
        return (int)set_mask;
    }
    set_mask = 0;
    __atomic_signal_fence(__ATOMIC_SEQ_CST);
    __builtin_arm_wsr("primask", set_mask);
    __atomic_signal_fence(__ATOMIC_SEQ_CST);
    return (int)set_mask;
}
