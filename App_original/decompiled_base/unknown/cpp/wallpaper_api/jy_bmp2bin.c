/**
 ****************************************************************************************
 *
 * @file mkimage.c
 *
 * @brief Utility for creating a firmware image for DA14585.
 *
 * Copyright (C) 2014 Dialog Semiconductor.
 * This computer program includes Confidential, Proprietary Information
 * of Dialog Semiconductor. All Rights Reserved.
 *
 * <bluetooth.support@diasemi.com> and contributors.
 *
 ****************************************************************************************
 */
#include <stdlib.h>
#include <string.h>
#include "image.h"
#include "jy_bmp2bin.h"
#include "lcd_buf.h"

#define BMP_BUF_ADD_SIZE        (32)

struct jy_color_t {
	unsigned char red;
	unsigned char green;
	unsigned char blue;
    unsigned char alpha;
};

struct jy_color_s32_t {
	signed int red;
	signed int green;
	signed int blue;
    signed int alpha;
};

extern const unsigned char gray_hour_data[] ;//= {  // width = 64, height = 22
extern const unsigned char gray_date_data[] ;//= {  // width = 64, height = 21
extern const unsigned char gray_heartrate_data[] ;//= {  // width = 64, height = 21
extern const unsigned char gray_sleep_data[] ;//= {  // width = 64, height = 21
extern const unsigned char gray_step_data[] ;//= {  // width = 64, height = 21

extern const unsigned char gray_160[] ;//= {  // width = 64, height = 21
extern const unsigned char gray_200[] ;//= {  // width = 64, height = 21
extern const unsigned char gray_240[] ;//= {  // width = 64, height = 21
extern const unsigned char gray_360[] ;//= {  // width = 64, height = 21


unsigned short covert32bit_2_16bit(unsigned char *prgb_32) {
	u16 rgb_16 = 0;

	rgb_16 =  (((unsigned short)((*(prgb_32 + 0)) >> 3)) & 0x1f) << 0;
	rgb_16 |= (((unsigned short)((*(prgb_32 + 1)) >> 2)) & 0x3f) << 5;
	rgb_16 |= (((unsigned short)((*(prgb_32 + 2)) >> 3)) & 0x1f) << 11;

	return rgb_16;
}

unsigned short covert32bit_2_16bit_with_alpha(unsigned char *prgb_32) {
	u16 rgb_16 = 0;
    u8 r = *(prgb_32 + 0);
    u8 g = *(prgb_32 + 1);
    u8 b = *(prgb_32 + 2);
    u8 a = *(prgb_32 + 3);

    if (a == 255) {
        
    } else if (a == 0) {
        r = 0;
        g = 0;
        b = 0;
    } else {
        r = r * a / 255;
        g = g * a / 255;
        b = b * a / 255;
    }

    rgb_16 =  (((unsigned short)(r >> 3)) & 0x1f) << 0;
    rgb_16 |= (((unsigned short)(g >> 2)) & 0x3f) << 5;
    rgb_16 |= (((unsigned short)(b >> 3)) & 0x1f) << 11;

	return rgb_16;
}

unsigned short covert24bit_2_16bit(unsigned char *prgb_24) {
	unsigned short rgb_16 = 0;

	rgb_16 =  (((unsigned short)((*(prgb_24 + 0)) >> 3)) & 0x1f) << 11;
	rgb_16 |= (((unsigned short)((*(prgb_24 + 1)) >> 2)) & 0x3f) << 5;
	rgb_16 |= (((unsigned short)((*(prgb_24 + 2)) >> 3)) & 0x1f) << 0;

	return rgb_16;
}

unsigned short color_16_swap_rb(unsigned short *p_src_rgb_16) {
    unsigned short rgb_16;
	unsigned char r = (unsigned char)((*p_src_rgb_16 & 0xf800) >> 11);
    unsigned char g = (unsigned char)((*p_src_rgb_16 & 0x07e0) >> 5);
    unsigned char b = (unsigned char)((*p_src_rgb_16 & 0x001f) >> 0);

	rgb_16 =  (((unsigned short)b) & 0x1f) << 11;
	rgb_16 |= (((unsigned short)g) & 0x3f) << 5;
	rgb_16 |= (((unsigned short)r) & 0x1f) << 0;

	return rgb_16;
}

