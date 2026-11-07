.class public final Lcom/google/zxing/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MAX_FRAME_WIDTH:I = 0x4b0

.field private static final MIN_FRAME_WIDTH:I = 0xf0

.field private static final TAG:Ljava/lang/String; = "CameraManager"


# instance fields
.field private autoFocusManager:Lcom/google/zxing/camera/AutoFocusManager;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Lcom/google/zxing/camera/PreviewCallback;

.field private previewing:Z

.field private requestedFramingRectHeight:I

.field private requestedFramingRectWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/zxing/camera/CameraManager;->context:Landroid/content/Context;

    .line 78
    new-instance v0, Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/google/zxing/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    .line 79
    new-instance p1, Lcom/google/zxing/camera/PreviewCallback;

    invoke-direct {p1, v0}, Lcom/google/zxing/camera/PreviewCallback;-><init>(Lcom/google/zxing/camera/CameraConfigurationManager;)V

    iput-object p1, p0, Lcom/google/zxing/camera/CameraManager;->previewCallback:Lcom/google/zxing/camera/PreviewCallback;

    return-void
.end method

.method private static findDesiredDimensionInRange(III)I
    .locals 0

    mul-int/lit8 p0, p0, 0x5

    .line 289
    div-int/lit8 p0, p0, 0x8

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 9

    .line 376
    invoke-virtual {p0}, Lcom/google/zxing/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    move-object v1, v0

    .line 381
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 382
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v0
.end method

.method public declared-synchronized closeDriver()V
    .locals 1

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 163
    iput-object v0, p0, Lcom/google/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 164
    iput-object v0, p0, Lcom/google/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getFramingRect()Landroid/graphics/Rect;
    .locals 6

    const-string v0, "Calculated framing rect: "

    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/google/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 253
    iget-object v1, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 254
    monitor-exit p0

    return-object v2

    .line 256
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v1}, Lcom/google/zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 259
    monitor-exit p0

    return-object v2

    .line 262
    :cond_1
    :try_start_2
    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v3, 0xf0

    const/16 v4, 0x4b0

    invoke-static {v2, v3, v4}, Lcom/google/zxing/camera/CameraManager;->findDesiredDimensionInRange(III)I

    move-result v2

    .line 267
    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    .line 268
    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 269
    new-instance v4, Landroid/graphics/Rect;

    add-int v5, v3, v2

    add-int/2addr v2, v1

    invoke-direct {v4, v3, v1, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/google/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 272
    sget-object v1, Lcom/google/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;
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
    .locals 8

    const-string/jumbo v0, "screenResolution: "

    const-string v1, "cameraResolution: "

    const-string v2, "Calculated framingRectInPreview rect: "

    monitor-enter p0

    .line 304
    :try_start_0
    iget-object v3, p0, Lcom/google/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v3, :cond_3

    .line 305
    invoke-virtual {p0}, Lcom/google/zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 307
    monitor-exit p0

    return-object v4

    .line 309
    :cond_0
    :try_start_1
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 310
    iget-object v3, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/google/zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v3

    .line 311
    iget-object v6, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v6}, Lcom/google/zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v6

    if-eqz v3, :cond_2

    if-nez v6, :cond_1

    goto :goto_0

    .line 316
    :cond_1
    iget v4, v5, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    mul-int v4, v4, v7

    iget v7, v6, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v7

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 317
    iget v4, v5, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    mul-int v4, v4, v7

    iget v7, v6, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v7

    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 318
    iget v4, v5, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Point;->x:I

    mul-int v4, v4, v7

    iget v7, v6, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v7

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 319
    iget v4, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Point;->x:I

    mul-int v4, v4, v7

    iget v7, v6, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v7

    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    .line 320
    iput-object v5, p0, Lcom/google/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 322
    sget-object v4, Lcom/google/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 314
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v4

    .line 328
    :cond_3
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
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

.method public declared-synchronized isOpen()Z
    .locals 1

    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;
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

