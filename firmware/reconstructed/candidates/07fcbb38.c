/* Drive the ring's output state machine and return its status. */
#include <stdint.h>

extern int FUN_07fcbad0(void);
extern void FUN_07fcbb6c(uint32_t);
extern void FUN_07fcbb94(uint32_t);
extern int FUN_07fcbb10(void);
extern int FUN_07fcbafc(void);

__attribute__((used, section(".text.FUN_07fcbb38")))
int FUN_07fcbb38(void)
{
    /* Both early exits restore this saved callee register and return r0. */
    __asm__ volatile ("push {r4, lr}" : : : "r4", "memory");
    (void)FUN_07fcbad0();
    __asm__ goto (
        "cmp r0, #0\n\t"
        "beq %l[body]"
        : : : "cc" : body);

early_return:
    __asm__ volatile ("pop {r4, pc}");
    __builtin_unreachable();

body:
    register int status __asm__("r4") = 0;
    __asm__ volatile ("" : "+r" (status));
    FUN_07fcbb6c(status);
    FUN_07fcbb94(6);
    (void)FUN_07fcbb10();
    __asm__ goto (
        "cmp r0, #0\n\t"
        "bne %l[early_return]"
        : : : "cc" : early_return);

    (void)FUN_07fcbafc();
    __asm__ volatile (
        "lsls r0, r0, #30\n\t"
        "bmi 1f\n\t"
        "movs r0, #11\n\t"
        "mvns r4, r0\n"
        "1:\n\t"
        "mov r0, r4\n\t"
        "pop {r4, pc}"
        : "+r" (status) : : "r0", "cc");
    __builtin_unreachable();
}
