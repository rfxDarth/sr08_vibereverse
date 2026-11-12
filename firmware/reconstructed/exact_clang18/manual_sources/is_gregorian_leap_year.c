#include <stdint.h>
uint32_t is_gregorian_leap_year(uint32_t year)
{
    if ((year & 3u) == 0 && year % 100u != 0)
        return 1;
    return year % 400u == 0;
}
