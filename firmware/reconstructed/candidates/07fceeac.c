/* Copy the incoming fields into the fixed shared command record. */
#include <stdint.h>

struct command_record {
    uint16_t first;
    uint16_t reserved;
    uint32_t second;
    uint32_t third;
    uint16_t fourth;
    uint16_t fifth;
    uint16_t sixth;
    uint16_t seventh;
    uint16_t eighth;
    uint8_t ninth;
    uint8_t tenth;
    uint8_t eleventh;
};

__attribute__((used, section(".text.FUN_07fceeac")))
void FUN_07fceeac(uint16_t first, uint32_t second, uint32_t third,
                  uint16_t fourth, uint16_t fifth, uint16_t sixth,
                  uint16_t seventh, uint16_t eighth, uint8_t ninth,
                  uint8_t tenth, uint8_t eleventh)
{
    register volatile struct command_record *record __asm__("r4");
    register uint32_t saved_sixth __asm__("r7") = sixth;
    register uint32_t saved_seventh __asm__("r6") = seventh;
    register uint32_t saved_tenth __asm__("r5") = tenth;
    __asm__ volatile ("ldr r4, [pc, #40]" : "=r" (record));
    __asm__ volatile ("" : : "r" (saved_sixth), "r" (saved_seventh),
                      "r" (saved_tenth));
    record->first = first;
    record->third = third;
    record->second = second;
    record->fourth = fourth;
    record->fifth = fifth;
    record->sixth = (uint16_t)saved_sixth;
    record->seventh = (uint16_t)saved_seventh;
    record->eighth = eighth;
    record->ninth = ninth;
    record->tenth = (uint8_t)saved_tenth;
    record->eleventh = eleventh;
}
