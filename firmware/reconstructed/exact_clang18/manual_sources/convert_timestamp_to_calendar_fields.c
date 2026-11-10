/* Recovered behavior:
 * Convert a timestamp into second, minute, hour, day, zero-based month, year, weekday, and
 * duplicate day fields with Gregorian leap-year corrections.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_calendar_constants.h"
#include "firmware/reconstructed/include/sr08_calendar_time.h"

/* Convert the input timestamp to calendar fields. The routine
 * derives the weekday, applies Gregorian 4/100/400-year corrections, selects
 * a month using the embedded month-length table, then splits the day remainder
 * into hour, minute, and second. month_zero_based is 0..11. The final output
 * word duplicates day_of_month in V204 and is retained in the checked layout.
 * Its divisors and common-year month lengths are represented by the typed
 * constant view at 0x07fc90dc.
 * The fixed Thumb sequence remains pinned because its division order and
 * register allocation are part of the byte-matching build.
 */
__attribute__((used, naked, section(".text.convert_timestamp_to_calendar_fields"))) void
convert_timestamp_to_calendar_fields(uint32_t timestamp_seconds, struct sr08_calendar_time *output) {
    __asm__ volatile("push {r1, r2, r3, r4, r5, r6, r7, lr} /* 0x07fc9004 */\n"
                     /* Divide into whole days and seconds within the day;
                      * use the day count to derive the weekday. */
                     "mov r4, r1 /* 0x07fc9006 */\n"
                     "mov r5, r0 /* 0x07fc9008 */\n"
                     "ldr r1, [pc, #208] /* 0x07fc900a */\n"
                     "bl __aeabi_uidiv\n" /* at 0x07fc900c */
                     "mov r7, r0 /* 0x07fc9010 */\n"
                     "adds r0, r0, #4 /* 0x07fc9012 */\n"
                     "uxth r0, r0 /* 0x07fc9014 */\n"
                     "movs r1, #7 /* 0x07fc9016 */\n"
                     "bl __aeabi_uidiv\n" /* at 0x07fc9018 */
                     "str r4, [sp, #8] /* 0x07fc901c */\n"
                     "str r1, [r4, #24] /* 0x07fc901e */\n"
                     /* Estimate the year, then correct the day offset for
                      * leap years, centuries, and four-century cycles. */
                     "ldr r1, [pc, #188] /* 0x07fc9020 */\n"
                     "str r5, [sp, #4] /* 0x07fc9022 */\n"
                     "mov r0, r5 /* 0x07fc9024 */\n"
                     "bl __aeabi_uidiv\n" /* at 0x07fc9026 */
                     "mov r6, r0 /* 0x07fc902a */\n"
                     "ldr r0, [pc, #180] /* 0x07fc902c */\n"
                     "adds r5, r6, r0 /* 0x07fc902e */\n"
                     "lsrs r4, r5, #2 /* 0x07fc9030 */\n"
                     "movs r0, #25 /* 0x07fc9032 */\n"
                     "lsls r1, r0, #4 /* 0x07fc9034 */\n"
                     "mov r0, r5 /* 0x07fc9036 */\n"
                     "bl __aeabi_uidiv\n" /* at 0x07fc9038 */
                     "adds r4, r4, r0 /* 0x07fc903c */\n"
                     "ldr r0, [pc, #168] /* 0x07fc903e */\n"
                     "muls r0, r6 /* 0x07fc9040 */\n"
                     "adds r6, r7, r0 /* 0x07fc9042 */\n"
                     "movs r1, #100	@ 0x64 /* 0x07fc9044 */\n"
                     "mov r0, r5 /* 0x07fc9046 */\n"
                     "bl __aeabi_uidiv\n" /* at 0x07fc9048 */
                     "adds r1, r6, r0 /* 0x07fc904c */\n"
                     "movs r0, #255	@ 0xff /* 0x07fc904e */\n"
                     "adds r0, #110	@ 0x6e /* 0x07fc9050 */\n"
                     "adds r1, r1, r0 /* 0x07fc9052 */\n"
                     "subs r6, r1, r4 /* 0x07fc9054 */\n"
                     "adds r6, #112	@ 0x70 /* 0x07fc9056 */\n"
                     "ldr r4, [pc, #144] /* 0x07fc9058 */\n"
                     "muls r4, r7 /* 0x07fc905a */\n"
                     "cmp r6, #0 /* 0x07fc905c */\n"
                     "bmi.n .L_apply_leap_day_correction /* branch: mi, target at "
                     ".+6 */ /* 0x07fc905e */\n"
                     "adds r5, r5, #1 /* 0x07fc9060 */\n"
                     "b.n .L_calendar_day_offset_ready /* branch: always, target "
                     "at .+12 */ /* 0x07fc9062 */\n"
                     ".L_apply_leap_day_correction:\n"
                     "adds r6, r6, r0 /* 0x07fc9064 */\n"
                     "mov r0, r5 /* 0x07fc9066 */\n"
                     "bl is_gregorian_leap_year\n" /* at 0x07fc9068 */
                     "adds r6, r6, r0 /* 0x07fc906c */\n"
                     ".L_calendar_day_offset_ready:\n"
                     "ldr r0, [sp, #4] /* 0x07fc906e */\n"
                     "adds r0, r4, r0 /* 0x07fc9070 */\n"
                     "str r0, [sp, #4] /* 0x07fc9072 */\n"
                     "adds r0, r6, #1 /* 0x07fc9074 */\n"
                     "ldr r1, [sp, #8] /* 0x07fc9076 */\n"
                     "str r0, [r1, #28] /* 0x07fc9078 */\n"
                     "ldr r0, [pc, #116] /* 0x07fc907a */\n"
                     "adds r0, r5, r0 /* 0x07fc907c */\n"
                     "str r0, [r1, #20] /* 0x07fc907e */\n"
                     /* Walk the common-year month-length table, adding one
                      * day to February when the year is a leap year. */
                     "movs r7, #0 /* 0x07fc9080 */\n"
                     ".set .L_common_year_month_lengths, .+114\n"
                     "adr r4, .L_common_year_month_lengths /* 0x07fc9082 -> 0x07fc90f4 */\n"
                     ".L_find_month_from_day_of_year:\n"
                     "cmp r7, #11 /* 0x07fc9084 */\n"
                     "beq.n .L_select_december_after_month_scan /* branch: eq, target at "
                     ".+34 */ /* 0x07fc9086 */\n"
                     "mov r0, r5 /* 0x07fc9088 */\n"
                     "bl is_gregorian_leap_year\n" /* at 0x07fc908a */
                     "subs r1, r0, #1 /* 0x07fc908e */\n"
                     "sbcs r0, r1 /* 0x07fc9090 */\n"
                     "subs r1, r7, #1 /* 0x07fc9092 */\n"
                     "negs r2, r1 /* 0x07fc9094 */\n"
                     "adcs r2, r1 /* 0x07fc9096 */\n"
                     "ands r2, r0 /* 0x07fc9098 */\n"
                     "ldrb r0, [r4, r7] /* 0x07fc909a */\n"
                     "adds r0, r2, r0 /* 0x07fc909c */\n"
                     "subs r0, r6, r0 /* 0x07fc909e */\n"
                     "bmi.n .L_calendar_month_selected /* branch: mi, target at "
                     ".+10 */ /* 0x07fc90a0 */\n"
                     "adds r7, r7, #1 /* 0x07fc90a2 */\n"
                     "mov r6, r0 /* 0x07fc90a4 */\n"
                     "b.n .L_find_month_from_day_of_year /* branch: always, target "
                     "at .-34 */ /* 0x07fc90a6 */\n"
                     ".L_select_december_after_month_scan:\n"
                     "movs r7, #11 /* 0x07fc90a8 */\n"
                     ".L_calendar_month_selected:\n"
                     "ldr r5, [sp, #4] /* 0x07fc90aa */\n"
                     "adds r0, r6, #1 /* 0x07fc90ac */\n"
                     "ldr r4, [sp, #8] /* 0x07fc90ae */\n"
                     "str r0, [r4, #12] /* 0x07fc90b0 */\n"
                     "str r7, [r4, #16] /* 0x07fc90b2 */\n"
                     "movs r0, #225	@ 0xe1 /* 0x07fc90b4 */\n"
                     "lsls r1, r0, #4 /* 0x07fc90b6 */\n"
                     "mov r0, r5 /* 0x07fc90b8 */\n"
                     "bl __aeabi_uidiv\n" /* at 0x07fc90ba */
                     "str r0, [r4, #8] /* 0x07fc90be */\n"
                     /* Split the remaining seconds into hour, minute, and
                      * second fields. */
                     "ldr r1, [pc, #60] /* 0x07fc90c0 */\n"
                     "muls r1, r0 /* 0x07fc90c2 */\n"
                     "adds r5, r1, r5 /* 0x07fc90c4 */\n"
                     "movs r1, #60	@ 0x3c /* 0x07fc90c6 */\n"
                     "mov r0, r5 /* 0x07fc90c8 */\n"
                     "bl __aeabi_uidiv\n" /* at 0x07fc90ca */
                     "movs r1, #59	@ 0x3b /* 0x07fc90ce */\n"
                     "mvns r1, r1 /* 0x07fc90d0 */\n"
                     "muls r1, r0 /* 0x07fc90d2 */\n"
                     "adds r1, r1, r5 /* 0x07fc90d4 */\n"
                     "str r1, [r4, #0] /* 0x07fc90d6 */\n"
                     "str r0, [r4, #4] /* 0x07fc90d8 */\n"
                     "pop {r1, r2, r3, r4, r5, r6, r7, pc} /* 0x07fc90da */\n");
}
