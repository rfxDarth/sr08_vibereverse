.class public final Lcom/king/zxing/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/king/zxing/camera/CameraManager$OnSensorListener;,
        Lcom/king/zxing/camera/CameraManager$OnTorchListener;
    }
.end annotation


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x2a3

.field private static final MAX_FRAME_WIDTH:I = 0x4b0

.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0


# instance fields
.field private autoFocusManager:Lcom/king/zxing/camera/AutoFocusManager;

.field private camera:Lcom/king/zxing/camera/open/OpenCamera;

.field private final configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectHorizontalOffset:I

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private framingRectRatio:F

.field private framingRectVerticalOffset:I

.field private initialized:Z

.field private isFullScreenScan:Z

.field private isTorch:Z

.field private onSensorListener:Lcom/king/zxing/camera/CameraManager$OnSensorListener;

.field private onTorchListener:Lcom/king/zxing/camera/CameraManager$OnTorchListener;

.field private final previewCallback:Lcom/king/zxing/camera/PreviewCallback;

.field private previewing:Z

.field private requestedCameraId:I

.field private requestedFramingRectHeight:I

.field private requestedFramingRectWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/king/zxing/camera/CameraManager;->requestedCameraId:I

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/king/zxing/camera/CameraManager;->context:Landroid/content/Context;

    .line 81
    new-instance v0, Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/king/zxing/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    .line 82
    new-instance p1, Lcom/king/zxing/camera/PreviewCallback;

    invoke-direct {p1, v0}, Lcom/king/zxing/camera/PreviewCallback;-><init>(Lcom/king/zxing/camera/CameraConfigurationManager;)V

    iput-object p1, p0, Lcom/king/zxing/camera/CameraManager;->previewCallback:Lcom/king/zxing/camera/PreviewCallback;

    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 11

    .line 379
    invoke-virtual {p0}, Lcom/king/zxing/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 384
    :cond_0
    iget-boolean v0, p0, Lcom/king/zxing/camera/CameraManager;->isFullScreenScan:Z

    if-eqz v0, :cond_1

    .line 385
    new-instance v1, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    move v7, p2

    move v8, p3

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v9}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v1

    :cond_1
    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 387
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/king/zxing/camera/CameraManager;->framingRectRatio:F

    mul-float p1, p1, p2

    float-to-int v8, p1

    sub-int p2, v3, v8

    .line 388
    div-int/lit8 p2, p2, 0x2

    iget p1, p0, Lcom/king/zxing/camera/CameraManager;->framingRectHorizontalOffset:I

    add-int v6, p2, p1

    sub-int p3, v4, v8

    .line 389
    div-int/lit8 p3, p3, 0x2

    iget p1, p0, Lcom/king/zxing/camera/CameraManager;->framingRectVerticalOffset:I

    add-int v7, p3, p1

    move v5, v4

    move v4, v3

    move-object v3, v2

    .line 391
    new-instance v2, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/4 v10, 0x0

    move v9, v8

    invoke-direct/range {v2 .. v10}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v2
.end method

.method public closeDriver()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;

    .line 154
    iput-object v0, p0, Lcom/king/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 155
    iput-object v0, p0, Lcom/king/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    :cond_0
    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/king/zxing/camera/CameraManager;->isTorch:Z

    .line 158
    iget-object v1, p0, Lcom/king/zxing/camera/CameraManager;->onTorchListener:Lcom/king/zxing/camera/CameraManager$OnTorchListener;

    if-eqz v1, :cond_1

    .line 159
    invoke-interface {v1, v0}, Lcom/king/zxing/camera/CameraManager$OnTorchListener;->onTorchChanged(Z)V

    :cond_1
    return-void
.end method

