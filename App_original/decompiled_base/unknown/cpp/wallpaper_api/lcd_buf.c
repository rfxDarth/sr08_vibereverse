#include <stdio.h>
#include <string.h>
#include "image.h"
#include "jy_bmp2bin.h"
#include "wallpaper_api.h"

#include "lcd_buf.h"

void lcdbuf_draw_alpha_one_color_16bit(s16 x, s16 y, u16 w, u16 h, u16 front_color, const u8 *alpha_buf, u16 *background_buf, u16 background_w, u16 background_h) {
    u8  alpha_value = 0;
    u8  b_alpha_value = 0;   
    u16 back_color = 0;
    u32 i = 0;
    u32 j = 0;
    u32 front_red = ((u32)front_color & 0xf800);
    u32 front_green = ((u32)front_color & 0x07e0);
    u32 front_blue = ((u32)front_color & 0x001f);
    u32 icon_addr = 0;
    u32 background_y_addr = background_w * y + x;
    
    u32 rgb[3] = {0};
    u16 *p_back_color = NULL;
    
    for (i=0; i<h; i++) {
        for (j=0; j<w; j++) {            
            p_back_color = &background_buf[background_y_addr + j];
            alpha_value = alpha_buf[j+icon_addr];

            if (alpha_value == 255) {
                *p_back_color = front_color;
                 continue;
            } else if (alpha_value == 0) {
                continue;
            } else {
                b_alpha_value = 255 - alpha_value;
                back_color = *p_back_color;

                rgb[0] = front_red * alpha_value;
                rgb[1] = front_green * alpha_value;
                rgb[2] = front_blue * alpha_value;

                rgb[0] += ((u32)back_color & 0xf800) * b_alpha_value;
                rgb[1] += ((u32)back_color & 0x07e0) * b_alpha_value;
                rgb[2] += ((u32)back_color & 0x001f) * b_alpha_value;

            	*p_back_color =  (u16)(((rgb[0] & 0xf80000) + (rgb[1] & 0x07e000) + (rgb[2] & 0x001f00)) >> 8);
			}
        }
        icon_addr += w;
        background_y_addr += background_w;
    }
}


