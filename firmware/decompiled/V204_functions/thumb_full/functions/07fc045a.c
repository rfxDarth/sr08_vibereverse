/* Fetch eight bytes from the ROM helper into the caller's output buffer. */
extern uint8_t func_0x07f02976(void);

__attribute__((used, section(".text.FUN_07fc045a")))
void read_eight_bytes_from_rom_helper(uint8_t *output)
{
  register uint8_t *cursor __asm__("r5") = output;
  __asm__ volatile ("" : "+r" (cursor));
  register int index __asm__("r4") = 0;
  __asm__ volatile ("" : "+r" (index));

  /* Preserve V204's saved-register set and 8-byte call-stack alignment. */
  __asm__ volatile ("" ::: "r6");

  for (;;) {
    cursor[index] = func_0x07f02976();
    ++index;
    __asm__ goto ("cmp %0, #8\n\tblt %l[repeat]"
                  : : "l" (index) : "cc" : repeat);
    break;
  repeat:
    ;
  }
}
