#ifndef _LCD_BUFFER_
#define _LCD_BUFFER_

#ifdef __cplusplus
extern "C" {
#endif

typedef unsigned char		u8;
typedef unsigned short		u16;
typedef unsigned int		u32;
typedef unsigned long long  u64;  // 64 bits
typedef signed char		    s8;
typedef short			    s16;
typedef int			    s32;
typedef long long		    s64;

void lcdbuf_draw_alpha_one_color_16bit(s16 x, s16 y, u16 w, u16 h, u16 front_color, const u8 *alpha_buf, u16 *background_buf, u16 background_w, u16 background_h);

#ifdef __cplusplus
}
#endif

#endif

