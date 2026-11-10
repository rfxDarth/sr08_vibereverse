/* Allocate and publish a type-1 record with two zeroed halfwords. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_measurement_record.h"

extern void *func_0x07f1bbb0(uint32_t, uint32_t, uint32_t, uint32_t);
extern void func_0x07f1bbe2(void);

__attribute__((used, section(".text.FUN_07fc6540")))
uint32_t create_empty_measurement_record(uint32_t unused0, uint32_t unused1,
                                         uint32_t record_source, uint32_t slot)
{
    struct sr08_measurement_record *record =
        func_0x07f1bbb0(0xe10, slot, record_source, 6);
    record->word_at_4 = 0;
    record->word_at_2 = 0;
    record->type = 1;
    func_0x07f1bbe2();
    return 0;
}

