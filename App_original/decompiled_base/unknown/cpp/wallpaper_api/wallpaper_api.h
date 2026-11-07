#ifndef __JY_WALLPAPER_API_H__
#define __JY_WALLPAPER_API_H__

#ifdef __cplusplus
extern "C" {
#endif

/********************************
color_type                  0 for 16bit color, 1 for 16bit color but swap high and low, 2 for ap568x bmp, get from watch
shape_type                  0 for circle, 1 for rectangular, get from watch
width                       wallpaper width, get from watch
heigh                       wallpaper height, get from watch
review_width                wallpaper review width, get from watch
review_heigh                wallpaper height, get from watch
unit_width                  wallpaper cut unit width, get from watch
p_bmp_data                  bmp data buffer
bmp_data_size               bmp data size
p_handle_buf                handle data temp buf, size larger or = width * heigh * 4 * 6
handle_buf_max_size         handle data temp buf size should larger or = width * heigh * 4 * 6
p_out_buf                   output data buffer, size larger or = width * heigh * 4 * 2
out_buf_max_size            output data buffer size should larger or = width * heigh * 4 * 2

time_position               time display position, 0 for right bottom, 1 for right top, 2 for left bottom, 3 for left top
time_top_display_content    time top display content, 0 for no content, 1 for date, 2 for sleep time, 3 for heartrate, 4 for step
time_bottom_display_content time bottom display content, 0 for no content, 1 for date, 2 for sleep time, 3 for heartrate, 4 for step
font_color_red              content color red value
font_color_green            content color red value
font_color_blue             content color blue value


return output data size, data will store in p_out_buf
*********************************/

signed int wallpaper_gendata(unsigned char color_type, unsigned char shape_type,
                    unsigned short width, unsigned short heigh,
                    unsigned short review_width, unsigned short review_heigh,
                    unsigned short unit_width, 
                    
                    unsigned char *p_bmp_data, unsigned int bmp_data_size,
                    unsigned char *p_handle_buf, unsigned int handle_buf_max_size,
                    unsigned char *p_out_buf, unsigned int out_buf_max_size, 

                    unsigned char time_position, unsigned char time_top_display_content, unsigned char time_bottom_display_content,
                    unsigned char font_red_value, unsigned char font_green_value, unsigned char font_blue_value
                    );


/********************************
p_out_time_x                                out time x
p_out_time_y                                out time y
p_out_top_content_x                         out top content x
p_out_top_content_y                         out top content y
p_out_bottom_content_x                      out bottom content x
p_out_bottom_content_y                      out bottom content y

p_out_time_w                                out time w
p_out_time_h                                out time h
p_out_top_content_w                         out top content w
p_out_top_content_h                         out top content h
p_out_bottom_content_w                      out bottom content w
p_out_bottom_content_h                      out bottom content h

time_position                               time display position, 0 for right bottom, 1 for right top, 2 for left bottom, 3 for left top
shape_type                                  0 for circle, 1 for rectangular, get from watch
watch_width                                 wallpaper width, get from watch
watch_heigh                                 wallpaper height, get from watch

ui_width                                    ui width, get from app
ui_heigh                                    ui height, get from app

*********************************/

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
    unsigned short                  ui_heigh);


#ifdef __cplusplus
}
#endif

#endif