unsigned short lcdbuf_24bit_2_16bit(unsigned char r, unsigned char g, unsigned char b) {
	unsigned short rgb_16 = 0;

	rgb_16 =  (((unsigned short)(((b)) >> 3)) & 0x1f) << 11;
	rgb_16 |= (((unsigned short)(((g)) >> 2)) & 0x3f) << 5;
	rgb_16 |= (((unsigned short)(((r)) >> 3)) & 0x1f) << 0;

	return rgb_16;
}


void stretchImage (const struct jy_color_t * src, struct jy_color_t * dst, int srcWidth, int srcHeight, int dstWidth, int dstHeight)  
{      
    int x = 0, y = 0;  
    int ox = 0, oy = 0;  
    int tmpx = 0,tmpy = 0;  
    //int ratio = (100 * 256) / ((dstWidth / srcWidth) * 100);  
    int ratio = srcWidth * 256 / dstWidth; 
    struct jy_color_t color_s[2][2] = {0};
    struct jy_color_s32_t final_s = {0};
	int i = 0, j = 0;
    
    for (j = 0; j < dstHeight; j ++)  
    {  
        for (i = 0; i < dstWidth; i ++)  
        {  
            tmpx = i * ratio;  
            tmpy = j * ratio;  
            ox = tmpx >> 8;  
            oy = tmpy >> 8;  
            x = tmpx & 0xFF;  
            y = tmpy & 0xFF;  
            
            color_s[0][0].red = src[ oy*srcWidth + ox ].red;   
            color_s[1][0].red = src[ oy*srcWidth + ox +1 ].red;   
            color_s[0][1].red = src[ (oy+1)*srcWidth + ox ].red;   
            color_s[1][1].red = src[ (oy+1)*srcWidth + ox+1 ].red;  
            final_s.red = (0x100 - x)*(0x100 - y)*color_s[0][0].red + x*(0x100 - y)*color_s[1][0].red + (0x100-x)*y*color_s[0][1].red + x*y*color_s[1][1].red;  
            final_s.red = final_s.red >> 16;  
            if (final_s.red>255)  
                final_s.red = 255;  
            if (final_s.red<0)  
                final_s.red = 0; 

            color_s[0][0].green = src[ oy*srcWidth + ox ].green;   
            color_s[1][0].green = src[ oy*srcWidth + ox +1 ].green;   
            color_s[0][1].green = src[ (oy+1)*srcWidth + ox ].green;   
            color_s[1][1].green = src[ (oy+1)*srcWidth + ox+1 ].green;  
            final_s.green = (0x100 - x)*(0x100 - y)*color_s[0][0].green + x*(0x100 - y)*color_s[1][0].green + (0x100-x)*y*color_s[0][1].green + x*y*color_s[1][1].green;  
            final_s.green = final_s.green >> 16;  
            if (final_s.green>255)  
                final_s.green = 255;  
            if (final_s.green<0)  
                final_s.green = 0;

            color_s[0][0].blue = src[ oy*srcWidth + ox ].blue;   
            color_s[1][0].blue = src[ oy*srcWidth + ox +1 ].blue;   
            color_s[0][1].blue = src[ (oy+1)*srcWidth + ox ].blue;   
            color_s[1][1].blue = src[ (oy+1)*srcWidth + ox+1 ].blue;  
            final_s.blue = (0x100 - x)*(0x100 - y)*color_s[0][0].blue + x*(0x100 - y)*color_s[1][0].blue + (0x100-x)*y*color_s[0][1].blue + x*y*color_s[1][1].blue;  
            final_s.blue = final_s.blue >> 16;  
            if (final_s.blue>255)  
                final_s.blue = 255;  
            if (final_s.blue<0)  
                final_s.blue = 0;
            
            dst [ j*dstWidth + i].red = final_s.red; 
            dst [ j*dstWidth + i].green = final_s.green;
            dst [ j*dstWidth + i].blue = final_s.blue;
        }  
    }  
}  

