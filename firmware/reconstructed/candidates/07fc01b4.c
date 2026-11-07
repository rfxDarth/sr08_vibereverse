/* Allocate, stamp, release, and clamp a timing record. */
#include <stdint.h>

extern uint32_t func_0x07f11956(uint32_t, uint32_t, uint32_t);
extern uint16_t func_0x07f12cf4();
extern void func_0x07f11978(void *);
extern void func_0x07f11b46(uint32_t, uint32_t);

__attribute__((used, section(".text.FUN_07fc01b4")))
uint32_t FUN_07fc01b4(uint32_t argument, uint8_t *record)
{
    register uint32_t saved_argument __asm__("r4") = argument;
    register uint8_t *saved_record __asm__("r6") = record;
    register uint32_t zero __asm__("r2"), three __asm__("r1");
    __asm__ volatile ("movs r2, #0\n\tmovs r1, #3"
                      : "=r" (zero), "=r" (three));

    register uint8_t *object __asm__("r5") =
        (uint8_t *)func_0x07f11956(saved_argument, three, zero);
    __asm__ volatile ("" : "+r" (saved_argument), "+r" (saved_record),
                      "+r" (object));
    *(uint16_t *)(object + 2) = func_0x07f12cf4();
    func_0x07f11978(object);

    register uint32_t value __asm__("r0") = func_0x07f12cf4();
    asm goto volatile ("ldrh r1, [r6, #2]\n\tcmp r0, r1\n\t"
                       "bcc %l[below]\n\tmov r0, r1"
                       : "+r" (value) : "r" (saved_record)
                       : "r1", "cc" : below);
below:
    func_0x07f11b46(saved_argument, value);
    return 0;
}
