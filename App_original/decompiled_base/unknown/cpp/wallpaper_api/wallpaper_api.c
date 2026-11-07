#if 0
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#ifdef _MSC_VER
#include <io.h>
#else
#include <unistd.h>
#endif
#ifdef __linux__
#include <endian.h>
#endif
#include <string.h>
#include <errno.h>
#include <time.h>
#endif

#include "image.h"
#include "jy_bmp2bin.h"
#include "wallpaper_api.h"

// for 240 * 240
    /*
        left top time position: x= 22, y = 72
        left bottom time position: x= 22, y = 72 + 56
        right top time position: x= 22 + 92, y = 72
        right bottom time position: x= 22 + 92, y = 72 + 56
    */

    /*  after zoom out
        left top time position: x= 15, y = 48
        left bottom time position: x= 15, y = 48 + 36
        right top time position: x= 15 + 60, y = 48
        right bottom time position: x= 15 + 60, y = 48 + 36
    */
static void wallpaper_get_time_position_watch(signed short *p_out_x, 
    signed short                    *p_out_y,
    signed short                    *p_out_time_h,
    signed short                    *p_out_content_h,
    unsigned char                   time_position,
    unsigned char                   shape_type,
    unsigned short                  width,
    unsigned short                  heigh) {

    // rectangular
    if (shape_type == 1) {
        if (width == 240 && (heigh == 280 || heigh == 282 || heigh == 284)) {
           // rectangle
            switch (time_position) {
                case 3: // left top
                    *p_out_x = 8;
                    *p_out_y = 40;
                    break;
                case 2: // left bottom
                    *p_out_x = 8;
                    *p_out_y = 200;
                    break;
                case 1: // right top
                    *p_out_x = 132;
                    *p_out_y = 40;
                    break;
                case 0: // right bottom
                default:
                    *p_out_x = 132;
                    *p_out_y = 200;
                    break;
            }
            *p_out_time_h = 35;
            *p_out_content_h = 33;

        } else if (width == 240 && heigh == 285) {
            // rectangle
                switch (time_position) {
                    case 3: // left top
                        *p_out_x = 8;
                        *p_out_y = 40;
                        break;
                    case 2: // left bottom
                        *p_out_x = 8;
                        *p_out_y = 205;
                        break;
                    case 1: // right top
                        *p_out_x = 132;
                        *p_out_y = 40;
                        break;
                    case 0: // right bottom
                    default:
                        *p_out_x = 132;
                        *p_out_y = 205;
                        break;
                }
                *p_out_time_h = 35;
                *p_out_content_h = 33;
        } else if (width == 240 && heigh == 295) {
            // rectangle
                switch (time_position) {
                    case 3: // left top
                        *p_out_x = 8;
                        *p_out_y = 40;
                        break;
                    case 2: // left bottom
                        *p_out_x = 8;
                        *p_out_y = 210;
                        break;
                    case 1: // right top
                        *p_out_x = 132;
                        *p_out_y = 40;
                        break;
                    case 0: // right bottom
                    default:
                        *p_out_x = 132;
                        *p_out_y = 210;
                        break;
                }
                *p_out_time_h = 35;
                *p_out_content_h = 33;
        } else if ((width == 168 || width == 172) && heigh == 320) {
            // rectangle
                switch (time_position) {
                    case 3: // left top
                        *p_out_x = 8;
                        *p_out_y = 50;
                        break;
                    case 2: // left bottom
                        *p_out_x = 8;
                        *p_out_y = 230;
                        break;
                    case 1: // right top
                        *p_out_x = 52;
                        *p_out_y = 50;
                        break;
                    case 0: // right bottom
                    default:
                        *p_out_x = 52;
                        *p_out_y = 230;
                        break;
                }
                *p_out_time_h = 35;
                *p_out_content_h = 33;
        } else if (width == 320 && (heigh == 385 || heigh == 380)) {
            // rectangle
            switch (time_position) {
                case 3: // left top
                    *p_out_x = 8;
                    *p_out_y = 40;
                    break;
                case 2: // left bottom
                    *p_out_x = 8;
                    *p_out_y = 200;
                    break;
                case 1: // right top
                    *p_out_x = 132;
                    *p_out_y = 40;
                    break;
                case 0: // right bottom
                default:
                    *p_out_x = 132;
                    *p_out_y = 200;
                    break;
            }
            *p_out_time_h = 35;
            *p_out_content_h = 33;
        } else  {
            // for default 240 * 280
            // rectangle
            switch (time_position) {
                case 3: // left top
                    *p_out_x = 8;
                    *p_out_y = 40;
                    break;
                case 2: // left bottom
                    *p_out_x = 8;
                    *p_out_y = 200;
                    break;
                case 1: // right top
                    *p_out_x = 132;
                    *p_out_y = 40;
                    break;
                case 0: // right bottom
                default:
                    *p_out_x = 132;
                    *p_out_y = 200;
                    break;
            }
            *p_out_time_h = 35;
            *p_out_content_h = 33;
        }
    } else if (shape_type == 0) {
        // 0 for circle
        if (width == 240 && heigh == 240) {
            switch (time_position) {
                case 3: // left top
                    *p_out_x = 52;
                    *p_out_y = 44;
                    break;
                case 2: // left bottom
                    *p_out_x = 52;
                    *p_out_y = 44 + 116;
                    break;
                case 1: // right top
                    *p_out_x = 52 + 28;
                    *p_out_y = 44 ;
                    break;
                case 0: // right bottom
                default:
                    *p_out_x = 52 + 28;
                    *p_out_y = 44 + 116;
                    break;
            }
            *p_out_time_h = 35;
            *p_out_content_h = 33;
        } else if (width == 360 && heigh == 360) {
            switch (time_position) {
                case 3: // left top
                    *p_out_x = 78;
                    *p_out_y = 66;
                    break;
                case 2: // left bottom
                    *p_out_x = 78;
                    *p_out_y = 66 + 140;
                    break;
                case 1: // right top
                    *p_out_x = 78 + 72;
                    *p_out_y = 66 ;
                    break;
                case 0: // right bottom
                default:
                    *p_out_x = 78 + 72;
                    *p_out_y = 66 + 140;
                    break;
            }
            *p_out_time_h = 35;
            *p_out_content_h = 33;
        } else {
            switch (time_position) {
                case 3: // left top
                    *p_out_x = 52;
                    *p_out_y = 44;
                    break;
                case 2: // left bottom
                    *p_out_x = 52;
                    *p_out_y = 44 + 116;
                    break;
                case 1: // right top
                    *p_out_x = 52 + 28;
                    *p_out_y = 44 ;
                    break;
                case 0: // right bottom
                default:
                    *p_out_x = 52 + 28;
                    *p_out_y = 44 + 116;
                    break;
            }
            *p_out_time_h = 35;
            *p_out_content_h = 33;
        }
    } else {
        // do not know shape
        // default 240 * 240
        switch (time_position) {
            case 3: // left top
                *p_out_x = 52;
                *p_out_y = 44;
                break;
            case 2: // left bottom
                *p_out_x = 52;
                *p_out_y = 44 + 116;
                break;
            case 1: // right top
                *p_out_x = 52 + 28;
                *p_out_y = 44 ;
                break;
            case 0: // right bottom
            default:
                *p_out_x = 52 + 28;
                *p_out_y = 44 + 116;
                break;
        }
        *p_out_time_h = 35;
        *p_out_content_h = 33;
    }
}

