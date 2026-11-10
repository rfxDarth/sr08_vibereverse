/* Reverse two tagged 32-byte record regions, then start P-256 processing. */
__attribute__((used, naked, section(".text.reverse_tagged_record_regions_then_start_p256"))) void
reverse_tagged_record_regions_then_start_p256(void) {
    __asm__ volatile("push {r4, r5, r6, lr}\n"
                     "mov r5, r0\n" /* Preserve the original record for llm_p256_start_func. */
                     "mov r4, r0\n"
                     "ldrh r0, [r0, #8]\n"
                     "ldr r1, [pc, #80]\n"
                     "adds r4, #12\n"
                     "sub sp, #32\n"
                     "cmp r0, r1\n" /* The literal is tag 0x2026; other records skip both reversals. */
                     "bne .Lcopy_complete\n"
                     "movs r0, #0\n"
                     "movs r1, #31\n"
                     "mov r6, sp\n"
                     ".Lreverse_first_region: subs r2, r1, r0\n" /* Read record offsets 43 down to 12. */
                     "ldrb r2, [r4, r2]\n"
                     "strb r2, [r6, r0]\n"
                     "adds r0, r0, #1\n"
                     "cmp r0, #32\n"
                     "blt .Lreverse_first_region\n"
                     "movs r2, #32\n"
                     "mov r1, r6\n"
                     "mov r0, r4\n"
                     "bl __aeabi_memcpy\n" /* Replace record offsets 12..43 with the reversed bytes. */
                     "movs r0, #0\n"
                     "movs r1, #63\n"
                     ".Lreverse_second_region: subs r2, r1, r0\n" /* Read record offsets 75 down to 44. */
                     "ldrb r2, [r4, r2]\n"
                     "strb r2, [r6, r0]\n"
                     "adds r0, r0, #1\n"
                     "cmp r0, #32\n"
                     "blt .Lreverse_second_region\n"
                     "movs r2, #32\n"
                     "mov r1, sp\n"
                     "adds r0, r4, r2\n"
                     "bl __aeabi_memcpy\n" /* Replace record offsets 44..75 with the reversed bytes. */
                     ".Lcopy_complete: mov r0, r5\n"
                     "bl llm_p256_start_func\n"
                     "add sp, #32\n"
                     "pop {r4, r5, r6, pc}\n");
}
