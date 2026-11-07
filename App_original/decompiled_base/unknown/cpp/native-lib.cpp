#include <jni.h>
#include <string>
#include "wallpaper_api/wallpaper_api.h"

extern "C" JNIEXPORT jstring JNICALL
Java_com_jaga_ibraceletplus_jyring_theme_dup_CustomWallpaperActivity_stringFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    std::string hello = "Hello from C++";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jint JNICALL
Java_com_jaga_ibraceletplus_jyring_theme_dup_CustomWallpaperActivity_wallpapergendataFromJNI(
        JNIEnv* env,
        jobject /* this */,
        jbyteArray bmpArray,
        jbyteArray newBmpArray,
        int watchColorType,
        int watchShapeType,
        int watchWidth,
        int watchHeight,
        int watchReviewWidth,
        int watchReviewHeight,
        int watchUnitWidth,
        int timePos,
        int timeAboveContent,
        int timeBelowCOntent,
        int fontRed,
        int fontGreen,
        int fontBlue) {

    unsigned char color_type = watchColorType;
    unsigned char shape_type = watchShapeType;
    unsigned short width = watchWidth;
    unsigned short heigh = watchHeight;
    unsigned short review_width = watchReviewWidth;
    unsigned short review_heigh = watchReviewHeight;
    unsigned short unit_width = watchUnitWidth;

    unsigned char *p_bmp_data = NULL;
    jbyte *bytes;
    bytes = env->GetByteArrayElements(bmpArray, 0);
    int chars_len = env->GetArrayLength(bmpArray);
    p_bmp_data = new unsigned char[chars_len + 1];
    memset(p_bmp_data,0,chars_len + 1);
    memcpy(p_bmp_data, bytes, chars_len);
    p_bmp_data[chars_len] = 0;
    env->ReleaseByteArrayElements(bmpArray, bytes, 0);
    unsigned int bmp_data_size = chars_len;

    unsigned char *p_handle_buf = new unsigned char[width * heigh * 4 * 8];
    unsigned int handle_buf_max_size = width * heigh * 4 * 8;
    unsigned char *p_out_buf = new unsigned char[width * heigh * 4 * 4];
    unsigned int out_buf_max_size = width * heigh * 4 * 4;

    unsigned char time_position = timePos;
    unsigned char time_top_display_content = timeAboveContent;
    unsigned char time_bottom_display_content = timeBelowCOntent;
    unsigned char font_red_value = fontRed;
    unsigned char font_green_value = fontGreen;
    unsigned char font_blue_value = fontBlue;

    int result = wallpaper_gendata(color_type, shape_type, width, heigh, review_width, review_heigh, unit_width,
                      p_bmp_data, bmp_data_size, p_handle_buf, handle_buf_max_size, p_out_buf, out_buf_max_size,
                      time_position, time_top_display_content, time_bottom_display_content, font_red_value, font_green_value, font_blue_value);

//    jbyteArray array = env->NewByteArray(width * heigh * 4 * 2);
//    jbyte *newBytes;
//    newBytes = env->GetByteArrayElements(array, 0);
//    env->SetByteArrayRegion(array, 0, width * heigh * 4 * 2, (jbyte*)(p_out_buf));
//    env->ReleaseByteArrayElements(array, newBytes, 0);

    jbyte *newBytes2;
    newBytes2 = env->GetByteArrayElements(newBmpArray, 0);
    memcpy(newBytes2, p_out_buf, result);
    env->ReleaseByteArrayElements(newBmpArray, newBytes2, 0);

//    return p_bmp_data;
    return result;
}

