/* Address-exact reconstruction of V204 FUN_07fc5808. */
#include <stdint.h>

extern int func_0x07f1bf1a(uint32_t);
extern uint32_t FUN_07fcb080(uint32_t);
extern void *func_0x07f1bbb0(uint32_t, uint32_t, uint32_t, uint32_t);
extern void func_0x07f1bbe2(void);

#define DAT_07fc5844 0x0c18u

__attribute__((used, section(".text.FUN_07fc5808")))
uint32_t FUN_07fc5808(uint32_t unused, int param_2, uint32_t param_3)
{
    int state = func_0x07f1bf1a(param_3);
    if (state == 0) {
        state = FUN_07fcb080(0xfd);
        uint16_t *output = (uint16_t *)func_0x07f1bbb0(
            DAT_07fc5844, 8, param_3, 6);
        output[1] = *(uint16_t *)(param_2 + 4);
        *((uint8_t *)output + 4) = *(uint8_t *)(param_2 + 6);
        uint16_t state_word = *(volatile uint16_t *)(state + 4);
        uint16_t input_word = *(volatile uint16_t *)(param_2 + 2);
        *output = state_word + input_word;
        func_0x07f1bbe2();
    }
    return 0;
}
