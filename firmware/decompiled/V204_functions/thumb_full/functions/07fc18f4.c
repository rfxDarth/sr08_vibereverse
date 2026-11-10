/* Return the number of bytes before the terminating NUL. */
int return_byte_length_nul_at_18f4(const uint8_t *text)
{
  register const uint8_t *base __asm__("r2") = text + 1;
  __asm__ volatile ("" : "+r" (base));

  register const uint8_t *cursor __asm__("r0") = text;
  register uint32_t current_byte __asm__("r1");
  do {
    current_byte = *cursor;
    ++cursor;
    __asm__ volatile ("" : "+r" (cursor));
  } while (current_byte != 0);

  return (int)(cursor - base);
}
