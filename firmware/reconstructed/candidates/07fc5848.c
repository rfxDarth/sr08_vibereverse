/* Exact Thumb transcription of the variable-length list-record updater. */
#include <stdint.h>

extern void *FUN_07fcb080(uint32_t);
extern void co_list_extract(void *, void *, uint8_t);
extern void ke_free(void *);
extern void *ke_malloc(uint32_t, uint8_t);
extern void __aeabi_memclr(void *, uint32_t);
extern void co_list_push_back(void *, void *);
extern void __aeabi_memcpy(void *, const void *, uint32_t);

__attribute__((naked, used, section(".text.FUN_07fc5848")))
void FUN_07fc5848(uint32_t selector, uint32_t length, const void *data)
{
    __asm__ volatile (
        "push {r1, r2, r3, r4, r5, r6, r7, lr}\n\t"
        "str r2, [sp, #8]\n\t"
        "mov r7, r1\n\t"
        "mov r5, r0\n\t"
        "movs r0, #253\n\t"
        "bl FUN_07fcb080\n\t"
        "mov r6, r0\n\t"
        "adds r6, #16\n\t"
        "str r7, [sp, #4]\n\t"
        "mov r4, r6\n\t"
        ".Lscan: ldr r4, [r4, #0]\n\t"
        "cmp r4, #0\n\t"
        "beq .Lallocate\n\t"
        "ldrb r0, [r4, #4]\n\t"
        "cmp r0, r5\n\t"
        "bne .Lscan\n\t"
        "ldrb r0, [r4, #5]\n\t"
        "cmp r0, r7\n\t"
        "beq .Lcopy\n\t"
        "movs r2, #0\n\t"
        "mov r0, r6\n\t"
        "mov r1, r4\n\t"
        "bl co_list_extract\n\t"
        "mov r0, r4\n\t"
        "bl ke_free\n\t"
        ".Lallocate: adds r7, #8\n\t"
        "movs r1, #1\n\t"
        "mov r0, r7\n\t"
        "bl ke_malloc\n\t"
        "mov r4, r0\n\t"
        "mov r1, r7\n\t"
        "bl __aeabi_memclr\n\t"
        "mov r0, r6\n\t"
        "mov r1, r4\n\t"
        "bl co_list_push_back\n\t"
        ".Lcopy: ldr r2, [sp, #4]\n\t"
        "strb r2, [r4, #5]\n\t"
        "strb r5, [r4, #4]\n\t"
        "adds r0, r4, #6\n\t"
        "ldr r1, [sp, #8]\n\t"
        "bl __aeabi_memcpy\n\t"
        "pop {r1, r2, r3, r4, r5, r6, r7, pc}\n\t"
    );
}