.method public getCameraResolution()Landroid/graphics/Point;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFramingRect()Landroid/graphics/Rect;
    .locals 5

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 245
    monitor-exit p0

    return-object v1

    .line 247
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 250
    monitor-exit p0

    return-object v1

    .line 253
    :cond_1
    :try_start_2
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 254
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 256
    iget-boolean v2, p0, Lcom/king/zxing/camera/CameraManager;->isFullScreenScan:Z

    if-eqz v2, :cond_2

    .line 257
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/king/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 259
    :cond_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/king/zxing/camera/CameraManager;->framingRectRatio:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 261
    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/king/zxing/camera/CameraManager;->framingRectHorizontalOffset:I

    add-int/2addr v1, v3

    sub-int/2addr v0, v2

    .line 262
    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/king/zxing/camera/CameraManager;->framingRectVerticalOffset:I

    add-int/2addr v0, v3

    .line 263
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v1, v2

    add-int/2addr v2, v0

    invoke-direct {v3, v1, v0, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/king/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 267
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 5

    monitor-enter p0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    .line 279
    invoke-virtual {p0}, Lcom/king/zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 281
    monitor-exit p0

    return-object v1

    .line 283
    :cond_0
    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 284
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 285
    iget-object v3, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/king/zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v0, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    .line 296
    :cond_1
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int v1, v1, v4

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 297
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int v1, v1, v4

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 298
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int v1, v1, v4

    iget v4, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 299
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int v1, v1, v0

    iget v0, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 302
    iput-object v2, p0, Lcom/king/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 288
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    .line 305
    :cond_3
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getOpenCamera()Lcom/king/zxing/camera/open/OpenCamera;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;

    return-object v0
.end method

.method public getScreenResolution()Landroid/graphics/Point;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public openDriver(Landroid/view/SurfaceHolder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;

    if-nez v0, :cond_1

    .line 94
    iget v0, p0, Lcom/king/zxing/camera/CameraManager;->requestedCameraId:I

    invoke-static {v0}, Lcom/king/zxing/camera/open/OpenCameraInterface;->open(I)Lcom/king/zxing/camera/open/OpenCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iput-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;

    goto :goto_0

    .line 96
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Camera.open() failed to return object from driver"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/king/zxing/camera/CameraManager;->initialized:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 102
    iput-boolean v2, p0, Lcom/king/zxing/camera/CameraManager;->initialized:Z

    .line 103
    iget-object v1, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v1, v0}, Lcom/king/zxing/camera/CameraConfigurationManager;->initFromCameraParameters(Lcom/king/zxing/camera/open/OpenCamera;)V

    .line 104
    iget v1, p0, Lcom/king/zxing/camera/CameraManager;->requestedFramingRectWidth:I

    if-lez v1, :cond_2

    iget v4, p0, Lcom/king/zxing/camera/CameraManager;->requestedFramingRectHeight:I

    if-lez v4, :cond_2

    .line 105
    invoke-virtual {p0, v1, v4}, Lcom/king/zxing/camera/CameraManager;->setManualFramingRect(II)V

    .line 106
    iput v3, p0, Lcom/king/zxing/camera/CameraManager;->requestedFramingRectWidth:I

    .line 107
    iput v3, p0, Lcom/king/zxing/camera/CameraManager;->requestedFramingRectHeight:I

    .line 111
    :cond_2
    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    .line 113
    :cond_3
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v4

    .line 115
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v5, v0, v3}, Lcom/king/zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Lcom/king/zxing/camera/open/OpenCamera;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 118
    const-string v3, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v3}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Resetting to saved camera params: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    if-eqz v4, :cond_4

    .line 122
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 123
    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 125
    :try_start_1
    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 126
    iget-object v3, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v3, v0, v2}, Lcom/king/zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Lcom/king/zxing/camera/open/OpenCamera;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 129
    :catch_1
    const-string v0, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    .line 133
    :cond_4
    :goto_2
    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public declared-synchronized requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2

    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;

    if-eqz v0, :cond_0

    .line 229
    iget-boolean v1, p0, Lcom/king/zxing/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/king/zxing/camera/CameraManager;->previewCallback:Lcom/king/zxing/camera/PreviewCallback;

    invoke-virtual {v1, p1, p2}, Lcom/king/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 231
    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object p1

    iget-object p2, p0, Lcom/king/zxing/camera/CameraManager;->previewCallback:Lcom/king/zxing/camera/PreviewCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public sensorChanged(ZF)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->onSensorListener:Lcom/king/zxing/camera/CameraManager$OnSensorListener;

    if-eqz v0, :cond_0

    .line 413
    iget-boolean v1, p0, Lcom/king/zxing/camera/CameraManager;->isTorch:Z

    invoke-interface {v0, v1, p1, p2}, Lcom/king/zxing/camera/CameraManager$OnSensorListener;->onSensorChanged(ZZF)V

    :cond_0
    return-void
.end method

.method public setFramingRectHorizontalOffset(I)V
    .locals 0

    .line 321
    iput p1, p0, Lcom/king/zxing/camera/CameraManager;->framingRectHorizontalOffset:I

    return-void
.end method

.method public setFramingRectRatio(F)V
    .locals 0

    .line 313
    iput p1, p0, Lcom/king/zxing/camera/CameraManager;->framingRectRatio:F

    return-void
.end method

.method public setFramingRectVerticalOffset(I)V
    .locals 0

    .line 317
    iput p1, p0, Lcom/king/zxing/camera/CameraManager;->framingRectVerticalOffset:I

    return-void
.end method

.method public setFullScreenScan(Z)V
    .locals 0

    .line 309
    iput-boolean p1, p0, Lcom/king/zxing/camera/CameraManager;->isFullScreenScan:Z

    return-void
.end method