.method public declared-synchronized openDriver(Landroid/view/SurfaceHolder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Resetting to saved camera params: "

    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 96
    invoke-static {}, Lcom/google/zxing/camera/OpenCameraInterface;->open()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    iput-object v1, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    goto :goto_0

    .line 98
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 104
    :cond_1
    :goto_0
    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 106
    iget-boolean p1, p0, Lcom/google/zxing/camera/CameraManager;->initialized:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 107
    iput-boolean v2, p0, Lcom/google/zxing/camera/CameraManager;->initialized:Z

    .line 108
    iget-object p1, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-virtual {p1, v1}, Lcom/google/zxing/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 109
    iget p1, p0, Lcom/google/zxing/camera/CameraManager;->requestedFramingRectWidth:I

    if-lez p1, :cond_2

    iget v4, p0, Lcom/google/zxing/camera/CameraManager;->requestedFramingRectHeight:I

    if-lez v4, :cond_2

    .line 110
    invoke-virtual {p0, p1, v4}, Lcom/google/zxing/camera/CameraManager;->setManualFramingRect(II)V

    .line 112
    iput v3, p0, Lcom/google/zxing/camera/CameraManager;->requestedFramingRectWidth:I

    .line 113
    iput v3, p0, Lcom/google/zxing/camera/CameraManager;->requestedFramingRectHeight:I

    .line 117
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 119
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v4, v1, v3}, Lcom/google/zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 127
    :catch_0
    :try_start_2
    sget-object v3, Lcom/google/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v4, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 133
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    :try_start_3
    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 137
    iget-object p1, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-virtual {p1, v1, v2}, Lcom/google/zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 141
    :catch_1
    :try_start_4
    sget-object p1, Lcom/google/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v0, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 147
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2

    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 235
    iget-boolean v1, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/google/zxing/camera/CameraManager;->previewCallback:Lcom/google/zxing/camera/PreviewCallback;

    invoke-virtual {v1, p1, p2}, Lcom/google/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 239
    iget-object p1, p0, Lcom/google/zxing/camera/CameraManager;->previewCallback:Lcom/google/zxing/camera/PreviewCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
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

.method public setCameraZoom(I)V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 426
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 430
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 431
    iget-object p1, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setManualFramingRect(II)V
    .locals 4

    const-string v0, "Calculated manual framing rect: "

    monitor-enter p0

    .line 341
    :try_start_0
    iget-boolean v1, p0, Lcom/google/zxing/camera/CameraManager;->initialized:Z

    if-eqz v1, :cond_2

    .line 342
    iget-object v1, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v1}, Lcom/google/zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 343
    iget v2, v1, Landroid/graphics/Point;->x:I

    if-le p1, v2, :cond_0

    .line 344
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 346
    :cond_0
    iget v2, v1, Landroid/graphics/Point;->y:I

    if-le p2, v2, :cond_1

    .line 347
    iget p2, v1, Landroid/graphics/Point;->y:I

    .line 349
    :cond_1
    iget v2, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    .line 350
    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    .line 351
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr p1, v2

    add-int/2addr p2, v1

    invoke-direct {v3, v2, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/google/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 353
    sget-object p1, Lcom/google/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 354
    iput-object p1, p0, Lcom/google/zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    goto :goto_0

    .line 357
    :cond_2
    iput p1, p0, Lcom/google/zxing/camera/CameraManager;->requestedFramingRectWidth:I

    .line 358
    iput p2, p0, Lcom/google/zxing/camera/CameraManager;->requestedFramingRectHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
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

.method public declared-synchronized setTorch(Z)V
    .locals 2

    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/google/zxing/camera/CameraConfigurationManager;->getTorchState(Landroid/hardware/Camera;)Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/camera/AutoFocusManager;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Lcom/google/zxing/camera/AutoFocusManager;->stop()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->configManager:Lcom/google/zxing/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, p1}, Lcom/google/zxing/camera/CameraConfigurationManager;->setTorch(Landroid/hardware/Camera;Z)V

    .line 211
    iget-object p1, p0, Lcom/google/zxing/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/camera/AutoFocusManager;

    if-eqz p1, :cond_1

    .line 212
    invoke-virtual {p1}, Lcom/google/zxing/camera/AutoFocusManager;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_1
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

.method public declared-synchronized startPreview()V
    .locals 3

    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 173
    iget-boolean v1, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z

    .line 181
    new-instance v0, Lcom/google/zxing/camera/AutoFocusManager;

    iget-object v1, p0, Lcom/google/zxing/camera/CameraManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/camera/AutoFocusManager;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v0, p0, Lcom/google/zxing/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/camera/AutoFocusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized stopPreview()V
    .locals 3

    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/camera/AutoFocusManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/google/zxing/camera/AutoFocusManager;->stop()V

    .line 191
    iput-object v1, p0, Lcom/google/zxing/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/camera/AutoFocusManager;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z

    if-eqz v2, :cond_1

    .line 194
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 195
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->previewCallback:Lcom/google/zxing/camera/PreviewCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 196
    iput-boolean v2, p0, Lcom/google/zxing/camera/CameraManager;->previewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public zoomIn()V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 414
    iget-object v1, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public zoomOut()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 397
    iget-object v1, p0, Lcom/google/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    :goto_0
    return-void
.end method