#if 0
void gdispGDrawCircle(HDC m_dc, s16 x, s16 y, s16 radius) {
		s16 a, b, P;
        s16 p_x, p_y;

		// Calculate intermediates
		a = 1;
		b = radius;
		P = 4 - radius;

		// Away we go using Bresenham's circle algorithm
		// Optimized to prevent double drawing
		p_x = x; p_y = y + b; SetPixel(m_dc, p_x, p_y, 0xffffff);
		p_x = x; p_y = y - b; SetPixel(m_dc, p_x, p_y, 0xffffff);
		p_x = x + b; p_y = y; SetPixel(m_dc, p_x, p_y, 0xffffff);
		p_x = x - b; p_y = y; SetPixel(m_dc, p_x, p_y, 0xffffff);
		do {
			p_x = x + a; p_y = y + b; SetPixel(m_dc, p_x, p_y, 0xffffff);
			p_x = x + a; p_y = y - b; SetPixel(m_dc, p_x, p_y, 0xffffff);
			p_x = x + b; p_y = y + a; SetPixel(m_dc, p_x, p_y, 0xffffff);
			p_x = x - b; p_y = y + a; SetPixel(m_dc, p_x, p_y, 0xffffff);
			p_x = x - a; p_y = y + b; SetPixel(m_dc, p_x, p_y, 0xffffff);
			p_x = x - a; p_y = y - b; SetPixel(m_dc, p_x, p_y, 0xffffff);
			p_x = x + b; p_y = y - a; SetPixel(m_dc, p_x, p_y, 0xffffff);
			p_x = x - b; p_y = y - a; SetPixel(m_dc, p_x, p_y, 0xffffff);
			if (P < 0)
				P += 3 + 2*a++;
			else
				P += 5 + 2*(a++ - b--);
		} while(a < b);
		p_x = x + a; p_y = y + b; SetPixel(m_dc, p_x, p_y, 0xffffff);
		p_x = x + a; p_y = y - b; SetPixel(m_dc, p_x, p_y, 0xffffff);
		p_x = x - a; p_y = y + b; SetPixel(m_dc, p_x, p_y, 0xffffff);
		p_x = x - a; p_y = y - b; SetPixel(m_dc, p_x, p_y, 0xffffff);

	}
#endif

#if 0
void redraw_circle(int image_w, int image_h, struct jy_color_t *p_color_s) {
    int radius = image_w / 2;
    int x,y;
    //int x1,y1;
    int x2,y2;
    int cnt;

    for (y=0; y<image_h; y++) {
        for (x=0; x<image_w; x++) {
            /*
            x1 = -x;
            y1 = -y;

            x2 = x1 + radius;
            y2 = y1 + radius;*/

            x2 = radius - x;
            y2 = radius - y;

            cnt = y*image_w + x;
            if ((x2*x2 + y2*y2) > radius*radius) {
                p_color_s[cnt].red = 0;
                p_color_s[cnt].green = 0;
                p_color_s[cnt].blue = 0;
            } /*else if ((x2*x2 + y2*y2) == radius*radius) {
                p_color_s[cnt].red = p_color_s[cnt].red / 2;
                p_color_s[cnt].green = p_color_s[cnt].green / 2;
                p_color_s[cnt].blue = p_color_s[cnt].blue / 2;
            }*/
        }
    }
}
#else

void redraw_circle(int image_w, int image_h, struct jy_color_t *p_color_s) {
    int i = 0;
    const unsigned char *p_alpha = NULL;
    
    if (image_w == 360) {
        p_alpha = gray_360;
    } else if (image_w == 240) {
        p_alpha = gray_240;
    } else if (image_w == 200) {
        p_alpha = gray_200;
    } else { // default 160
        p_alpha = gray_160;
    }

    for (i=0; i<image_w*image_h; i++) {
        p_color_s[i].alpha = p_alpha[i];
    }
}
#endif

#define TIME_CONTENT_BMP_WIDTH              (64)

