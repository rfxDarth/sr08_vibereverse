/* Exact local C reconstructions for selected V204 forwarding wrappers. */
#include <stdint.h>

#define PRESERVE_V204_R7() __asm__ volatile ("" : : : "r7")

extern void FUN_07fc1d44();
extern void FUN_07fc2f2c();
extern void FUN_07fc3b40();
extern void FUN_07fc3b58();
extern void FUN_07fc3b78();
extern void FUN_07fc43a4();
extern void FUN_07fc88e0();
extern void FUN_07fc8680();
extern void FUN_07fc8850();
extern void FUN_07fc3ea0();
extern void func_0x07f1e088();
extern void func_0x07f1e09a();

void FUN_07fc1cdc(void) { PRESERVE_V204_R7(); FUN_07fc1d44(10); }
void FUN_07fc1ce6(void) { PRESERVE_V204_R7(); FUN_07fc1d44(0xb); }
void FUN_07fc1cf0(void) { PRESERVE_V204_R7(); FUN_07fc1d44(0xc); }
void FUN_07fc1cfa(void) { PRESERVE_V204_R7(); FUN_07fc1d44(0xd); }
void FUN_07fc1d04(void) { PRESERVE_V204_R7(); FUN_07fc1d44(0xe); }
void FUN_07fc24c6(uint32_t arg) { PRESERVE_V204_R7(); FUN_07fc2f2c(arg, 0x14); }
void FUN_07fc24d0(uint32_t arg) { PRESERVE_V204_R7(); FUN_07fc2f2c(arg, 1); }
void FUN_07fc5694(void) { PRESERVE_V204_R7(); FUN_07fc3b58(2); }
void FUN_07fc5f28(void) { PRESERVE_V204_R7(); func_0x07f1e088(); }
void FUN_07fc5f30(void) { PRESERVE_V204_R7(); func_0x07f1e09a(); }
void FUN_07fc97c0(void) { PRESERVE_V204_R7(); FUN_07fc3b78(1); }
void FUN_07fc97ca(void)
{
    PRESERVE_V204_R7();
    FUN_07fc3b58(4);
    FUN_07fc3b40();
}
void FUN_07fcaf78(void) { PRESERVE_V204_R7(); FUN_07fc43a4(0); }

/* The DAT values below are the four-byte payload words at each named address. */
void FUN_07fc1e50(void)
{
    PRESERVE_V204_R7();
    FUN_07fc88e0(0x07fcfae2u);
}
void FUN_07fc7f58(void)
{
    PRESERVE_V204_R7();
    FUN_07fc88e0(0x07fcfb08u);
}
void FUN_07fc82a0(void)
{
    PRESERVE_V204_R7();
    FUN_07fc8680(0x07fcfaf2u);
}

void FUN_07fc8838(uint32_t param)
{
    register uint32_t saved __asm__("r4");
    __asm__ volatile (".inst.n 0x4604" : "=r"(saved) : "r"(param));
    FUN_07fc8850(99, (param & 0xfffu) >> 8);
    register uint32_t low __asm__("r1");
    __asm__ volatile ("uxtb %0, %1" : "=r"(low) : "r"(saved) : "r0");
    FUN_07fc8850(0x62, low);
}

void FUN_07fc3e90(uint32_t param_1, uint32_t param_2)
{
    register uint32_t arg_0 __asm__("r0") = param_1;
    register uint32_t arg_1 __asm__("r1") = param_2;
    __asm__ volatile (
        ".inst.n 0x460a\n\t" /* mov r2, r1 */
        ".inst.n 0x4601\n\t" /* mov r1, r0 */
        "movs r0, #0\n\t"
        "movs r3, #2\n\t"
        "bl FUN_07fc3ea0"
        : "+r"(arg_0), "+r"(arg_1)
        :
        : "r2", "r3", "r7", "lr", "memory");
}

int FUN_07fc18f4(char *param)
{
    register char *cur __asm__("r0") = param;
    register char *start __asm__("r2") = param + 1;
    register uint32_t value __asm__("r1");
    do {
        value = (uint8_t)*cur;
        __asm__ volatile (".inst.n 0x1c40" : "+r"(cur));
    } while (value != 0);
    return (int)cur - (int)start;
}

uint32_t FUN_07fc1b88(uint32_t value, uint32_t status)
{
    if ((int32_t)status < 0) {
        __asm__ volatile (".inst.n 0x1c40" : "+r"(value));
        if ((status << 1) == 0)
            __asm__ volatile (".inst.n 0x0840\n\t.inst.n 0x0040" : "+r"(value));
    }
    return value;
}
