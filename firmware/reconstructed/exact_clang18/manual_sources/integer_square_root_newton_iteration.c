/* Compute an integer square root by Newton iteration using the ROM divide
 * helper. Each pass calculates floor((radicand / estimate + estimate) / 2).
 * V204 repeats while the unsigned value
 * (next_estimate - previous_estimate + 1) exceeds 2.
 *
 * The estimate update is C. Fixed registers and small assembly edges preserve
 * V204's division ABI, unsigned loop test, and separate return paths; Clang 18
 * emits the original 38-byte section.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"

__attribute__((used, section(".text.integer_square_root_newton_iteration"))) uint32_t
integer_square_root_newton_iteration(uint32_t input) {
    register uint32_t radicand asm("r5");
    register uint32_t estimate asm("r4");
    register uint32_t previous asm("r6");

    __asm__ goto("push {r4, r5, r6, lr}\n\tmov r5, r0\n\tmovs r4, r0\n\tbeq %l[zero]"
                 : "=r"(radicand), "=r"(estimate)
                 :
                 : "cc"
                 : zero);

newton_step:
    previous = estimate;
    register uint32_t quotient asm("r0");
    __asm__ volatile("mov r1, %1\n\tmov r0, %2\n\tbl __aeabi_uidiv"
                     : "=r"(quotient)
                     : "r"(previous), "r"(radicand)
                     : "r1", "lr", "cc");
    estimate = (quotient + estimate) >> 1;

    __asm__ goto("subs r0, r4, r6\n\tadds r0, r0, #1\n\tcmp r0, #2\n\tbhi %l[newton_step]"
                 :
                 :
                 : "r0", "cc"
                 : newton_step);

    __asm__ volatile("mov r0, r4\n\tpop {r4, r5, r6, pc}" ::: "r0", "memory");
    __builtin_unreachable();

zero:
    __asm__ volatile("movs r0, #0\n\tpop {r4, r5, r6, pc}" ::: "r0", "memory");
    __builtin_unreachable();
}
