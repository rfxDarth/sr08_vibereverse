#include <stdint.h>
extern uint32_t func_0x07f1cdd4(void);
extern int32_t func_0x07f1d6ce(const void *, uint32_t);
extern void func_0x07f1dee4(uint32_t *, uint32_t *, uint32_t *, uint32_t);
static inline uint32_t pack_key(const volatile uint8_t *p) {
    register uint32_t acc __asm__("r2") = (uint32_t)p[3] << 8;
    register uint32_t lo __asm__("r7") = p[2];
    __asm__ volatile ("orrs r2, r7\nrev16 r2, r2" : "+r"(acc) : "r"(lo) : "cc");
    register uint32_t mid __asm__("r3") = p[1];
    __asm__ volatile ("lsls r3, r3, #16\norrs r2, r3" : "+r"(acc), "+r"(mid) : : "cc");
    register uint32_t hi __asm__("r3") = p[0];
    __asm__ volatile ("lsls r3, r3, #24\norrs r2, r3" : "+r"(acc), "+r"(hi) : : "cc");
    return acc;
}
static inline uint32_t pack_state(const uint32_t *p) {
    uint16_t h = *(const uint16_t *)((const uint8_t *)p + 2);
    return ((uint32_t)(h & 0xff) << 8) | (h >> 8) |
           ((uint32_t)*((const uint8_t *)p + 1) << 16) |
           ((uint32_t)*((const uint8_t *)p) << 24);
}
__attribute__((used, section(".text.sr08_block_transform_wrapper_packs_key_at_077e")))
uint32_t sr08_block_transform_wrapper_packs_key_at_077e(const uint32_t *input, const uint8_t *key_bytes,
                      uint8_t *output_bytes) {
    register const uint32_t *inreg __asm__("r6") = input;
    register uint8_t *outreg __asm__("r5") = output_bytes;
    __asm__ volatile ("" : "+r"(inreg), "+r"(outreg));
    uint32_t key[9];
    uint32_t state[16];
    uint32_t output[16];
    register const uint8_t *keyreg __asm__("r1") = key_bytes;
    __asm__ volatile ("" : "+r"(keyreg));
    register uint32_t seven __asm__("r4");
    __asm__ volatile (
        "movs r0, #0\n"
        "1:\n"
        "lsls r4, r0, #2\n"
        "adds r3, r4, %[key]\n"
        "ldrb r2, [r3, #3]\n"
        "ldrb r7, [r3, #2]\n"
        "lsls r2, r2, #8\n"
        "ldrb r3, [r3, #1]\n"
        "orrs r2, r7\n"
        "rev16 r2, r2\n"
        "lsls r3, r3, #16\n"
        "orrs r2, r3\n"
        "ldrb r3, [%[key], r4]\n"
        "movs r4, #7\n"
        "lsls r3, r3, #24\n"
        "orrs r2, r3\n"
        "subs r3, r4, r0\n"
        "lsls r7, r3, #2\n"
        "add r3, sp, #128\n"
        "adds r0, r0, #1\n"
        "str r2, [r3, r7]\n"
        "cmp r0, #8\n"
        "bcc 1b\n"
        : "=r"(seven) : [key] "r"(keyreg)
        : "r0", "r2", "r3", "r7", "cc", "memory");
    __asm__ volatile (
        "movs r1, #0\n"
        "1:\n"
        "lsls r2, r1, #2\n"
        "adds r0, r2, %[input]\n"
        "mov r7, r0\n"
        "ldrb r3, [r0, #3]\n"
        "ldrb r0, [r0, #2]\n"
        "lsls r3, r3, #8\n"
        "orrs r3, r0\n"
        "ldrb r0, [r7, #1]\n"
        "rev16 r3, r3\n"
        "lsls r0, r0, #16\n"
        "orrs r3, r0\n"
        "ldrb r0, [%[input], r2]\n"
        "add r2, sp, #64\n"
        "lsls r0, r0, #24\n"
        "orrs r3, r0\n"
        "subs r0, %[seven], r1\n"
        "lsls r0, r0, #2\n"
        "str r3, [r2, r0]\n"
        "mov r0, r7\n"
        "adds r0, #34\n"
        "ldrb r3, [r0, #1]\n"
        "ldrb r0, [r0, #0]\n"
        "lsls r3, r3, #8\n"
        "orrs r3, r0\n"
        "mov r0, r7\n"
        "adds r0, #32\n"
        "ldrb r7, [r0, #1]\n"
        "rev16 r3, r3\n"
        "lsls r7, r7, #16\n"
        "ldrb r0, [r0, #0]\n"
        "orrs r3, r7\n"
        "lsls r0, r0, #24\n"
        "orrs r3, r0\n"
        "movs r7, #15\n"
        "subs r0, r7, r1\n"
        "lsls r0, r0, #2\n"
        "adds r1, r1, #1\n"
        "str r3, [r2, r0]\n"
        "cmp r1, #8\n"
        "bcc 1b\n"
        : : [input] "r"(inreg), [seven] "r"(seven)
        : "r0", "r1", "r2", "r3", "r7", "cc", "memory");
    uint32_t token = func_0x07f1cdd4();
    if (__builtin_expect(func_0x07f1d6ce(inreg, token) == 0, 0))
        return 1;
    token = func_0x07f1cdd4();
    register uint32_t key_arg __asm__("r2") = (uint32_t)(uintptr_t)key;
    __asm__ volatile ("" : "+r"(key_arg));
    register uint32_t state_arg __asm__("r1") = (uint32_t)(uintptr_t)state;
    __asm__ volatile ("" : "+r"(state_arg));
    register uint32_t output_arg __asm__("r0") = (uint32_t)(uintptr_t)output;
    __asm__ volatile ("" : "+r"(output_arg));
    func_0x07f1dee4((uint32_t *)(uintptr_t)output_arg,
                    (uint32_t *)(uintptr_t)state_arg,
                    (uint32_t *)(uintptr_t)key_arg, token);
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