.method public declared-synchronized setManualCameraId(I)V
    .locals 0

    monitor-enter p0

    .line 339
    :try_start_0
    iput p1, p0, Lcom/king/zxing/camera/CameraManager;->requestedCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setManualFramingRect(II)V
    .locals 4

    const-string v0, "Calculated manual framing rect: "

    monitor-enter p0

    .line 350
    :try_start_0
    iget-boolean v1, p0, Lcom/king/zxing/camera/CameraManager;->initialized:Z

    if-eqz v1, :cond_2

    .line 351
    iget-object v1, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v1}, Lcom/king/zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 352
    iget v2, v1, Landroid/graphics/Point;->x:I

    if-le p1, v2, :cond_0

    .line 353
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 355
    :cond_0
    iget v2, v1, Landroid/graphics/Point;->y:I

    if-le p2, v2, :cond_1

    .line 356
    iget p2, v1, Landroid/graphics/Point;->y:I

    .line 358
    :cond_1
    iget v2, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    .line 359
    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    .line 360
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr p1, v2

    add-int/2addr p2, v1

    invoke-direct {v3, v2, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/king/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 361
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/king/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 362
    iput-object p1, p0, Lcom/king/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    goto :goto_0

    .line 364
    :cond_2
    iput p1, p0, Lcom/king/zxing/camera/CameraManager;->requestedFramingRectWidth:I

    .line 365
    iput p2, p0, Lcom/king/zxing/camera/CameraManager;->requestedFramingRectHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setOnSensorListener(Lcom/king/zxing/camera/CameraManager$OnSensorListener;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/king/zxing/camera/CameraManager;->onSensorListener:Lcom/king/zxing/camera/CameraManager$OnSensorListener;

    return-void
.end method

.method public setOnTorchListener(Lcom/king/zxing/camera/CameraManager$OnTorchListener;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/king/zxing/camera/CameraManager;->onTorchListener:Lcom/king/zxing/camera/CameraManager$OnTorchListener;

    return-void
.end method

.method public declared-synchronized setTorch(Z)V
    .locals 4

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;

    if-eqz v0, :cond_3

    .line 197
    iget-object v1, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/king/zxing/camera/CameraConfigurationManager;->getTorchState(Landroid/hardware/Camera;)Z

    move-result v1

    if-eq p1, v1, :cond_3

    .line 198
    iget-object v1, p0, Lcom/king/zxing/camera/CameraManager;->autoFocusManager:Lcom/king/zxing/camera/AutoFocusManager;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 200
    invoke-virtual {v1}, Lcom/king/zxing/camera/AutoFocusManager;->stop()V

    const/4 v1, 0x0

    .line 201
    iput-object v1, p0, Lcom/king/zxing/camera/CameraManager;->autoFocusManager:Lcom/king/zxing/camera/AutoFocusManager;

    .line 203
    :cond_1
    iput-boolean p1, p0, Lcom/king/zxing/camera/CameraManager;->isTorch:Z

    .line 204
    iget-object v1, p0, Lcom/king/zxing/camera/CameraManager;->configManager:Lcom/king/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/king/zxing/camera/CameraConfigurationManager;->setTorch(Landroid/hardware/Camera;Z)V

    if-eqz v2, :cond_2

    .line 206
    new-instance v1, Lcom/king/zxing/camera/AutoFocusManager;

    iget-object v2, p0, Lcom/king/zxing/camera/CameraManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/king/zxing/camera/AutoFocusManager;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/king/zxing/camera/CameraManager;->autoFocusManager:Lcom/king/zxing/camera/AutoFocusManager;

    .line 207
    invoke-virtual {v1}, Lcom/king/zxing/camera/AutoFocusManager;->start()V

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->onTorchListener:Lcom/king/zxing/camera/CameraManager$OnTorchListener;

    if-eqz v0, :cond_3

    .line 211
    invoke-interface {v0, p1}, Lcom/king/zxing/camera/CameraManager$OnTorchListener;->onTorchChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public startPreview()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;

    if-eqz v0, :cond_0

    .line 168
    iget-boolean v1, p0, Lcom/king/zxing/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    const/4 v1, 0x1

    .line 170
    iput-boolean v1, p0, Lcom/king/zxing/camera/CameraManager;->previewing:Z

    .line 171
    new-instance v1, Lcom/king/zxing/camera/AutoFocusManager;

    iget-object v2, p0, Lcom/king/zxing/camera/CameraManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/king/zxing/camera/AutoFocusManager;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/king/zxing/camera/CameraManager;->autoFocusManager:Lcom/king/zxing/camera/AutoFocusManager;

    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->autoFocusManager:Lcom/king/zxing/camera/AutoFocusManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/king/zxing/camera/AutoFocusManager;->stop()V

    .line 181
    iput-object v1, p0, Lcom/king/zxing/camera/CameraManager;->autoFocusManager:Lcom/king/zxing/camera/AutoFocusManager;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->camera:Lcom/king/zxing/camera/open/OpenCamera;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/king/zxing/camera/CameraManager;->previewing:Z

    if-eqz v2, :cond_1

    .line 184
    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 185
    iget-object v0, p0, Lcom/king/zxing/camera/CameraManager;->previewCallback:Lcom/king/zxing/camera/PreviewCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/king/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 186
    iput-boolean v2, p0, Lcom/king/zxing/camera/CameraManager;->previewing:Z

    :cond_1
    return-void
.end method
