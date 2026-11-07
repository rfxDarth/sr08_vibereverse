/* Read two six-byte records and combine each byte triplet into a word. */
#include <stdint.h>

extern void FUN_07fc7f68(uint32_t, volatile uint8_t *, uint32_t);

__attribute__((used, section(".text.FUN_07fcb770")))
void FUN_07fcb770(uint32_t *output)
{
    volatile uint8_t first[6];
    volatile uint8_t gap[2];
    volatile uint8_t second[6];
    register volatile uint8_t *first_record __asm__("r6") = first;
    register volatile uint8_t *second_record __asm__("r5");
    register uint32_t six __asm__("r7") = 6;
    register uint32_t selector __asm__("r0");
    register volatile uint8_t *buffer __asm__("r1");
    register uint32_t length __asm__("r2");

    selector = 2;
    __asm__ volatile ("" : "+r" (selector));
    __asm__ volatile ("" : "+r" (first_record));
    __asm__ volatile ("" : "+r" (six));
    buffer = first_record;
    __asm__ volatile ("" : "+r" (buffer));
    length = six;
    __asm__ volatile ("" : "+r" (length));
    FUN_07fc7f68(selector, buffer, length);

    selector = 8;
    __asm__ volatile ("" : "+r" (selector));
    second_record = second;
    __asm__ volatile ("" : "+r" (second_record));
    buffer = second_record;
    __asm__ volatile ("" : "+r" (buffer));
    length = six;
    __asm__ volatile ("" : "+r" (length));
    FUN_07fc7f68(selector, buffer, length);

    output[0] = (uint32_t)first_record[0] +
                ((uint32_t)first_record[1] << 8) +
                ((uint32_t)first_record[2] << 16);
    output[1] = (uint32_t)first_record[3] +
                ((uint32_t)first_record[4] << 8) +
                ((uint32_t)first_record[5] << 16);
    output[2] = (uint32_t)second_record[0] +
                ((uint32_t)second_record[1] << 8) +
                ((uint32_t)second_record[2] << 16);
    output[3] = (uint32_t)second_record[3] +
                ((uint32_t)second_record[4] << 8) +
                ((uint32_t)second_record[5] << 16);
}
