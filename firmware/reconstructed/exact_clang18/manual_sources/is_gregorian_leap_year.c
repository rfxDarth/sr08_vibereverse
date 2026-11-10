/* Apply the Gregorian leap-year rule. The V204 ROM divider returns its
 * remainder in r1; keep only the divider call and fixed register mapping in
 * assembly while expressing the divisibility decisions in C.
 */
#include <stdint.h>

__attribute__((used, section(".text.is_gregorian_leap_year"))) uint32_t is_gregorian_leap_year(uint32_t year) {
    register uint32_t original_year __asm__("r4") = year;
    register uint32_t quotient __asm__("r0");
    register uint32_t remainder __asm__("r1");

    if ((year & 3u) == 0) {
        __asm__ volatile("movs r1, #100\n\t"
                         "mov r0, %[year]\n\t"
                         "bl __aeabi_uidiv"
                         : "=r"(quotient), "=r"(remainder)
                         : [year] "r"(original_year)
                         : "r2", "r3", "lr", "cc");
        if (remainder != 0)
            return 1;
    }

    /* Divide by 400 as 25 << 4, matching the original Thumb sequence. */
    __asm__ volatile("movs r0, #25\n\t"
                     "lsls r1, r0, #4\n\t"
                     "mov r0, %[year]\n\t"
                     "bl __aeabi_uidiv"
                     : "=r"(quotient), "=r"(remainder)
                     : [year] "r"(original_year)
                     : "r2", "r3", "lr", "cc");
    return remainder == 0;
}
