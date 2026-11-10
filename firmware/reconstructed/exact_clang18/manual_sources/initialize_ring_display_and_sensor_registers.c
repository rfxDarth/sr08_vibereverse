/* Recovered behavior:
 * Initialize the ring's display and sensor configuration registers.
 */
#include <stdint.h>

/* Initializes the ring's display and sensor configuration registers. */
__attribute__((used, naked, section(".text.initialize_ring_display_and_sensor_registers"))) void
initialize_ring_display_and_sensor_registers(void) {
    __asm__ volatile("ldr r0, [pc, #44]\n" /* v204_ring_s_register_40000080 */
                     "ldr r1, [pc, #48]\n" /* v204_ring_s_peripheral_init_value */
                     "str r1, [r0, #0]\n"
                     "ldr r0, [pc, #48]\n" /* v204_ring_s_register_5000286a */
                     "ldr r1, [pc, #48]\n" /* v204_ring_s_sensor_init_value */
                     "strh r1, [r0, #0]\n"
                     "ldr r0, [pc, #48]\n" /* v204_ring_s_register_50002600 */
                     "ldrh r1, [r0, #2]\n"
                     "movs r2, #2\n"
                     "orrs r2, r1\n"
                     "movs r1, #4\n"
                     "bics r2, r1\n"
                     "strh r2, [r0, #2]\n"
                     "ldr r1, [pc, #40]\n" /* v204_ring_s_register_50002c06 */
                     "movs r2, #99\n"
                     "strh r2, [r1, #0]\n"
                     "ldr r1, [pc, #704]\n" /* base at 0x07fcbbbc */
                     "ldrh r2, [r1, #62]\n"
                     "ldr r3, [pc, #32]\n" /* v204_ring_s_register_50002810 */
                     "strh r2, [r3, #0]\n"
                     "ldrh r1, [r1, #60]\n"
                     "strh r1, [r0, #0]\n"
                     "bx lr\n");
}
