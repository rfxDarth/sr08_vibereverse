#ifndef __JY_BMP2BIN_H__
#define __JY_BMP2BIN_H__

#ifdef __cplusplus
extern "C" {
#endif

enum {
    JY_CUSTOM_WATCH_DISPLAY_CONTENT_NONE,
    JY_CUSTOM_WATCH_DISPLAY_CONTENT_DATE,
    JY_CUSTOM_WATCH_DISPLAY_CONTENT_SLEEP,
    JY_CUSTOM_WATCH_DISPLAY_CONTENT_HEARTRATE,
    JY_CUSTOM_WATCH_DISPLAY_CONTENT_STEP,
    JY_CUSTOM_WATCH_DISPLAY_CONTENT_NUM,
};

enum {
    JY_CUSTOM_WATCH_COLOR_TYPE_16BIT,
    JY_CUSTOM_WATCH_COLOR_TYPE_16BIT_SWAP,
};

#pragma pack(push)
#pragma pack(1)
struct BMP_RES_INFO_T {
    unsigned char               total_num;
    unsigned char               type;
    unsigned short              id;         // just for debug, if some use, and use this
    signed short                x;
    signed short                y;
    unsigned short              w;
    unsigned short              h;
    unsigned short              org_w;
    unsigned short              org_h;
    unsigned int               addr;
    unsigned int               size;
};
#pragma pack(pop)

struct BMP_WALLPAPER_INFO_T {
    unsigned char               time_position;  // 0 for right bottom, 1 for right top, 2 for left bottom, 3 for left top
    unsigned char               time_top_display_content; // 0 for no content, 1 for date, 2 for sleep time, 3 for heartrate, 4 for step
    unsigned char               time_bottom_display_content; // 0 for no content, 1 for date, 2 for sleep time, 3 for heartrate, 4 for step
    unsigned char               font_color_red; 
    unsigned char               font_color_green;
    unsigned char               font_color_blue;
};

#pragma pack(push)
#pragma pack(1)
typedef struct tagBITMAPFILEHEADER {
  unsigned short  bfType;
  unsigned int    bfSize;
  unsigned short  bfReserved1;
  unsigned short  bfReserved2;
  unsigned int    bfOffBits;
} BITMAPFILEHEADER, *LPBITMAPFILEHEADER, *PBITMAPFILEHEADER;
#pragma pack(pop)

#pragma pack(push)
#pragma pack(1)
typedef struct _tagBITMAPINFOHEADER {
  unsigned int    biSize;
  unsigned int    biWidth;
  unsigned int    biHeight;
  unsigned short  biPlanes;
  unsigned short  biBitCount;
  unsigned int    biCompression;
  unsigned int    biSizeImage;
  unsigned int    biXPelsPerMeter;
  unsigned int    biYPelsPerMeter;
  unsigned int    biClrUsed;
  unsigned int    biClrImportant;
} _BITMAPINFOHEADER;
#pragma pack(pop)

typedef struct {
    unsigned int red_bit_fields;
    unsigned int green_bit_fields;
    unsigned int blue_bit_fields;
    unsigned int temp;
} JY_BITMAP_BIT_FIELDS_DATA;

#define JY_BITMAP_ADD_HEAD_SIZE     (sizeof(BITMAPFILEHEADER)+sizeof(_BITMAPINFOHEADER)+sizeof(JY_BITMAP_BIT_FIELDS_DATA))

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
    unsigned char *p_out_buf, unsigned int out_buf_max_size);


int create_single_image(unsigned char   color_type,
        unsigned short                  w,
        unsigned short                  h,
        unsigned short                  unit_width,
        unsigned short                  zoom_out_image_w,
        unsigned short                  zoom_out_image_h,
        unsigned short                  zoom_out_unit_width,
        unsigned int                   size,
        struct BMP_WALLPAPER_INFO_T     *p_wallpaper_info,
        unsigned char *p_res_data, unsigned int res_size,
        unsigned char *p_handle_buf, unsigned int handle_buf_max_size,
                        unsigned char *p_out_buf, unsigned int out_buf_max_size);
#ifdef __cplusplus
}
#endif

#endif 


