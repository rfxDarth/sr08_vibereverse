/* Format a byte span as spaced hexadecimal, with line separators every 16 bytes. */
extern void FUN_07fc532c(void);

__attribute__((used, naked, section(".text.FUN_07fcb178")))
void FUN_07fcb178(void)
{
    __asm__ volatile (
        "push {r3, r4, r5, r6, r7, lr}\n"
        "mov r4, r1\n"
        "mov r5, r0\n"
        "movs r6, #0\n"
        ".inst.n 0xa709\n"
        "1: cmp r4, r6\n"
        "beq 2f\n"
        "lsls r0, r6, #28\n"
        "bne 3f\n"
        "ldr r0, [pc, #24]\n"
        "bl FUN_07fc532c\n"
        "3: ldrb r1, [r5, r6]\n"
        "mov r0, r7\n"
        "bl FUN_07fc532c\n"
        "adds r6, r6, #1\n"
        "b 1b\n"
        "2: ldr r0, [pc, #4]\n"
        "bl FUN_07fc532c\n"
        "pop {r3, r4, r5, r6, r7, pc}\n");
}
