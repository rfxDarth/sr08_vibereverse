#include <stdint.h>
extern uint32_t func_0x07f1cdd4(void);
extern int32_t func_0x07f1d6ce(const void *, uint32_t);
extern void func_0x07f1dee4(uint32_t *, uint32_t *, uint32_t *, uint32_t);
static inline uint32_t pack_key(const uint8_t *p) {
    uint16_t h = (uint16_t)p[2] | ((uint16_t)p[3] << 8);
    return ((uint32_t)(h & 0xff) << 8) | (h >> 8) |
           ((uint32_t)p[1] << 16) | ((uint32_t)p[0] << 24);
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
    volatile uint8_t *dst = outreg;
    volatile uint8_t *src = (volatile uint8_t *)output;
    for (i = 0; i < 8; ++i) {
        __asm__ volatile ("" : "+r"(i));
        volatile uint32_t *word = (volatile uint32_t *)output;
        uint32_t index = 7 - i;
        uint32_t off = 4 * i;
        uint8_t *d = (uint8_t *)dst + off;
        d[3] = *(volatile uint8_t *)&word[index];
        d[2] = (*(volatile uint16_t *)&word[index]) >> 8;
        d[1] = word[index] >> 16;
        d[0] = word[index] >> 24;
        index = 15 - i;
        d += 32;
        d[3] = *(volatile uint8_t *)&word[index];
        d[2] = (*(volatile uint16_t *)&word[index]) >> 8;
        d[1] = word[index] >> 16;
        d[0] = word[index] >> 24;
    }
    return 0;
}
