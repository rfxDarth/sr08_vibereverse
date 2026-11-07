/* Build and dispatch the 20-byte record used by this operation. */
#include <stdint.h>

extern void func_0x07f1e0de(void *, uint32_t);
extern void FUN_07fc2efc(void *);

struct record_07fc3b58 {
    uint8_t type;
    uint8_t value;
    uint8_t bytes[18];
};

__attribute__((used, section(".text.FUN_07fc3b58")))
void FUN_07fc3b58(uint8_t input)
{
    register uint32_t saved_input __asm__("r4") = input;
    struct record_07fc3b58 local;
    register struct record_07fc3b58 *record __asm__("r5") = &local;

    func_0x07f1e0de(local.bytes, 18);
    record->type = 6;
    record->value = (uint8_t)saved_input;
    FUN_07fc2efc(record);
}