void wallpaper_get_time_position(signed short *p_out_time_x, 
    signed short                    *p_out_time_y,
    signed short                    *p_out_top_content_x,
    signed short                    *p_out_top_content_y,
    signed short                    *p_out_bottom_content_x,
    signed short                    *p_out_bottom_content_y,

    unsigned short                   *p_out_time_w, 
    unsigned short                   *p_out_time_h,
    unsigned short                   *p_out_top_content_w,
    unsigned short                   *p_out_top_content_h,
    unsigned short                   *p_out_bottom_content_w,
    unsigned short                   *p_out_bottom_content_h,

    unsigned char                   time_position,
    unsigned char                   shape_type,
    unsigned short                  watch_width,
    unsigned short                  watch_heigh,
    unsigned short                  ui_width,
    unsigned short                  ui_heigh) {

    signed short                    watch_out_x; 
    signed short                    watch_out_y;
    signed short                    watch_out_time_h;
    signed short                    watch_out_content_h;

    signed short                    ui_out_x; 
    signed short                    ui_out_y;
    signed short                    ui_out_time_h;
    signed short                    ui_out_content_h;

    // add default
    watch_out_x = 52 + 28;
    watch_out_y = 44 + 116;
    watch_out_time_h = 35;
    watch_out_content_h= 33;

    
    wallpaper_get_time_position_watch(&watch_out_x, 
    &watch_out_y,
    &watch_out_time_h,
    &watch_out_content_h,
    time_position,
    shape_type,
    watch_width,
    watch_heigh);

    ui_out_x = watch_out_x * ui_width / watch_width;
    ui_out_y = watch_out_y * ui_heigh / watch_heigh;
    ui_out_time_h = watch_out_time_h * ui_heigh / watch_heigh;
    ui_out_content_h = watch_out_content_h * ui_heigh / watch_heigh;
    
    
   *p_out_time_x = ui_out_x; 
   *p_out_time_y = ui_out_y; 
   *p_out_top_content_x = ui_out_x; 
   *p_out_top_content_y = ui_out_y - ui_out_content_h; 
   *p_out_bottom_content_x = ui_out_x; 
   *p_out_bottom_content_y = ui_out_y + ui_out_time_h; 

   
   *p_out_time_w = 100 * ui_width / watch_width; 
   *p_out_time_h = (watch_out_time_h) * ui_heigh / watch_heigh;
   *p_out_top_content_w = 100 * ui_width / watch_width;
   *p_out_top_content_h = (watch_out_content_h) * ui_heigh / watch_heigh;
   *p_out_bottom_content_w = 100 * ui_width / watch_width;
   *p_out_bottom_content_h = (watch_out_content_h) * ui_heigh / watch_heigh;
}

