// rea decompile_all
// name: check_sensor_helper_interval_aligned_slots_at_8c3c
// address: 0x7fc8c3c
// body: available
// range: 0x7fc8c3c-0x7fc8c63 inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


bool is_gregorian_leap_year(uint year)

{
  int division_remainder;
  int division_remainder_00;
  
  if (((year & 3) == 0) && (__aeabi_uidiv(year,100), division_remainder_00 != 0)) {
    return true;
  }
  __aeabi_uidiv(year,400);
  return division_remainder == 0;
}