extern "C" JNIEXPORT jint JNICALL
Java_com_jaga_ibraceletplus_jyring_theme_dup_CustomWallpaperActivity_wallpaperGetTimePositionFromJNI(
        JNIEnv* env,
        jobject /* this */,
        jintArray joutTimeX,
        jintArray joutTimeY,
        jintArray joutTopContentX,
        jintArray joutTopContentY,
        jintArray joutBottomContentX,
        jintArray joutBottomContentY,
        jintArray joutTimeW,
        jintArray joutTimeH,
        jintArray joutTopContentW,
        jintArray joutTopContentH,
        jintArray joutBottomContentW,
        jintArray joutBottomContentH,
        int timePos,
        int watchShapeType,
        int watchWidth,
        int watchHeight,
        int uiWidth,
        int uiHeight) {

    signed short out_time_x = 0;
    signed short out_time_y = 0;
    signed short out_top_content_x = 0;
    signed short out_top_content_y = 0;
    signed short out_bottom_content_x = 0;
    signed short out_bottom_content_y = 0;

    unsigned short out_time_w = 0;
    unsigned short out_time_h = 0;
    unsigned short out_top_content_w = 0;
    unsigned short out_top_content_h = 0;
    unsigned short out_bottom_content_w = 0;
    unsigned short out_bottom_content_h = 0;

    unsigned char time_position = timePos;
    unsigned char shape_type = watchShapeType;

    unsigned short watch_width = watchWidth;
    unsigned short watch_heigh = watchHeight;
    unsigned short ui_width = uiWidth;
    unsigned short ui_heigh = uiHeight;

    wallpaper_get_time_position(&out_time_x, &out_time_y, &out_top_content_x, &out_top_content_y, &out_bottom_content_x, &out_bottom_content_y,
                                             &out_time_w, &out_time_h, &out_top_content_w, &out_top_content_h, &out_bottom_content_w, &out_bottom_content_h,
                                             time_position, shape_type, watch_width, watch_heigh, ui_width, ui_heigh);

    int *outTimeX = env->GetIntArrayElements(joutTimeX, 0);
    *outTimeX = out_time_x;
    env->ReleaseIntArrayElements(joutTimeX, outTimeX, 0);

    int *outTimeY = env->GetIntArrayElements(joutTimeY, 0);
    *outTimeY = out_time_y;
    env->ReleaseIntArrayElements(joutTimeY, outTimeY, 0);

    int *outTopContentX = env->GetIntArrayElements(joutTopContentX, 0);
    *outTopContentX = out_top_content_x;
    env->ReleaseIntArrayElements(joutTopContentX, outTopContentX, 0);

    int *outTopContentY = env->GetIntArrayElements(joutTopContentY, 0);
    *outTopContentY = out_top_content_y;
    env->ReleaseIntArrayElements(joutTopContentY, outTopContentX, 0);

    int *outBottomContentX = env->GetIntArrayElements(joutBottomContentX, 0);
    *outBottomContentX = out_bottom_content_x;
    env->ReleaseIntArrayElements(joutBottomContentX, outBottomContentX, 0);

    int *outBottomContentY = env->GetIntArrayElements(joutBottomContentY, 0);
    *outBottomContentY = out_bottom_content_y;
    env->ReleaseIntArrayElements(joutBottomContentY, outBottomContentY, 0);

    int *outTimeW = env->GetIntArrayElements(joutTimeW, 0);
    *outTimeW = out_time_w;
    env->ReleaseIntArrayElements(joutTimeW, outTimeW, 0);

    int *outTimeH = env->GetIntArrayElements(joutTimeH, 0);
    *outTimeH = out_time_h;
    env->ReleaseIntArrayElements(joutTimeH, outTimeH, 0);

    int *outTopContentW = env->GetIntArrayElements(joutTopContentW, 0);
    *outTopContentW = out_top_content_w;
    env->ReleaseIntArrayElements(joutTopContentW, outTopContentW, 0);

    int *outTopContentH = env->GetIntArrayElements(joutTopContentH, 0);
    *outTopContentH = out_top_content_h;
    env->ReleaseIntArrayElements(joutTopContentH, outTopContentH, 0);

    int *outBottomContentW = env->GetIntArrayElements(joutBottomContentW, 0);
    *outBottomContentW = out_bottom_content_w;
    env->ReleaseIntArrayElements(joutBottomContentW, outBottomContentW, 0);

    int *outBottomContentH = env->GetIntArrayElements(joutBottomContentH, 0);
    *outBottomContentH = out_bottom_content_h;
    env->ReleaseIntArrayElements(joutBottomContentH, outBottomContentH, 0);

    return 1;
}