signed int wallpaper_gendata(unsigned char color_type, unsigned char shape_type,
                    unsigned short width, unsigned short heigh,
                    unsigned short review_width, unsigned short review_heigh,
                    unsigned short unit_width, 
                    
                    unsigned char *p_bmp_data, unsigned int bmp_data_size,
                    unsigned char *p_handle_buf, unsigned int handle_buf_max_size,
                    unsigned char *p_out_buf, unsigned int out_buf_max_size, 

                    unsigned char time_position, unsigned char time_top_display_content, unsigned char time_bottom_display_content,
                    unsigned char font_red_value, unsigned char font_green_value, unsigned char font_blue_value
                    ) {

    int ret = -1;
    unsigned int                   res_size;
    signed int                     output_data_size = 0;

    
    signed short                    time_display_x;
    signed short                    time_display_y;
    signed short                    time_h;
    signed short                    content_h;
    signed short                    zoomout_time_display_x;
    signed short                    zoomout_time_display_y;
    signed short                    zoomout_time_h;
    signed short                    zoomout_content_h;
    unsigned short                  zoom_out_unit_width = review_width / (width / unit_width);
    struct BMP_WALLPAPER_INFO_T     wallpaper_info ={0};

    // add default
    time_display_x = 52 + 28;
    time_display_y = 44 + 116;
    time_h = 35;
    content_h= 33;

    wallpaper_get_time_position_watch(&time_display_x, 
    &time_display_y,
    &time_h,
    &content_h,
    time_position,
    shape_type,
    width,
    heigh);
    
    zoomout_time_display_x = time_display_x * 2 / 3;
    zoomout_time_display_y = time_display_y * 2 / 3;
    zoomout_time_h = time_h * 2 /3;
    //zoomout_content_h = content_h * 2 / 3;
    zoomout_content_h = 21;  // 

    switch (color_type) {
        case 0:
            res_size = width * heigh * 2 + review_width * review_heigh * 2;
        break;
        case 1:
            res_size = width * heigh * 2 + review_width * review_heigh * 2;
        break;
        case 2: //ab568x bmp
            res_size = width * heigh * 2 + review_width * review_heigh * 2 + JY_BITMAP_ADD_HEAD_SIZE * 2/* 2 bmp head, bit-fields press format */;
        break;
        default:
            res_size = width * heigh * 2 + review_width * review_heigh * 2;
        break;
    }
    
    wallpaper_info.time_position = time_position;
    wallpaper_info.time_top_display_content = time_top_display_content;
    wallpaper_info.time_bottom_display_content = time_bottom_display_content;
    wallpaper_info.font_color_red = font_red_value;
    wallpaper_info.font_color_green = font_green_value;
    wallpaper_info.font_color_blue = font_blue_value;

    if (GetBmpBin_color(color_type, shape_type, unit_width, width, heigh, review_width, review_heigh, &wallpaper_info, zoomout_time_display_x, zoomout_time_display_y, zoomout_time_h, zoomout_content_h,
        p_bmp_data, bmp_data_size,
        p_handle_buf + res_size, handle_buf_max_size-res_size,
        p_handle_buf, res_size) >= 0) {
#if 0
#define     WATCH_DST_FILE_BMP_PATH                 "..\\wallpaper.bmp"
#define     WATCH_REVIEW_FILE_BMP_PATH              "..\\review.bmp"

        FILE* outf = NULL;
        outf = fopen(WATCH_DST_FILE_BMP_PATH, "wb");
    	if (NULL == outf) {
            return -1;
    	}
        fwrite(p_handle_buf, 1, width * heigh * 2 + JY_BITMAP_ADD_HEAD_SIZE, outf);

        fclose(outf);

        outf = fopen(WATCH_REVIEW_FILE_BMP_PATH, "wb");
    	if (NULL == outf) {
            return -1;
    	}
        fwrite(p_handle_buf+width * heigh * 2 + JY_BITMAP_ADD_HEAD_SIZE, 1, review_width * review_heigh * 2 + JY_BITMAP_ADD_HEAD_SIZE, outf);
        fclose(outf);
#endif        
        ret = create_single_image(color_type, width, heigh, unit_width, review_width, review_heigh, zoom_out_unit_width, res_size, &wallpaper_info,
            p_handle_buf, res_size,
            p_handle_buf + res_size,  handle_buf_max_size - res_size,
            p_out_buf, out_buf_max_size
            );

        output_data_size = WATCH_IMAGE_HEAD_SIZE + WATCH_HEAD_JY_EXTERN_SIZE + res_size;
    }

    return output_data_size;
}


