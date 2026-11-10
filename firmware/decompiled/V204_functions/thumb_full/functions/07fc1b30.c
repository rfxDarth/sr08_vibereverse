/* Convert the input integer using the shared software-float normalizer. */
extern uint software_float_normalization_round_even_helper_at_1b98(
    uint value, uint guard_bits, int exponent_adjust, int precision);

uint convert_unsigned_integer_to_float_bits(uint value)
{
  register uint zero_argument __asm__("r2") = 0;
  __asm__ volatile ("" : "+r" (zero_argument));
  register uint first_zero_argument __asm__("r1") = zero_argument;
  register int precision __asm__("r3") = 0x96;
  /* V204 saves r4 to maintain the original 8-byte call-stack alignment. */
  __asm__ volatile ("" ::: "r4");
  return software_float_normalization_round_even_helper_at_1b98(
      value, first_zero_argument, zero_argument, precision);
}
