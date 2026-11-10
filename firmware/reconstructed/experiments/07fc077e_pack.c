#include <stdint.h>
extern uint32_t func_0x07f1cdd4(void);
extern int32_t func_0x07f1d6ce(const void *, uint32_t);
extern void func_0x07f1dee4(uint32_t *, uint32_t *, uint32_t *, uint32_t);
static inline uint32_t pack_key(const volatile uint8_t *p) {
    uint32_t h = (uint32_t)p[3] << 8;
    uint32_t lo = p[2];
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
__attribute__((used, section(".text.sr08_block_transform_wrapper_packs_key_at_077e")))
uint32_t sr08_block_transform_wrapper_packs_key_at_077e(const uint32_t *input, const uint8_t *key_bytes,
                      uint8_t *output_bytes) {
    uint32_t output[16];
    uint32_t state[16];
    uint32_t key[9];
    uint32_t i;
    for (i = 0; i < 8; ++i) {
        __asm__ volatile ("" : "+r"(i));
        key[7 - i] = pack_key(key_bytes + i * 4);
    }
    for (i = 0; i < 8; ++i) {
        __asm__ volatile ("" : "+r"(i));
        state[7 - i] = pack_state(input + i);
        state[15 - i] = pack_state(input + 8 + i);
    }
    uint32_t token = func_0x07f1cdd4();
    if (func_0x07f1d6ce(input, token) == 0)
        return 1;
    token = func_0x07f1cdd4();
    func_0x07f1dee4(output, state, key, token);
    for (i = 0; i < 8; ++i) {
        __asm__ volatile ("" : "+r"(i));
        uint8_t *d = output_bytes + 4 * i;
        uint32_t a = output[7 - i], b = output[15 - i];
        d[0] = a >> 24; d[1] = a >> 16; d[2] = a >> 8; d[3] = a;
        d[32] = b >> 24; d[33] = b >> 16; d[34] = b >> 8; d[35] = b;
    }
    return 0;
}
