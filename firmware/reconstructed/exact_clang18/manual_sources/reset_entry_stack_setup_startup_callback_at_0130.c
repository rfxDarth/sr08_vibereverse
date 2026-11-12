/* reset_entry_stack_setup_startup_callback_at_0130: linked unchanged from the ARM Compiler 6.16 C library.
 *
 * V204's reset entry at 0x07fc0130 is microlib's __main, assembled by the
 * linker from mc_p.l(entry2.o, entry5.o, entry9a.o): set SP from
 * __initial_sp, call __scatterload, then jump to main. The build extracts
 * those members instead of compiling this unit; see ARM_LIBRARY_MEMBERS in
 * build_v204.py.
 */
