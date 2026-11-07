.class final Lcom/king/zxing/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# instance fields
.field private final cameraManager:Lcom/king/zxing/camera/CameraManager;

.field private final context:Landroid/content/Context;

.field private final handler:Lcom/king/zxing/CaptureHandler;

.field private lastZoomTime:J

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private running:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/king/zxing/camera/CameraManager;Lcom/king/zxing/CaptureHandler;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/king/zxing/camera/CameraManager;",
            "Lcom/king/zxing/CaptureHandler;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/king/zxing/DecodeHandler;->running:Z

    .line 56
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/king/zxing/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 57
    invoke-virtual {v0, p4}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 58
    iput-object p1, p0, Lcom/king/zxing/DecodeHandler;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/king/zxing/DecodeHandler;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    .line 60
    iput-object p3, p0, Lcom/king/zxing/DecodeHandler;->handler:Lcom/king/zxing/CaptureHandler;

    return-void
.end method

.method private buildPlanarYUVLuminanceSource([BIIZ)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 5

    if-eqz p4, :cond_2

    .line 196
    array-length p4, p1

    new-array p4, p4, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_0

    mul-int v3, v2, p3

    add-int/2addr v3, p3

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    mul-int v4, v1, p2

    add-int/2addr v4, v2

    .line 199
    aget-byte v4, p1, v4

    aput-byte v4, p4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/king/zxing/DecodeHandler;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    invoke-virtual {p1, p4, p3, p2}, Lcom/king/zxing/camera/CameraManager;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object p1

    return-object p1

    .line 206
    :cond_2
    iget-object p4, p0, Lcom/king/zxing/DecodeHandler;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    invoke-virtual {p4, p1, p2, p3}, Lcom/king/zxing/camera/CameraManager;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object p1

    return-object p1
.end method

.method private static bundleThumbnail(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroid/os/Bundle;)V
    .locals 6

    .line 212
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->renderThumbnail()[I

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailWidth()I

    move-result v2

    .line 214
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailHeight()I

    move-result v4

    const/4 v1, 0x0

    .line 215
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v3, v2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 217
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x32

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 218
    const-string v0, "barcode_bitmap"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    int-to-float v0, v2

    .line 219
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    const-string p0, "barcode_scaled_factor"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method private decode([BIIZZ)V
    .locals 9

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/king/zxing/DecodeHandler;->buildPlanarYUVLuminanceSource([BIIZ)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    .line 103
    :try_start_0
    new-instance v6, Lcom/google/zxing/BinaryBitmap;

    new-instance v7, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v7, v2}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v6, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 104
    iget-object v7, p0, Lcom/king/zxing/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v7, v6}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    nop

    const/4 v6, 0x1

    :goto_0
    if-eqz v6, :cond_0

    .line 110
    iget-object v7, p0, Lcom/king/zxing/DecodeHandler;->handler:Lcom/king/zxing/CaptureHandler;

    invoke-virtual {v7}, Lcom/king/zxing/CaptureHandler;->isSupportLuminanceInvert()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 112
    :try_start_1
    new-instance v6, Lcom/google/zxing/BinaryBitmap;

    new-instance v7, Lcom/google/zxing/common/HybridBinarizer;

    invoke-virtual {v2}, Lcom/google/zxing/PlanarYUVLuminanceSource;->invert()Lcom/google/zxing/LuminanceSource;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v6, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 113
    iget-object v7, p0, Lcom/king/zxing/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v7, v6}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v6, 0x0

    goto :goto_1

    :catch_1
    nop

    const/4 v6, 0x1

    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 122
    :try_start_2
    new-instance v6, Lcom/google/zxing/BinaryBitmap;

    new-instance v7, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    invoke-direct {v7, v2}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v6, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 123
    iget-object v7, p0, Lcom/king/zxing/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v7, v6}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v6, 0x0

    goto :goto_2

    :catch_2
    nop

    const/4 v6, 0x1

    :cond_1
    :goto_2
    if-eqz v6, :cond_3

    if-eqz p5, :cond_3

    xor-int/2addr p4, v4

    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/king/zxing/DecodeHandler;->buildPlanarYUVLuminanceSource([BIIZ)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 134
    :try_start_3
    new-instance p3, Lcom/google/zxing/BinaryBitmap;

    new-instance p4, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {p4, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p3, p4}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 135
    iget-object p4, p0, Lcom/king/zxing/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p4, p3}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v2, p1

    move-object v5, p3

    goto :goto_3

    :catch_3
    :cond_2
    move-object v2, p1

    .line 143
    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/king/zxing/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    :cond_4
    if-eqz v5, :cond_8

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p5, "Found barcode in "

    invoke-direct {p1, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr p3, v0

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " ms"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v5}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object p1

    .line 152
    iget-object p3, p0, Lcom/king/zxing/DecodeHandler;->handler:Lcom/king/zxing/CaptureHandler;

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/king/zxing/CaptureHandler;->isSupportAutoZoom()Z

    move-result p3

    if-eqz p3, :cond_6

    sget-object p3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-ne p1, p3, :cond_6

    .line 154
    invoke-virtual {v5}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object p1

    .line 155
    array-length p3, p1

    const/4 p4, 0x3

    if-lt p3, p4, :cond_6

    .line 156
    aget-object p3, p1, v3

    aget-object p4, p1, v4

    invoke-static {p3, p4}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result p3

    .line 157
    aget-object p4, p1, v4

    const/4 p5, 0x2

    aget-object v0, p1, p5

    invoke-static {p4, v0}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result p4

    .line 158
    aget-object v0, p1, v3

    aget-object p1, p1, p5

    invoke-static {v0, p1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result p1

    .line 159
    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/king/zxing/DecodeHandler;->handleAutoZoom(II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 161
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 162
    sget p2, Lcom/king/zxing/R$id;->decode_succeeded:I

    iput p2, p1, Landroid/os/Message;->what:I

    .line 163
    iput-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    iget-object p2, p0, Lcom/king/zxing/DecodeHandler;->handler:Lcom/king/zxing/CaptureHandler;

    invoke-virtual {p2}, Lcom/king/zxing/CaptureHandler;->isReturnBitmap()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 165
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 166
    invoke-static {v2, p2}, Lcom/king/zxing/DecodeHandler;->bundleThumbnail(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 169
    :cond_5
    iget-object p2, p0, Lcom/king/zxing/DecodeHandler;->handler:Lcom/king/zxing/CaptureHandler;

    const-wide/16 p3, 0x12c

    invoke-virtual {p2, p1, p3, p4}, Lcom/king/zxing/CaptureHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 176
    :cond_6
    iget-object p1, p0, Lcom/king/zxing/DecodeHandler;->handler:Lcom/king/zxing/CaptureHandler;

    if-eqz p1, :cond_9

    .line 177
    sget p2, Lcom/king/zxing/R$id;->decode_succeeded:I

    invoke-static {p1, p2, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 178
    iget-object p2, p0, Lcom/king/zxing/DecodeHandler;->handler:Lcom/king/zxing/CaptureHandler;

    invoke-virtual {p2}, Lcom/king/zxing/CaptureHandler;->isReturnBitmap()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 179
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 180
    invoke-static {v2, p2}, Lcom/king/zxing/DecodeHandler;->bundleThumbnail(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 183
    :cond_7
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    .line 186
    :cond_8
    iget-object p1, p0, Lcom/king/zxing/DecodeHandler;->handler:Lcom/king/zxing/CaptureHandler;

    if-eqz p1, :cond_9

    .line 187
    sget p2, Lcom/king/zxing/R$id;->decode_failed:I

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    :goto_4
    return-void
.end method

.method private handleAutoZoom(II)Z
    .locals 6

    .line 223
    iget-wide v0, p0, Lcom/king/zxing/DecodeHandler;->lastZoomTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    sub-long/2addr v2, v4

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    return v4

    .line 227
    :cond_0
    div-int/lit8 p2, p2, 0x5

    if-ge p1, p2, :cond_2

    .line 229
    iget-object p1, p0, Lcom/king/zxing/DecodeHandler;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    invoke-virtual {p1}, Lcom/king/zxing/camera/CameraManager;->getOpenCamera()Lcom/king/zxing/camera/open/OpenCamera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 231
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    .line 232
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    .line 234
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    .line 235
    div-int/lit8 v2, v0, 0x5

    add-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 236
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/king/zxing/DecodeHandler;->lastZoomTime:J

    return v4

    .line 240
    :cond_1
    const-string p1, "Zoom not supported"

    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private isScreenPortrait()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/king/zxing/DecodeHandler;->context:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 80
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 81
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 83
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    if-eqz p1, :cond_2

    .line 65
    iget-boolean v0, p0, Lcom/king/zxing/DecodeHandler;->running:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/king/zxing/R$id;->decode:I

    if-ne v0, v1, :cond_1

    .line 69
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    move-object v2, v0

    check-cast v2, [B

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0}, Lcom/king/zxing/DecodeHandler;->isScreenPortrait()Z

    move-result v5

    iget-object p1, p0, Lcom/king/zxing/DecodeHandler;->handler:Lcom/king/zxing/CaptureHandler;

    invoke-virtual {p1}, Lcom/king/zxing/CaptureHandler;->isSupportVerticalCode()Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/king/zxing/DecodeHandler;->decode([BIIZZ)V

    return-void

    :cond_1
    move-object v1, p0

    .line 71
    iget p1, p1, Landroid/os/Message;->what:I

    sget v0, Lcom/king/zxing/R$id;->quit:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, v1, Lcom/king/zxing/DecodeHandler;->running:Z

    .line 73
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    return-void

    :cond_2
    :goto_0
    move-object v1, p0

    :cond_3
    return-void
.end method
