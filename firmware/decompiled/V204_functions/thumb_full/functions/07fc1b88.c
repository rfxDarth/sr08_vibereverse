/* Return the next value for negative status; INT32_MIN marks an even result. */
uint adjust_value_for_negative_status(uint value, uint status)
{
  __asm__ goto volatile ("cmp %0, #0\n\tbge %l[done]"
                         : : "l" (status) : "cc" : done);

  ++value;
  if (status << 1)
    goto done;

  /* Preserve the two shifts used by V204 to clear the low bit. */
  __asm__ volatile ("lsrs %0, %0, #1\n\tlsls %0, %0, #1"
                    : "+l" (value));

done:
  return value;
}
