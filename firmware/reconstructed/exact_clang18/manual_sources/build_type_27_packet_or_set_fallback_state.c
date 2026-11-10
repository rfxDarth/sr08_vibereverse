/* Recovered behavior:
 * Build a type-0x27 packet from two reversed 32-byte slices of the indexed record, validate it,
 * and set fallback state when validation fails.
 */

#include <stdint.h>
__attribute__((used, naked, section(".text.build_type_27_packet_or_set_fallback_state"))) void
build_type_27_packet_or_set_fallback_state(void) {
    __asm__ volatile("push {r3, r4, r5, r6, r7, lr} /* 0x07fc180c */\n"
                     "lsls r2, r0, #8 /* 0x07fc180e */\n"
                     "mov r5, r0 /* 0x07fc1810 */\n"
                     "movs r3, #65	@ 0x41 /* 0x07fc1812 */\n"
                     "movs r1, #9 /* 0x07fc1814 */\n"
                     "ldr r0, [pc, #208] /* 0x07fc1816 */\n"
                     "adds r2, #10 /* 0x07fc1818 */\n"
                     "bl ke_msg_alloc\n" /* at 0x07fc181a */
                     "movs r1, #39	@ 0x27 /* 0x07fc181e */\n"
                     "strb r1, [r0, #0] /* 0x07fc1820 */\n"
                     "mov r4, r0 /* 0x07fc1822 */\n"
                     "movs r0, #0 /* 0x07fc1824 */\n"
                     "movs r3, #31 /* 0x07fc1826 */\n"
                     "ldr r1, [pc, #192] /* 0x07fc1828 */\n"
                     "lsls r2, r5, #2 /* 0x07fc182a */\n"
                     ".L_build_type_27_packet_or_set_fallback_state_block_at_180c_at_07fc182c:\n"
                     "ldr r7, [r1, r2] /* 0x07fc182c */\n"
                     "subs r6, r3, r0 /* 0x07fc182e */\n"
                     "adds r6, #73	@ 0x49 /* 0x07fc1830 */\n"
                     "ldrb r6, [r7, r6] /* 0x07fc1832 */\n"
                     "adds r7, r4, r0 /* 0x07fc1834 */\n"
                     "adds r0, r0, #1 /* 0x07fc1836 */\n"
                     "strb r6, [r7, #1] /* 0x07fc1838 */\n"
                     "cmp r0, #32 /* 0x07fc183a */\n"
                     "blt.n .L_build_type_27_packet_or_set_fallback_state_block_at_180c_at_07fc182c /* branch: lt, "
                     "target at .-16 */ /* 0x07fc183c */\n"
                     "movs r0, #0 /* 0x07fc183e */\n"
                     "movs r3, #63	@ 0x3f /* 0x07fc1840 */\n"
                     ".L_build_type_27_packet_or_set_fallback_state_block_at_180c_at_07fc1842:\n"
                     "ldr r6, [r1, r2] /* 0x07fc1842 */\n"
                     "subs r7, r3, r0 /* 0x07fc1844 */\n"
                     "adds r7, #73	@ 0x49 /* 0x07fc1846 */\n"
                     "ldrb r6, [r6, r7] /* 0x07fc1848 */\n"
                     "adds r7, r4, r0 /* 0x07fc184a */\n"
                     "adds r7, #32 /* 0x07fc184c */\n"
                     "adds r0, r0, #1 /* 0x07fc184e */\n"
                     "strb r6, [r7, #1] /* 0x07fc1850 */\n"
                     "cmp r0, #32 /* 0x07fc1852 */\n"
                     "blt.n .L_build_type_27_packet_or_set_fallback_state_block_at_180c_at_07fc1842 /* branch: lt, "
                     "target at .-18 */ /* 0x07fc1854 */\n"
                     "bl uECC_secp256r1\n" /* at 0x07fc1856 */
                     "mov r1, r0 /* 0x07fc185a */\n"
                     "adds r0, r4, #1 /* 0x07fc185c */\n"
                     "bl uECC_valid_public_key\n" /* at 0x07fc185e */
                     "cmp r0, #0 /* 0x07fc1862 */\n"
                     "bne.n .L_build_type_27_packet_or_set_fallback_state_block_at_180c_at_07fc188c /* branch: ne, "
                     "target at .+40 */ /* 0x07fc1864 */\n"
                     "movs r0, #10 /* 0x07fc1866 */\n"
                     "str r0, [sp, #0] /* 0x07fc1868 */\n"
                     "mov r2, sp /* 0x07fc186a */\n"
                     "movs r1, #5 /* 0x07fc186c */\n"
                     "mov r0, r5 /* 0x07fc186e */\n"
                     "bl smpc_pdu_send\n" /* at 0x07fc1870 */
                     "mov r0, r5 /* 0x07fc1874 */\n"
                     "bl gapc_get_role\n" /* at 0x07fc1876 */
                     "ldr r1, [sp, #0] /* 0x07fc187a */\n"
                     "movs r2, #96	@ 0x60 /* 0x07fc187c */\n"
                     "orrs r1, r2 /* 0x07fc187e */\n"
                     "uxtb r2, r1 /* 0x07fc1880 */\n"
                     "mov r1, r0 /* 0x07fc1882 */\n"
                     "movs r3, #1 /* 0x07fc1884 */\n"
                     "mov r0, r5 /* 0x07fc1886 */\n"
                     "bl smpc_pairing_end\n" /* at 0x07fc1888 */
                     ".L_build_type_27_packet_or_set_fallback_state_block_at_180c_at_07fc188c:\n"
                     "mov r0, r4 /* 0x07fc188c */\n"
                     "bl ke_msg_send\n" /* at 0x07fc188e */
                     "pop {r3, r4, r5, r6, r7, pc} /* 0x07fc1892 */\n");
}
