#ifndef SR08_ARM_EABI_H
#define SR08_ARM_EABI_H

#include <stdint.h>

/* ARM EABI runtime helpers used by the reconstructed firmware. */
extern uint32_t __aeabi_uidiv(uint32_t numerator, uint32_t denominator);
extern int32_t __aeabi_idiv(int32_t numerator, int32_t denominator);
extern uint64_t __aeabi_llsl(uint64_t value, uint32_t shift);
extern uint64_t __aeabi_lmul(uint64_t left, uint64_t right);
extern void __aeabi_memclr(void *destination, uint32_t byte_count);
extern void __aeabi_memcpy(void *destination, const void *source, uint32_t byte_count);

#endif