int GetBmpBin_color(unsigned char color_type, unsigned char shape_type, 
    unsigned short unit_width, 
    unsigned short image_w, unsigned short image_h,
    unsigned short zoom_out_image_w, unsigned short zoom_out_image_h,
    struct BMP_WALLPAPER_INFO_T *p_wallpaper_info,
    signed short zoomout_time_display_x,
    signed short zoomout_time_display_y,
    signed short zoomout_time_h,
    signed short zoomout_content_h,
    unsigned char *p_bmp_data, unsigned int bmp_data_size,
    unsigned char *p_handle_buf, unsigned int handle_buf_max_size,
    unsigned char *p_out_buf, unsigned int out_buf_max_size) {
	int i = 0;
	int j = 0;
	int k = 0;
    
	struct jy_color_t *load_color = NULL;
    
    struct jy_color_t *load_color_s2 = NULL;
    struct jy_color_t *load_color_s3 = NULL;
	unsigned short *pContent_1 = NULL;
	unsigned short *pContent_2 = NULL;
    unsigned short *pDst = NULL;
	unsigned short *pSrc = NULL;

    unsigned char *ptr1 = NULL;
    unsigned char *ptr2 = NULL;
	
	int widthcount = 0;
	int bytecount = 0;
	int biWidth = 0;//Í¼Ïñ¿í¶È  
    int biHeight = 0;//Í¼Ïñ¸ß¶È
    int radius = 0;
    int cut_pieces = image_w / unit_width;
    int zoom_out_unit_width = zoom_out_image_w / cut_pieces;
    int every_buffer_size = image_w * image_h * 4;
    BITMAPFILEHEADER bmp_file_header = {0};
    _BITMAPINFOHEADER bmp_info_header = {0};
    JY_BITMAP_BIT_FIELDS_DATA jy_bmp_bit_fileds_data = {0};
    
    BITMAPFILEHEADER review_file_header = {0};
    _BITMAPINFOHEADER review_info_header = {0};
    JY_BITMAP_BIT_FIELDS_DATA jy_review_bit_fileds_data = {0};
    
    bmp_file_header.bfType = 0x4d42;
    bmp_file_header.bfSize = JY_BITMAP_ADD_HEAD_SIZE + image_w * image_h * 2;
    bmp_file_header.bfOffBits = JY_BITMAP_ADD_HEAD_SIZE;

    bmp_info_header.biSize = sizeof(_BITMAPINFOHEADER)+sizeof(JY_BITMAP_BIT_FIELDS_DATA);
    bmp_info_header.biWidth = image_w;
    bmp_info_header.biHeight = image_h;
    bmp_info_header.biPlanes = 0x01;
    bmp_info_header.biBitCount = 0x10;
    bmp_info_header.biCompression = 0x03;
    bmp_info_header.biSizeImage = image_w * image_h * 2;
    bmp_info_header.biXPelsPerMeter = 0x0b12;
    bmp_info_header.biYPelsPerMeter = 0x0b12;
    //bmp_info_header.biClrUsed;
    //bmp_info_header.biClrImportant;

    jy_bmp_bit_fileds_data.red_bit_fields = 0x0000f800;
    jy_bmp_bit_fileds_data.green_bit_fields = 0x000007e0;
    jy_bmp_bit_fileds_data.blue_bit_fields = 0x0000001f;

    review_file_header.bfType = 0x4d42;
    review_file_header.bfSize = JY_BITMAP_ADD_HEAD_SIZE + zoom_out_image_w * zoom_out_image_h * 2;
    review_file_header.bfOffBits = JY_BITMAP_ADD_HEAD_SIZE;

    review_info_header.biSize = sizeof(_BITMAPINFOHEADER)+sizeof(JY_BITMAP_BIT_FIELDS_DATA);
    review_info_header.biWidth = zoom_out_image_w;
    review_info_header.biHeight = zoom_out_image_h;
    review_info_header.biPlanes = 0x01;
    review_info_header.biBitCount = 0x10;
    review_info_header.biCompression = 0x03;
    review_info_header.biSizeImage = zoom_out_image_w * zoom_out_image_h * 2;
    review_info_header.biXPelsPerMeter = 0x0b12;
    review_info_header.biYPelsPerMeter = 0x0b12;
    //review_info_header.biClrUsed;
    //review_info_header.biClrImportant;

    jy_review_bit_fileds_data.red_bit_fields = 0x0000f800;
    jy_review_bit_fileds_data.green_bit_fields = 0x000007e0;
    jy_review_bit_fileds_data.blue_bit_fields = 0x0000001f;

    load_color_s2 = (struct jy_color_t *)(p_handle_buf + every_buffer_size * 0);
    load_color_s3 = (struct jy_color_t *)(p_handle_buf + every_buffer_size * 1);
    pContent_1 = (unsigned short *)(p_handle_buf + every_buffer_size * 2);
    pContent_2 = (unsigned short *)(p_handle_buf + every_buffer_size * 3);

	memset(load_color_s2, 0, every_buffer_size);

	memset(load_color_s3, 0, every_buffer_size);
	
	memset(pContent_1, 0, every_buffer_size);
	
	memset(pContent_2, 0, every_buffer_size);


	biWidth = image_w;
	biHeight = image_h;
	//bytecount = biHeight * biWidth * 2;

    // bmp raw data
	load_color = (struct jy_color_t *)p_bmp_data;

#if 0
    // rotate 24bit data
    // rotate 180 degree
	for(i=0;i<biWidth * biHeight;i++) {
		load_color_s2[biWidth * biHeight - 1 - i].red = load_color[i].red;
        load_color_s2[biWidth * biHeight - 1 - i].green = load_color[i].green;
        load_color_s2[biWidth * biHeight - 1 - i].blue= load_color[i].blue;
	}

	// mirror
	for (i=0; i<biHeight; i++) {
		for (k=0;k<biWidth;k++) {
            load_color_s3[biWidth * i + biWidth - 1 - k].red = load_color_s2[biWidth * i + k].red;
            load_color_s3[biWidth * i + biWidth - 1 - k].green = load_color_s2[biWidth * i + k].green;
            load_color_s3[biWidth * i + biWidth - 1 - k].blue = load_color_s2[biWidth * i + k].blue;
		}
	}
#endif

    
	for(i=0;i<biWidth * biHeight;i++) {
		load_color_s3[i].red = load_color[i].red;
        load_color_s3[i].green = load_color[i].green;
        load_color_s3[i].blue= load_color[i].blue;
	}

    // for review data to load_color_s2
    stretchImage (load_color_s3, load_color_s2, image_w, image_h, zoom_out_image_w, zoom_out_image_h);

    // crop to circle, 0 for circle, 1 for Rectangle
    if (shape_type == 0) {
        redraw_circle(image_w, image_h, load_color_s3);
        redraw_circle(zoom_out_image_w, zoom_out_image_h, load_color_s2);
        //redraw_circle(zoom_out_image_w, zoom_out_image_h, load_color_s2);
    } else {
        // no handle in Rectangle
    }

    // gen 16 bit data
    // 24 bit data to 16 bit data
    if (color_type == 0
    || color_type == 1
	|| color_type == 2) {
    	for (i=0; i<biHeight; i++) {
    		for (j=0; j<biWidth; j++) {
                if (shape_type == 0) {
    			    pContent_2[i * biWidth + j] = covert32bit_2_16bit_with_alpha((unsigned char *)&load_color_s3[i*biWidth + j]);
                } else {
                    pContent_2[i * biWidth + j] = covert32bit_2_16bit((unsigned char *)&load_color_s3[i*biWidth + j]);
                }
    		}
    	}
    	        
        // devide bmp data
        for (j=0; j<biWidth/unit_width; j++) {
            pDst = pContent_1 + (unit_width * biHeight) * j;
            pSrc = pContent_2 + unit_width * j;
            for (i=0; i<biHeight; i++) {
        		for (k=0;k<unit_width;k++) {
        			pDst[unit_width * i + k] = pSrc[biWidth * i + k];
        		}
        	}
        }
    } else {
        // 24bit data, extend for the future, use in amoled 
    }

    switch (color_type) {
        case 0:
            for (i=0; i<biHeight; i++) {
                for (j=0; j<biWidth; j++) {
                    pContent_2[i * biWidth + j] = pContent_1[i * biWidth + j];
                }
            }
            memcpy(p_out_buf, pContent_2, biWidth * biHeight * 2);
        break;
        case 1:
            for (i=0; i<biHeight; i++) {
                for (j=0; j<biWidth; j++) {
                    ptr1 = (unsigned char *)&pContent_1[i * biWidth + j];
                    ptr2 = (unsigned char *)&pContent_2[i * biWidth + j];

                    ptr2[0] = (((ptr1[0] & 0x1f) << 3) & 0xf8) + (ptr1[1] & 0x7);
                    ptr2[1] = (ptr1[0] & 0xe0) + ((ptr1[1] >> 3) & 0x1f);
                }
            }
            memcpy(p_out_buf, pContent_2, biWidth * biHeight * 2);
        break;
        case 2: //ab568x bmp
			// rotate 180 degree
			for(i=0;i<biWidth * biHeight;i++) {
				pContent_2[biWidth * biHeight - 1 - i] = pContent_1[i];
			}
		
			// mirror
			for (i=0; i<biHeight; i++) {
				for (k=0;k<biWidth;k++) {
					pContent_1[biWidth * i + biWidth - 1 - k] = pContent_2[biWidth * i + k];
				}
			}

            for(i=0;i<biWidth * biHeight;i++) {
    			pContent_2[i] = color_16_swap_rb(&pContent_1[i]);
    		}
            memcpy(p_out_buf, &bmp_file_header, sizeof(BITMAPFILEHEADER));
            memcpy(p_out_buf+sizeof(BITMAPFILEHEADER), &bmp_info_header, sizeof(_BITMAPINFOHEADER));
            memcpy(p_out_buf+sizeof(BITMAPFILEHEADER)+sizeof(_BITMAPINFOHEADER), &jy_bmp_bit_fileds_data, sizeof(JY_BITMAP_BIT_FIELDS_DATA));
            memcpy(p_out_buf+JY_BITMAP_ADD_HEAD_SIZE, pContent_2, biWidth * biHeight * 2);
        break;
        default:
            for (i=0; i<biHeight; i++) {
                for (j=0; j<biWidth; j++) {
                    pContent_2[i * biWidth + j] = pContent_1[i * biWidth + j];
                }
            }
            memcpy(p_out_buf, pContent_2, biWidth * biHeight * 2);
        break;
    }

    // zoom out data handle
    // gen 16 bit data
    if (color_type == 0
        || color_type == 1
        || color_type == 2) {
        // 24 bit data to 16 bit data
    	for (i=0; i<zoom_out_image_h; i++) {
    		for (j=0; j<zoom_out_image_w; j++) {
                if (shape_type == 0) {
    			    pContent_2[i * zoom_out_image_w + j] = covert32bit_2_16bit_with_alpha((unsigned char *)&load_color_s2[i*zoom_out_image_w + j]);
                } else {
                    pContent_2[i * zoom_out_image_w + j] = covert32bit_2_16bit((unsigned char *)&load_color_s2[i*zoom_out_image_w + j]);
                }
    		}
    	}

        lcdbuf_draw_alpha_one_color_16bit(zoomout_time_display_x, zoomout_time_display_y, TIME_CONTENT_BMP_WIDTH, zoomout_time_h, lcdbuf_24bit_2_16bit(p_wallpaper_info->font_color_red, p_wallpaper_info->font_color_green, p_wallpaper_info->font_color_blue), gray_hour_data, pContent_2, zoom_out_image_w, zoom_out_image_h);
        switch (p_wallpaper_info->time_top_display_content) {
            case JY_CUSTOM_WATCH_DISPLAY_CONTENT_DATE:
                lcdbuf_draw_alpha_one_color_16bit(zoomout_time_display_x, zoomout_time_display_y - zoomout_content_h, TIME_CONTENT_BMP_WIDTH, zoomout_content_h, lcdbuf_24bit_2_16bit(p_wallpaper_info->font_color_red, p_wallpaper_info->font_color_green, p_wallpaper_info->font_color_blue), gray_date_data, pContent_2, zoom_out_image_w, zoom_out_image_h);
                break;
            case JY_CUSTOM_WATCH_DISPLAY_CONTENT_SLEEP:
                lcdbuf_draw_alpha_one_color_16bit(zoomout_time_display_x, zoomout_time_display_y - zoomout_content_h, TIME_CONTENT_BMP_WIDTH, zoomout_content_h, lcdbuf_24bit_2_16bit(p_wallpaper_info->font_color_red, p_wallpaper_info->font_color_green, p_wallpaper_info->font_color_blue), gray_sleep_data, pContent_2, zoom_out_image_w, zoom_out_image_h);
                break;
            case JY_CUSTOM_WATCH_DISPLAY_CONTENT_HEARTRATE:
                lcdbuf_draw_alpha_one_color_16bit(zoomout_time_display_x, zoomout_time_display_y - zoomout_content_h, TIME_CONTENT_BMP_WIDTH, zoomout_content_h, lcdbuf_24bit_2_16bit(p_wallpaper_info->font_color_red, p_wallpaper_info->font_color_green, p_wallpaper_info->font_color_blue), gray_heartrate_data, pContent_2, zoom_out_image_w, zoom_out_image_h);
                break;
            case JY_CUSTOM_WATCH_DISPLAY_CONTENT_STEP:
                lcdbuf_draw_alpha_one_color_16bit(zoomout_time_display_x, zoomout_time_display_y - zoomout_content_h, TIME_CONTENT_BMP_WIDTH, zoomout_content_h, lcdbuf_24bit_2_16bit(p_wallpaper_info->font_color_red, p_wallpaper_info->font_color_green, p_wallpaper_info->font_color_blue), gray_step_data, pContent_2, zoom_out_image_w, zoom_out_image_h);
                break;
            default:
                break;
        }
    
        switch (p_wallpaper_info->time_bottom_display_content) {
            case JY_CUSTOM_WATCH_DISPLAY_CONTENT_DATE:
                lcdbuf_draw_alpha_one_color_16bit(zoomout_time_display_x, zoomout_time_display_y + zoomout_time_h, TIME_CONTENT_BMP_WIDTH, zoomout_content_h, lcdbuf_24bit_2_16bit(p_wallpaper_info->font_color_red, p_wallpaper_info->font_color_green, p_wallpaper_info->font_color_blue), gray_date_data, pContent_2, zoom_out_image_w, zoom_out_image_h);
                break;
            case JY_CUSTOM_WATCH_DISPLAY_CONTENT_SLEEP:
                lcdbuf_draw_alpha_one_color_16bit(zoomout_time_display_x, zoomout_time_display_y + zoomout_time_h, TIME_CONTENT_BMP_WIDTH, zoomout_content_h, lcdbuf_24bit_2_16bit(p_wallpaper_info->font_color_red, p_wallpaper_info->font_color_green, p_wallpaper_info->font_color_blue), gray_sleep_data, pContent_2, zoom_out_image_w, zoom_out_image_h);
                break;
            case JY_CUSTOM_WATCH_DISPLAY_CONTENT_HEARTRATE:
                lcdbuf_draw_alpha_one_color_16bit(zoomout_time_display_x, zoomout_time_display_y + zoomout_time_h, TIME_CONTENT_BMP_WIDTH, zoomout_content_h, lcdbuf_24bit_2_16bit(p_wallpaper_info->font_color_red, p_wallpaper_info->font_color_green, p_wallpaper_info->font_color_blue), gray_heartrate_data, pContent_2, zoom_out_image_w, zoom_out_image_h);
                break;
            case JY_CUSTOM_WATCH_DISPLAY_CONTENT_STEP:                    
                lcdbuf_draw_alpha_one_color_16bit(zoomout_time_display_x, zoomout_time_display_y + zoomout_time_h, TIME_CONTENT_BMP_WIDTH, zoomout_content_h, lcdbuf_24bit_2_16bit(p_wallpaper_info->font_color_red, p_wallpaper_info->font_color_green, p_wallpaper_info->font_color_blue), gray_step_data, pContent_2, zoom_out_image_w, zoom_out_image_h);
                break;
            default:
                break;
        }

        // devide bmp data
        for (j=0; j<zoom_out_image_w/zoom_out_unit_width; j++) {
            pDst = pContent_1 + (zoom_out_unit_width * zoom_out_image_h) * j;
            pSrc = pContent_2 + zoom_out_unit_width * j;
            for (i=0; i<zoom_out_image_h; i++) {
        		for (k=0;k<zoom_out_unit_width;k++) {
        			pDst[zoom_out_unit_width * i + k] = pSrc[zoom_out_image_w * i + k];
        		}
        	}
        }
        
    } else {
        // 24bit data, extend for the future, use in amoled 
    }

    
    switch (color_type) {
        case 0:
            for (i=0; i<zoom_out_image_h; i++) {
                for (j=0; j<zoom_out_image_w; j++) {
                    pContent_2[i * zoom_out_image_w + j] = pContent_1[i * zoom_out_image_w + j];
                }
            }
            memcpy(p_out_buf + biWidth * biHeight * 2, pContent_2, zoom_out_image_w * zoom_out_image_h * 2);
        break;
        case 1:
            for (i=0; i<zoom_out_image_h; i++) {
                for (j=0; j<zoom_out_image_w; j++) {
                    ptr1 = (unsigned char *)&pContent_1[i * zoom_out_image_w + j];
                    ptr2 = (unsigned char *)&pContent_2[i * zoom_out_image_w + j];

                    ptr2[0] = (((ptr1[0] & 0x1f) << 3) & 0xf8) + (ptr1[1] & 0x7);
                    ptr2[1] = (ptr1[0] & 0xe0) + ((ptr1[1] >> 3) & 0x1f);
                }
            }
            memcpy(p_out_buf + biWidth * biHeight * 2, pContent_2, zoom_out_image_w * zoom_out_image_h * 2);
        break;
        case 2: //ab568x bmp
            // rotate 180 degree
			for(i=0;i<zoom_out_image_w * zoom_out_image_h;i++) {
				pContent_2[zoom_out_image_w * zoom_out_image_h - 1 - i] = pContent_1[i];
			}
		
			// mirror
			for (i=0; i<zoom_out_image_h; i++) {
				for (k=0;k<zoom_out_image_w;k++) {
					pContent_1[zoom_out_image_w * i + zoom_out_image_w - 1 - k] = pContent_2[zoom_out_image_w * i + k];
				}
			}

            for(i=0;i<zoom_out_image_w * zoom_out_image_h;i++) {
    			pContent_2[i] = color_16_swap_rb(&pContent_1[i]);
    		}
                        
            memcpy(p_out_buf+ JY_BITMAP_ADD_HEAD_SIZE 
            + biWidth * biHeight * 2, &review_file_header, sizeof(BITMAPFILEHEADER));
            memcpy(p_out_buf+ JY_BITMAP_ADD_HEAD_SIZE 
            + biWidth * biHeight * 2+sizeof(BITMAPFILEHEADER), &review_info_header, sizeof(_BITMAPINFOHEADER));
            memcpy(p_out_buf+ JY_BITMAP_ADD_HEAD_SIZE 
            + biWidth * biHeight * 2+sizeof(BITMAPFILEHEADER)+sizeof(_BITMAPINFOHEADER), &jy_review_bit_fileds_data, sizeof(JY_BITMAP_BIT_FIELDS_DATA));

            memcpy(p_out_buf + JY_BITMAP_ADD_HEAD_SIZE 
            + biWidth * biHeight * 2 
            + JY_BITMAP_ADD_HEAD_SIZE, 
            pContent_2, 
            zoom_out_image_w * zoom_out_image_h * 2);
        break;
        default:
            for (i=0; i<zoom_out_image_h; i++) {
                for (j=0; j<zoom_out_image_w; j++) {
                    pContent_2[i * zoom_out_image_w + j] = pContent_1[i * zoom_out_image_w + j];
                }
            }
            memcpy(p_out_buf + biWidth * biHeight * 2, pContent_2, zoom_out_image_w * zoom_out_image_h * 2);
        break;
    }
    
    

	return 0;
}


