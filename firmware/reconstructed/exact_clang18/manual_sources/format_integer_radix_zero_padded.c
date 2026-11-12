/**
 ****************************************************************************************
 *
 * @file arch_console.c
 *
 * @brief Serial logging interface.
 *
 * Copyright (C) 2013-2023 Renesas Electronics Corporation and/or its affiliates.
 * All rights reserved. Confidential Information.
 *
 * This software ("Software") is supplied by Renesas Electronics Corporation and/or its
 * affiliates ("Renesas"). Renesas grants you a personal, non-exclusive, non-transferable,
 * revocable, non-sub-licensable right and license to use the Software, solely if used in
 * or together with Renesas products. You may make copies of this Software, provided this
 * copyright notice and disclaimer ("Notice") is included in all such copies. Renesas
 * reserves the right to change or discontinue the Software at any time without notice.
 *
 * THE SOFTWARE IS PROVIDED "AS IS". RENESAS DISCLAIMS ALL WARRANTIES OF ANY KIND,
 * WHETHER EXPRESS, IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. TO THE
 * MAXIMUM EXTENT PERMITTED UNDER LAW, IN NO EVENT SHALL RENESAS BE LIABLE FOR ANY DIRECT,
 * INDIRECT, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE, EVEN IF RENESAS HAS BEEN ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGES. USE OF THIS SOFTWARE MAY BE SUBJECT TO TERMS AND CONDITIONS CONTAINED IN
 * AN ADDITIONAL AGREEMENT BETWEEN YOU AND RENESAS. IN CASE OF CONFLICT BETWEEN THE TERMS
 * OF THIS NOTICE AND ANY SUCH ADDITIONAL LICENSE AGREEMENT, THE TERMS OF THE AGREEMENT
 * SHALL TAKE PRECEDENCE. BY CONTINUING TO USE THIS SOFTWARE, YOU AGREE TO THE TERMS OF
 * THIS NOTICE.IF YOU DO NOT AGREE TO THESE TERMS, YOU ARE NOT PERMITTED TO USE THIS
 * SOFTWARE.
 *
 ****************************************************************************************
 */
/* SDK 6.0.22.1401 arch_console.c: arch_itoa, with V204's unchecked radix.
 * Keep the SDK reversal loop: the ac6lto profile reproduces its instruction order.
 */
#include <stdint.h>
#include <stdbool.h>
__attribute__((used, section(".text.format_integer_radix_zero_padded"))) uint32_t format_integer_radix_zero_padded(int32_t value, uint32_t radix, uint32_t uppercase,
                          char *buf, int32_t pad)
{
    char *pbuf = buf;
    bool negative = false;
    uint32_t i, length;

    if (value < 0 && radix == 10) {
        negative = true;
        value = -value;
    }

    // Build the string here starting from the end...
    do {
        int digit = value % radix;
        *(pbuf++) = (digit < 10 ? '0' + digit : (uppercase ? 'A' : 'a') + digit - 10);
        value /= radix;
    } while (value > 0);

    length = (pbuf - buf);
    for (i = length; i < pad; i++)
        *(pbuf++) = '0';

    // Add '-' sign if need be...
    if (negative)
        *(pbuf++) = '-';

    // Terminate the string.
    *(pbuf) = '\0';

    // Reverse the string now...
    length = (pbuf - buf);
    for (i = 0; i < length / 2; i++)
    {
        char ch = buf[i];

        buf[i] = buf[length - i - 1];
        buf[length - i - 1] = ch;
    }

    return length;
}
