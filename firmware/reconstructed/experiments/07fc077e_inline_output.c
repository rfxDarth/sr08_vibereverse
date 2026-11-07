#include <stdint.h>
extern uint32_t func_0x07f1cdd4(void);
extern int32_t func_0x07f1d6ce(const void *, uint32_t);
extern void func_0x07f1dee4(uint32_t *, uint32_t *, uint32_t *, uint32_t);
static inline uint32_t pack_key(const volatile uint8_t *p) {
    register uint32_t h __asm__("r2") = (uint32_t)p[3] << 8;
    register uint32_t lo __asm__("r7") = p[2];
    __asm__ volatile ("orrs %0, %1" : "+l"(h) : "l"(lo));
    __asm__ volatile ("rev16 %0, %0" : "+l"(h));
    return h | ((uint32_t)p[1] << 16) | ((uint32_t)p[0] << 24);
}
static inline uint32_t pack_state(const uint32_t *p) {
    uint16_t h = *(const uint16_t *)((const uint8_t *)p + 2);
    return ((uint32_t)(h & 0xff) << 8) | (h >> 8) |
           ((uint32_t)*((const uint8_t *)p + 1) << 16) |
           ((uint32_t)*((const uint8_t *)p) << 24);
}
__attribute__((used, section(".text.FUN_07fc077e")))
uint32_t FUN_07fc077e(const uint32_t *input, const uint8_t *key_bytes,
                      uint8_t *output_bytes) {
    register const uint32_t *inreg __asm__("r6") = input;
    register uint8_t *outreg __asm__("r5") = output_bytes;
    __asm__ volatile ("" : "+r"(inreg), "+r"(outreg));
    uint32_t key[9];
    uint32_t state[16];
    uint32_t output[16];
    uint32_t i;
    for (i = 0; i < 8; ++i) {
        __asm__ volatile ("" : "+r"(i));
        key[7 - i] = pack_key(key_bytes + i * 4);
    }
    for (i = 0; i < 8; ++i) {
        __asm__ volatile ("" : "+r"(i), "+r"(inreg));
        state[7 - i] = pack_state(inreg + i);
        state[15 - i] = pack_state(inreg + 8 + i);
    }
    uint32_t token = func_0x07f1cdd4();
    if (func_0x07f1d6ce(inreg, token) == 0)
        return 1;
    token = func_0x07f1cdd4();
    func_0x07f1dee4(output, state, key, token);
    register uint32_t seven __asm__("r4") = 7;
    __asm__ volatile ("" : "+r"(seven), "+r"(outreg) : : "memory");
    __asm__ volatile (
        "movs r2, #0\n"
        "mov r0, sp\n"
        "1:\n"
        "subs r1, r4, r2\n"
        "lsls r3, r1, #2\n"
        "lsls r6, r2, #2\n"
        "ldrb r7, [r0, r3]\n"
        "adds r1, r6, r5\n"
        "strb r7, [r1, #3]\n"
        "ldrh r7, [r0, r3]\n"
        "lsrs r7, r7, #8\n"
        "strb r7, [r1, #2]\n"
        "ldr r7, [r0, r3]\n"
        "lsrs r7, r7, #16\n"
        "strb r7, [r1, #1]\n"
        "ldr r3, [r0, r3]\n"
        "adds r1, #32\n"
        "lsrs r3, r3, #24\n"
        "strb r3, [r5, r6]\n"
        "movs r3, #15\n"
        "subs r3, r3, r2\n"
        "lsls r3, r3, #2\n"
        "ldrb r6, [r0, r3]\n"
        "strb r6, [r1, #3]\n"
        "ldrh r6, [r0, r3]\n"
        "adds r2, r2, #1\n"
        "lsrs r6, r6, #8\n"
        "strb r6, [r1, #2]\n"
        "ldr r6, [r0, r3]\n"
        "lsrs r6, r6, #16\n"
        "strb r6, [r1, #1]\n"
        "ldr r3, [r0, r3]\n"
        "lsrs r3, r3, #24\n"
        "strb r3, [r1, #0]\n"
        "cmp r2, #8\n"
        "bcc 1b\n"
        : : : "r0", "r1", "r2", "r3", "r6", "r7", "cc", "memory");
    return 0;
}
