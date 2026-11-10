/* Map elapsed device ticks into the firmware's piecewise time scale. */
/*
 * The observed conversion is piecewise:
 *   0..7199 ticks:       ticks / 720 + 20
 *   7200..14399 ticks:   ticks / 1440 + 30
 *   14400..25199 ticks:  (25200 - ticks) / 600 + 15
 *   75600..86398 ticks:  (ticks - 75600) * 17 / 10800 + 5
 *   all other values:    5
 * The input is the elapsed-tick counter in the shared clock state. The first
 * comparisons use shifted values because the original code compares against
 * fixed range boundaries without loading those boundaries directly.
 *
 * Keep the instruction sequence pinned; the literal-pool loads and compact
 * branches are part of the byte-matching image. Named assembler constants
 * below document the immediate values without changing the emitted code.
 */
__attribute__((used, naked, section(".text.map_elapsed_ticks_to_firmware_time_units"))) int
map_elapsed_ticks_to_firmware_time_units(void) {
    __asm__ volatile(".equ V204_LATE_WINDOW_SCALE, 17\n"
                     ".equ V204_LATE_WINDOW_BASE_RESULT, 5\n"
                     ".equ V204_EARLY_WINDOW_BASE_RESULT, 20\n"
                     ".equ V204_MIDDLE_WINDOW_BASE_RESULT, 30\n"
                     ".equ V204_REVERSE_WINDOW_BASE_RESULT, 15\n"
                     ".equ V204_EARLY_WINDOW_SHIFT_LIMIT, 224\n"
                     ".equ V204_MIDDLE_WINDOW_SHIFT_LIMIT, 224\n"
                     "push {r7, lr}\n"
                     /* Read elapsed ticks from the shared clock state. */
                     "ldr r0, [pc, #644]\n"
                     "ldr r0, [r0, #12]\n"
                     "ldr r1, [pc, #96]\n"
                     "adds r1, r0, r1\n"
                     "ldr r2, [pc, #96]\n"
                     "cmp r1, r2\n"
                     "bhi .Lticks_up_to_7199\n"
                     /* Late-day window: ticks * 17 / 10800, then add five. */
                     "movs r1, #V204_LATE_WINDOW_SCALE\n"
                     "muls r1, r0\n"
                     "ldr r0, [pc, #96]\n"
                     "adds r0, r1, r0\n"
                     "ldr r1, [pc, #96]\n"
                     "bl __aeabi_uidiv\n"
                     "adds r0, r0, #V204_LATE_WINDOW_BASE_RESULT\n"
                     "pop {r7, pc}\n"
                     /* First two windows are distinguished by ticks >> 5. */
                     ".Lticks_up_to_7199: lsrs r1, r0, #5\n"
                     "cmp r1, #V204_EARLY_WINDOW_SHIFT_LIMIT\n"
                     "bhi .Lticks_7200_to_14399\n"
                     "uxth r0, r0\n"
                     "movs r1, #45\n"
                     "lsls r1, r1, #4\n"
                     "bl __aeabi_uidiv\n"
                     "adds r0, #V204_EARLY_WINDOW_BASE_RESULT\n"
                     "pop {r7, pc}\n"
                     /* Next window uses ticks >> 6 to bound 7200..14399. */
                     ".Lticks_7200_to_14399: lsrs r1, r0, #6\n"
                     "cmp r1, #V204_MIDDLE_WINDOW_SHIFT_LIMIT\n"
                     "bhi .Lticks_14400_to_25199\n"
                     "uxth r0, r0\n"
                     "movs r1, #45\n"
                     "lsls r1, r1, #5\n"
                     "bl __aeabi_uidiv\n"
                     "adds r0, #V204_MIDDLE_WINDOW_BASE_RESULT\n"
                     "pop {r7, pc}\n"
                     /* Reverse the 14400..25199 range around 25200. */
                     ".Lticks_14400_to_25199: ldr r1, [pc, #36]\n"
                     "cmp r0, r1\n"
                     "bhi .Loutside_supported_ranges\n"
                     "ldr r1, [pc, #32]\n"
                     "subs r0, r1, r0\n"
                     "uxth r0, r0\n"
                     "movs r1, #75\n"
                     "lsls r1, r1, #3\n"
                     "bl __aeabi_uidiv\n"
                     "adds r0, #V204_REVERSE_WINDOW_BASE_RESULT\n"
                     "pop {r7, pc}\n"
                     ".Loutside_supported_ranges: movs r0, #V204_LATE_WINDOW_BASE_RESULT\n"
                     "pop {r7, pc}\n");
}
