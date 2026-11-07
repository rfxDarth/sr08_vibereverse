/**
 ****************************************************************************************
 *
 * @file image.h
 *
 * @brief Definition of image header structure.
 *
 * Copyright (C) 2014 Dialog Semiconductor.
 * This computer program includes Confidential, Proprietary Information
 * of Dialog Semiconductor. All Rights Reserved.
 *
 * <bluetooth.support@diasemi.com> and contributors.
 *
 ****************************************************************************************
 */

#ifndef __IMAGE_H
#define __IMAGE_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#pragma pack(push) //±£´æ¶ÔÆë×´Ì¬
#pragma pack(1)   // 1 bytes¶ÔÆë
typedef struct image_header {
        uint8_t signature[2];
        uint16_t flags;
        uint32_t code_size;
        uint32_t crc;
        uint8_t version[16];
        uint32_t timestamp;
        uint32_t exec_location;
} suota_1_1_image_header_t;
#pragma pack(pop)

#define SUOTA_1_1_IMAGE_HEADER_SIGNATURE_B1     0x70
#define SUOTA_1_1_IMAGE_HEADER_SIGNATURE_B2     0x61

typedef suota_1_1_image_header_t suota_image_header_t;

#define WATCH_IMAGE_HEAD_SIZE               (64)
#define WATCH_HEAD_JY_EXTERN_SIZE           (64)

#define BMP_RES_WATCH_INSTALL_WALLPAPER_FLAG_ID                 (0xFF00) 
#define BMP_RES_WATCH_INSTALL_WALLPAPER_ZOOM_OUT_ID             (0xFF01) 

#define AES_BLOCKSIZE           16




#ifdef __cplusplus
}
#endif


#endif  /* __IMAGE_H */

