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
/* SDK parser adapted to V204's fixed96-byte direct-UART console. */
#include <stdint.h>
#include <stdarg.h>
#define __STATIC_INLINE static inline
extern uint32_t format_integer_radix_zero_padded(int32_t,uint32_t,uint32_t,char *,int32_t);
extern void append_bounded_bytes_and_terminate(uint8_t **,uint8_t *,const uint8_t *,uint32_t);
extern void transmit_uart_buffer(const uint8_t *,int32_t);
static inline void _puts(char **cursor,char *base,uint32_t capacity,char *source,uint32_t count) {
    (void)capacity;
    append_bounded_bytes_and_terminate((uint8_t **)cursor,(uint8_t *)base,(const uint8_t *)source,count);
}
static uint32_t arch_strlen(const char *s)
{
    unsigned int length = 0;

    while (s[length] != '\0')
        length++;

    return length;
}


/* Capture the destination before writing bytes: it is separate from cursor storage. */
__STATIC_INLINE int _putc(char **wr_ptr, char *buf, uint32_t length, char ch)
{
    char *destination = *wr_ptr;
    if ((uint32_t)((destination - buf) + 1) >= length)
        return 0;
    ((volatile char *)destination)[0] = ch;
    ((volatile char *)destination)[1] = '\0';
    *wr_ptr = destination + 1;
    return 1;
}

static int32_t arch_vsnprintf(char *buffer, uint32_t buffer_len, const char *fmt, va_list va)
{
    char *pbuffer = buffer;
    char bf[24];
    char ch;
    char qual = '\0';

    ch = *(fmt++);
    do {
        if ((unsigned int)((pbuffer - buffer) + 1) >= buffer_len)
            break;

        if (ch != '%')
        {
            _putc(&pbuffer, buffer, buffer_len, ch);
        }
        else
        {
            char zero_pad = 0;
            char *ptr;
            unsigned int len;

            ch =* (fmt++);

            /* Zero padding requested */
            if (ch == '0')
            {
                ch =* (fmt++);
                if (ch == '\0')
                    goto end;
                if (ch >= '0' && ch <= '9')
                    zero_pad = ch - '0';
                ch =* (fmt++);
            }

            if(ch == 'l' || ch == 'h')
            {
               qual = ch;
                ch =* (fmt++);
            }

            switch (ch) {
            case 0:
                goto end;

            case 'i':
            case 'd':
            {
                long val;

                if (qual == 'h')
                {
                    val = va_arg(va, int/*short*/);
                }
                else if (qual == 'l')
                {
                    val = va_arg(va, long);
                }
                else
                {
                    val = va_arg(va, int);
                }

                len = format_integer_radix_zero_padded(val, 10, 0, bf, zero_pad);
                _puts(&pbuffer, buffer, buffer_len, bf, len);
                break;
            }
            case 'u':
            case 'x':
            case 'X':
            {
                unsigned long val;

                if(qual == 'h')
                {
                    val = va_arg(va, unsigned int/*unsigned short*/);
                }
                else if(qual == 'l')
                {
                    val = va_arg(va, unsigned long);
                }
                else
                {
                    val = va_arg(va, unsigned int);
                }

                if (ch == 'u')
                    len = format_integer_radix_zero_padded(val, 10, 0, bf, zero_pad);
                else
                    len = format_integer_radix_zero_padded(val, 16, (ch=='X'), bf, zero_pad);

                _puts(&pbuffer, buffer, buffer_len, bf, len);
                break;
            }

            case 'c' :
                ch = va_arg(va, int32_t);
                _putc(&pbuffer, buffer, buffer_len, ch);
                break;

            case 's' :
                ptr = va_arg(va, char*);
                _puts(&pbuffer, buffer, buffer_len, ptr, arch_strlen(ptr));
                break;

            default:
                _puts(&pbuffer, buffer, buffer_len, "FATAL: unsupported printf character: ", 37);
                _putc(&pbuffer, buffer, buffer_len, ch);
                _puts(&pbuffer, buffer, buffer_len, ".\n", 2);
                break;
            }
        }
        ch = *(fmt++);
    } while(ch);
end:
    return pbuffer - buffer;
}



__attribute__((used, section(".text.arch_printf"))) void arch_printf(const uint8_t *fmt, ...) {
    va_list args;
    va_start(args, fmt);
    char buffer[96];
    int32_t written = arch_vsnprintf(buffer, sizeof(buffer), (const char *)fmt, args);
    va_end(args);
    transmit_uart_buffer((const uint8_t *)buffer, written);
}
