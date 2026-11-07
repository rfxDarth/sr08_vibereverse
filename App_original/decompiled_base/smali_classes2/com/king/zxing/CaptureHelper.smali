.class public Lcom/king/zxing/CaptureHelper;
.super Ljava/lang/Object;
.source "CaptureHelper.java"

# interfaces
.implements Lcom/king/zxing/CaptureLifecycle;
.implements Lcom/king/zxing/CaptureTouchEvent;
.implements Lcom/king/zxing/CaptureManager;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final DEVIATION:I = 0x6


# instance fields
.field private activity:Landroid/app/Activity;

.field private ambientLightManager:Lcom/king/zxing/AmbientLightManager;

.field private beepManager:Lcom/king/zxing/BeepManager;

.field private brightEnoughLux:F

.field private cameraManager:Lcom/king/zxing/camera/CameraManager;

.field private captureHandler:Lcom/king/zxing/CaptureHandler;

.field private characterSet:Ljava/lang/String;

.field private decodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private decodeHints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private framingRectHorizontalOffset:I

.field private framingRectRatio:F

.field private framingRectVerticalOffset:I

.field private hasCameraFlash:Z

.field private hasSurface:Z

.field private inactivityTimer:Lcom/king/zxing/InactivityTimer;

.field private isAutoRestartPreviewAndDecode:Z

.field private isContinuousScan:Z

.field private isFullScreenScan:Z

.field private isPlayBeep:Z

.field private isReturnBitmap:Z

.field private isSupportAutoZoom:Z

.field private isSupportLuminanceInvert:Z

.field private isSupportVerticalCode:Z

.field private isSupportZoom:Z

.field private isVibrate:Z

.field private ivTorch:Landroid/view/View;

.field private oldDistance:F

.field private onCaptureCallback:Lcom/king/zxing/OnCaptureCallback;

.field private onCaptureListener:Lcom/king/zxing/OnCaptureListener;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceView:Landroid/view/SurfaceView;

.field private tooDarkLux:F

.field private viewfinderView:Lcom/king/zxing/ViewfinderView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/SurfaceView;Lcom/king/zxing/ViewfinderView;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/king/zxing/CaptureHelper;-><init>(Landroid/app/Activity;Landroid/view/SurfaceView;Lcom/king/zxing/ViewfinderView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/SurfaceView;Lcom/king/zxing/ViewfinderView;Landroid/view/View;)V
    .locals 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->isSupportZoom:Z

    .line 90
    iput-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->isSupportAutoZoom:Z

    const/4 v1, 0x0

    .line 95
    iput-boolean v1, p0, Lcom/king/zxing/CaptureHelper;->isSupportLuminanceInvert:Z

    .line 100
    iput-boolean v1, p0, Lcom/king/zxing/CaptureHelper;->isContinuousScan:Z

    .line 104
    iput-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->isAutoRestartPreviewAndDecode:Z

    const v0, 0x3f666666    # 0.9f

    .line 132
    iput v0, p0, Lcom/king/zxing/CaptureHelper;->framingRectRatio:F

    const/high16 v0, 0x42340000    # 45.0f

    .line 144
    iput v0, p0, Lcom/king/zxing/CaptureHelper;->tooDarkLux:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 148
    iput v0, p0, Lcom/king/zxing/CaptureHelper;->brightEnoughLux:F

    .line 190
    iput-object p1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    .line 191
    iput-object p2, p0, Lcom/king/zxing/CaptureHelper;->surfaceView:Landroid/view/SurfaceView;

    .line 192
    iput-object p3, p0, Lcom/king/zxing/CaptureHelper;->viewfinderView:Lcom/king/zxing/ViewfinderView;

    .line 193
    iput-object p4, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroid/view/SurfaceView;Lcom/king/zxing/ViewfinderView;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/king/zxing/CaptureHelper;-><init>(Landroidx/fragment/app/Fragment;Landroid/view/SurfaceView;Lcom/king/zxing/ViewfinderView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroid/view/SurfaceView;Lcom/king/zxing/ViewfinderView;Landroid/view/View;)V
    .locals 0

    .line 168
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/king/zxing/CaptureHelper;-><init>(Landroid/app/Activity;Landroid/view/SurfaceView;Lcom/king/zxing/ViewfinderView;Landroid/view/View;)V

    return-void
.end method

.method private calcFingerSpacing(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    .line 447
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 448
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 449
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private calcTapArea(FFFLandroid/hardware/Camera$Size;)Landroid/graphics/Rect;
    .locals 2

    const/high16 v0, 0x43480000    # 200.0f

    mul-float p3, p3, v0

    .line 462
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Float;->intValue()I

    move-result p3

    .line 463
    iget v0, p4, Landroid/hardware/Camera$Size;->width:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x44fa0000    # 2000.0f

    mul-float p1, p1, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 464
    iget p4, p4, Landroid/hardware/Camera$Size;->height:I

    int-to-float p4, p4

    div-float/2addr p2, p4

    mul-float p2, p2, v0

    sub-float/2addr p2, v1

    float-to-int p2, p2

    .line 465
    div-int/lit8 p4, p3, 0x2

    sub-int/2addr p1, p4

    const/16 v0, -0x3e8

    const/16 v1, 0x3e8

    invoke-direct {p0, p1, v0, v1}, Lcom/king/zxing/CaptureHelper;->clamp(III)I

    move-result p1

    sub-int/2addr p2, p4

    .line 466
    invoke-direct {p0, p2, v0, v1}, Lcom/king/zxing/CaptureHelper;->clamp(III)I

    move-result p2

    .line 467
    new-instance p4, Landroid/graphics/RectF;

    int-to-float v0, p1

    int-to-float v1, p2

    add-int/2addr p1, p3

    int-to-float p1, p1

    add-int/2addr p2, p3

    int-to-float p2, p2

    invoke-direct {p4, v0, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 468
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p4, Landroid/graphics/RectF;->left:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget p3, p4, Landroid/graphics/RectF;->top:F

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget v0, p4, Landroid/graphics/RectF;->right:F

    .line 469
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-direct {p1, p2, p3, v0, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method private clamp(III)I
    .locals 0

    if-le p1, p3, :cond_0

    return p3

    :cond_0
    if-ge p1, p2, :cond_1

    return p2

    :cond_1
    return p1
.end method

.method private focusOnTouch(Landroid/view/MotionEvent;Landroid/hardware/Camera;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 411
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/king/zxing/CaptureHelper;->calcTapArea(FFFLandroid/hardware/Camera$Size;)Landroid/graphics/Rect;

    move-result-object v2

    .line 415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {p0, v3, p1, v4, v1}, Lcom/king/zxing/CaptureHelper;->calcTapArea(FFFLandroid/hardware/Camera$Size;)Landroid/graphics/Rect;

    move-result-object p1

    .line 416
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 417
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v3

    const/16 v4, 0x258

    if-lez v3, :cond_0

    .line 418
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 419
    new-instance v5, Landroid/hardware/Camera$Area;

    invoke-direct {v5, v2, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 423
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v2

    if-lez v2, :cond_1

    .line 424
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 425
    new-instance v3, Landroid/hardware/Camera$Area;

    invoke-direct {v3, p1, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 428
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p1

    .line 429
    const-string v1, "macro"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 432
    new-instance v0, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    return-void
.end method

.method private handleZoom(ZLandroid/hardware/Camera;)V
    .locals 3

    .line 387
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    .line 390
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    if-eqz p1, :cond_0

    if-ge v2, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    .line 396
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 397
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void

    .line 399
    :cond_2
    const-string/jumbo p1, "zoom not supported"

    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 8

    if-eqz p1, :cond_2

    .line 337
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const-string p1, "initCamera() while already open -- late SurfaceView callback?"

    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    return-void

    .line 342
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/king/zxing/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 344
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    if-nez p1, :cond_1

    .line 345
    new-instance v0, Lcom/king/zxing/CaptureHandler;

    iget-object v1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/king/zxing/CaptureHelper;->viewfinderView:Lcom/king/zxing/ViewfinderView;

    iget-object v3, p0, Lcom/king/zxing/CaptureHelper;->onCaptureListener:Lcom/king/zxing/OnCaptureListener;

    iget-object v4, p0, Lcom/king/zxing/CaptureHelper;->decodeFormats:Ljava/util/Collection;

    iget-object v5, p0, Lcom/king/zxing/CaptureHelper;->decodeHints:Ljava/util/Map;

    iget-object v6, p0, Lcom/king/zxing/CaptureHelper;->characterSet:Ljava/lang/String;

    iget-object v7, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    invoke-direct/range {v0 .. v7}, Lcom/king/zxing/CaptureHandler;-><init>(Landroid/app/Activity;Lcom/king/zxing/ViewfinderView;Lcom/king/zxing/OnCaptureListener;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/king/zxing/camera/CameraManager;)V

    iput-object v0, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    .line 346
    iget-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->isSupportVerticalCode:Z

    invoke-virtual {v0, p1}, Lcom/king/zxing/CaptureHandler;->setSupportVerticalCode(Z)V

    .line 347
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    iget-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->isReturnBitmap:Z

    invoke-virtual {p1, v0}, Lcom/king/zxing/CaptureHandler;->setReturnBitmap(Z)V

    .line 348
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    iget-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->isSupportAutoZoom:Z

    invoke-virtual {p1, v0}, Lcom/king/zxing/CaptureHandler;->setSupportAutoZoom(Z)V

    .line 349
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    iget-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->isSupportLuminanceInvert:Z

    invoke-virtual {p1, v0}, Lcom/king/zxing/CaptureHandler;->setSupportLuminanceInvert(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 356
    const-string v0, "Unexpected error initializing camera"

    invoke-static {v0, p1}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 352
    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    .line 335
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No SurfaceHolder provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initCameraManager()V
    .locals 2

    .line 301
    new-instance v0, Lcom/king/zxing/camera/CameraManager;

    iget-object v1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/king/zxing/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    .line 302
    iget-boolean v1, p0, Lcom/king/zxing/CaptureHelper;->isFullScreenScan:Z

    invoke-virtual {v0, v1}, Lcom/king/zxing/camera/CameraManager;->setFullScreenScan(Z)V

    .line 303
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    iget v1, p0, Lcom/king/zxing/CaptureHelper;->framingRectRatio:F

    invoke-virtual {v0, v1}, Lcom/king/zxing/camera/CameraManager;->setFramingRectRatio(F)V

    .line 304
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    iget v1, p0, Lcom/king/zxing/CaptureHelper;->framingRectVerticalOffset:I

    invoke-virtual {v0, v1}, Lcom/king/zxing/camera/CameraManager;->setFramingRectVerticalOffset(I)V

    .line 305
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    iget v1, p0, Lcom/king/zxing/CaptureHelper;->framingRectHorizontalOffset:I

    invoke-virtual {v0, v1}, Lcom/king/zxing/camera/CameraManager;->setFramingRectHorizontalOffset(I)V

    .line 306
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/king/zxing/CaptureHelper;->hasCameraFlash:Z

    if-eqz v1, :cond_0

    .line 307
    new-instance v1, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda3;-><init>(Lcom/king/zxing/CaptureHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    new-instance v1, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda4;-><init>(Lcom/king/zxing/CaptureHelper;)V

    invoke-virtual {v0, v1}, Lcom/king/zxing/camera/CameraManager;->setOnSensorListener(Lcom/king/zxing/camera/CameraManager$OnSensorListener;)V

    .line 323
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    new-instance v1, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda5;-><init>(Lcom/king/zxing/CaptureHelper;)V

    invoke-virtual {v0, v1}, Lcom/king/zxing/camera/CameraManager;->setOnTorchListener(Lcom/king/zxing/camera/CameraManager$OnTorchListener;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$focusOnTouch$4(Ljava/lang/String;ZLandroid/hardware/Camera;)V
    .locals 0

    .line 433
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 434
    invoke-virtual {p1, p0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method


# virtual methods
.method public autoRestartPreviewAndDecode(Z)Lcom/king/zxing/CaptureHelper;
    .locals 0

    .line 568
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->isAutoRestartPreviewAndDecode:Z

    return-object p0
.end method

.method public brightEnoughLux(F)Lcom/king/zxing/CaptureHelper;
    .locals 1

    .line 701
    iput p1, p0, Lcom/king/zxing/CaptureHelper;->brightEnoughLux:F

    .line 702
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->ambientLightManager:Lcom/king/zxing/AmbientLightManager;

    if-eqz p1, :cond_0

    .line 703
    iget v0, p0, Lcom/king/zxing/CaptureHelper;->tooDarkLux:F

    invoke-virtual {p1, v0}, Lcom/king/zxing/AmbientLightManager;->setTooDarkLux(F)V

    :cond_0
    return-object p0
.end method

.method public characterSet(Ljava/lang/String;)Lcom/king/zxing/CaptureHelper;
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/king/zxing/CaptureHelper;->characterSet:Ljava/lang/String;

    return-object p0
.end method

.method public continuousScan(Z)Lcom/king/zxing/CaptureHelper;
    .locals 0

    .line 558
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->isContinuousScan:Z

    return-object p0
.end method

.method public decodeFormats(Ljava/util/Collection;)Lcom/king/zxing/CaptureHelper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;)",
            "Lcom/king/zxing/CaptureHelper;"
        }
    .end annotation

    .line 614
    iput-object p1, p0, Lcom/king/zxing/CaptureHelper;->decodeFormats:Ljava/util/Collection;

    return-object p0
.end method

.method public decodeHint(Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;)Lcom/king/zxing/CaptureHelper;
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->decodeHints:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 636
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/king/zxing/CaptureHelper;->decodeHints:Ljava/util/Map;

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->decodeHints:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public decodeHints(Ljava/util/Map;)Lcom/king/zxing/CaptureHelper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/king/zxing/CaptureHelper;"
        }
    .end annotation

    .line 624
    iput-object p1, p0, Lcom/king/zxing/CaptureHelper;->decodeHints:Ljava/util/Map;

    return-object p0
.end method

.method public framingRectHorizontalOffset(I)Lcom/king/zxing/CaptureHelper;
    .locals 1

    .line 794
    iput p1, p0, Lcom/king/zxing/CaptureHelper;->framingRectHorizontalOffset:I

    .line 795
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {v0, p1}, Lcom/king/zxing/camera/CameraManager;->setFramingRectHorizontalOffset(I)V

    :cond_0
    return-object p0
.end method

.method public framingRectRatio(F)Lcom/king/zxing/CaptureHelper;
    .locals 1

    .line 768
    iput p1, p0, Lcom/king/zxing/CaptureHelper;->framingRectRatio:F

    .line 769
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {v0, p1}, Lcom/king/zxing/camera/CameraManager;->setFramingRectRatio(F)V

    :cond_0
    return-object p0
.end method

.method public framingRectVerticalOffset(I)Lcom/king/zxing/CaptureHelper;
    .locals 1

    .line 781
    iput p1, p0, Lcom/king/zxing/CaptureHelper;->framingRectVerticalOffset:I

    .line 782
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {v0, p1}, Lcom/king/zxing/camera/CameraManager;->setFramingRectVerticalOffset(I)V

    :cond_0
    return-object p0
.end method

.method public frontLightMode(Lcom/king/zxing/camera/FrontLightMode;)Lcom/king/zxing/CaptureHelper;
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/king/zxing/camera/FrontLightMode;->put(Landroid/content/Context;Lcom/king/zxing/camera/FrontLightMode;)V

    .line 676
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/king/zxing/camera/FrontLightMode;->AUTO:Lcom/king/zxing/camera/FrontLightMode;

    if-eq p1, v0, :cond_0

    .line 677
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object p0
.end method

.method public fullScreenScan(Z)Lcom/king/zxing/CaptureHelper;
    .locals 1

    .line 754
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->isFullScreenScan:Z

    .line 755
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {v0, p1}, Lcom/king/zxing/camera/CameraManager;->setFullScreenScan(Z)V

    :cond_0
    return-object p0
.end method

.method public getAmbientLightManager()Lcom/king/zxing/AmbientLightManager;
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ambientLightManager:Lcom/king/zxing/AmbientLightManager;

    return-object v0
.end method

.method public getBeepManager()Lcom/king/zxing/BeepManager;
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->beepManager:Lcom/king/zxing/BeepManager;

    return-object v0
.end method

.method public getCameraManager()Lcom/king/zxing/camera/CameraManager;
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    return-object v0
.end method

.method public getInactivityTimer()Lcom/king/zxing/InactivityTimer;
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->inactivityTimer:Lcom/king/zxing/InactivityTimer;

    return-object v0
.end method

.method synthetic lambda$initCameraManager$1$com-king-zxing-CaptureHelper(Landroid/view/View;)V
    .locals 1

    .line 308
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    if-eqz p1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/king/zxing/camera/CameraManager;->setTorch(Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initCameraManager$2$com-king-zxing-CaptureHelper(ZZF)V
    .locals 0

    .line 0
    if-eqz p2, :cond_0

    .line 314
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 315
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 318
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 319
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method synthetic lambda$initCameraManager$3$com-king-zxing-CaptureHelper(Z)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-king-zxing-CaptureHelper(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->inactivityTimer:Lcom/king/zxing/InactivityTimer;

    invoke-virtual {v0}, Lcom/king/zxing/InactivityTimer;->onActivity()V

    .line 210
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->beepManager:Lcom/king/zxing/BeepManager;

    invoke-virtual {v0}, Lcom/king/zxing/BeepManager;->playBeepSoundAndVibrate()V

    .line 211
    invoke-virtual {p0, p1, p2, p3}, Lcom/king/zxing/CaptureHelper;->onResult(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V

    return-void
.end method

.method synthetic lambda$onResult$5$com-king-zxing-CaptureHelper(Ljava/lang/String;)V
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->onCaptureCallback:Lcom/king/zxing/OnCaptureCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/king/zxing/OnCaptureCallback;->onResultCallback(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 534
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 535
    const-string v1, "SCAN_RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 537
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/king/zxing/CaptureHelper;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->hasSurface:Z

    .line 201
    new-instance v0, Lcom/king/zxing/InactivityTimer;

    iget-object v1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/king/zxing/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/king/zxing/CaptureHelper;->inactivityTimer:Lcom/king/zxing/InactivityTimer;

    .line 202
    new-instance v0, Lcom/king/zxing/BeepManager;

    iget-object v1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/king/zxing/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/king/zxing/CaptureHelper;->beepManager:Lcom/king/zxing/BeepManager;

    .line 203
    new-instance v0, Lcom/king/zxing/AmbientLightManager;

    iget-object v1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/king/zxing/AmbientLightManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/king/zxing/CaptureHelper;->ambientLightManager:Lcom/king/zxing/AmbientLightManager;

    .line 205
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->hasCameraFlash:Z

    .line 206
    invoke-direct {p0}, Lcom/king/zxing/CaptureHelper;->initCameraManager()V

    .line 208
    new-instance v0, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda2;-><init>(Lcom/king/zxing/CaptureHelper;)V

    iput-object v0, p0, Lcom/king/zxing/CaptureHelper;->onCaptureListener:Lcom/king/zxing/OnCaptureListener;

    .line 214
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->beepManager:Lcom/king/zxing/BeepManager;

    iget-boolean v1, p0, Lcom/king/zxing/CaptureHelper;->isPlayBeep:Z

    invoke-virtual {v0, v1}, Lcom/king/zxing/BeepManager;->setPlayBeep(Z)V

    .line 215
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->beepManager:Lcom/king/zxing/BeepManager;

    iget-boolean v1, p0, Lcom/king/zxing/CaptureHelper;->isVibrate:Z

    invoke-virtual {v0, v1}, Lcom/king/zxing/BeepManager;->setVibrate(Z)V

    .line 218
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ambientLightManager:Lcom/king/zxing/AmbientLightManager;

    iget v1, p0, Lcom/king/zxing/CaptureHelper;->tooDarkLux:F

    invoke-virtual {v0, v1}, Lcom/king/zxing/AmbientLightManager;->setTooDarkLux(F)V

    .line 219
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ambientLightManager:Lcom/king/zxing/AmbientLightManager;

    iget v1, p0, Lcom/king/zxing/CaptureHelper;->brightEnoughLux:F

    invoke-virtual {v0, v1}, Lcom/king/zxing/AmbientLightManager;->setBrightEnoughLux(F)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->inactivityTimer:Lcom/king/zxing/InactivityTimer;

    invoke-virtual {v0}, Lcom/king/zxing/InactivityTimer;->shutdown()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/king/zxing/CaptureHandler;->quitSynchronously()V

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->inactivityTimer:Lcom/king/zxing/InactivityTimer;

    invoke-virtual {v0}, Lcom/king/zxing/InactivityTimer;->onPause()V

    .line 247
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ambientLightManager:Lcom/king/zxing/AmbientLightManager;

    invoke-virtual {v0}, Lcom/king/zxing/AmbientLightManager;->stop()V

    .line 248
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->beepManager:Lcom/king/zxing/BeepManager;

    invoke-virtual {v0}, Lcom/king/zxing/BeepManager;->close()V

    .line 249
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/CameraManager;->closeDriver()V

    .line 250
    iget-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->hasSurface:Z

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 255
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ivTorch:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onResult(Lcom/google/zxing/Result;)V
    .locals 4

    .line 517
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    .line 518
    iget-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->isContinuousScan:Z

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->onCaptureCallback:Lcom/king/zxing/OnCaptureCallback;

    if-eqz v0, :cond_0

    .line 520
    invoke-interface {v0, p1}, Lcom/king/zxing/OnCaptureCallback;->onResultCallback(Ljava/lang/String;)Z

    .line 522
    :cond_0
    iget-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->isAutoRestartPreviewAndDecode:Z

    if-eqz p1, :cond_3

    .line 523
    invoke-virtual {p0}, Lcom/king/zxing/CaptureHelper;->restartPreviewAndDecode()V

    return-void

    .line 528
    :cond_1
    iget-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->isPlayBeep:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    if-eqz v0, :cond_2

    .line 529
    new-instance v1, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/king/zxing/CaptureHelper$$ExternalSyntheticLambda1;-><init>(Lcom/king/zxing/CaptureHelper;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/king/zxing/CaptureHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->onCaptureCallback:Lcom/king/zxing/OnCaptureCallback;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/king/zxing/OnCaptureCallback;->onResultCallback(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return-void

    .line 547
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 548
    const-string v1, "SCAN_RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 550
    iget-object p1, p0, Lcom/king/zxing/CaptureHelper;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onResult(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V
    .locals 0

    .line 506
    invoke-virtual {p0, p1}, Lcom/king/zxing/CaptureHelper;->onResult(Lcom/google/zxing/Result;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->beepManager:Lcom/king/zxing/BeepManager;

    invoke-virtual {v0}, Lcom/king/zxing/BeepManager;->updatePrefs()V

    .line 229
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->inactivityTimer:Lcom/king/zxing/InactivityTimer;

    invoke-virtual {v0}, Lcom/king/zxing/InactivityTimer;->onResume()V

    .line 231
    iget-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->hasSurface:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/king/zxing/CaptureHelper;->initCamera(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ambientLightManager:Lcom/king/zxing/AmbientLightManager;

    iget-object v1, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/king/zxing/AmbientLightManager;->start(Lcom/king/zxing/camera/CameraManager;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 271
    iget-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->isSupportZoom:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 272
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/king/zxing/camera/CameraManager;->getOpenCamera()Lcom/king/zxing/camera/open/OpenCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/king/zxing/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 276
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v0, 0x5

    if-eq v2, v0, :cond_1

    goto :goto_1

    .line 279
    :cond_1
    invoke-direct {p0, p1}, Lcom/king/zxing/CaptureHelper;->calcFingerSpacing(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/king/zxing/CaptureHelper;->oldDistance:F

    goto :goto_1

    .line 282
    :cond_2
    invoke-direct {p0, p1}, Lcom/king/zxing/CaptureHelper;->calcFingerSpacing(Landroid/view/MotionEvent;)F

    move-result p1

    .line 284
    iget v2, p0, Lcom/king/zxing/CaptureHelper;->oldDistance:F

    const/high16 v4, 0x40c00000    # 6.0f

    add-float v5, v2, v4

    cmpl-float v5, p1, v5

    if-lez v5, :cond_3

    .line 285
    invoke-direct {p0, v3, v0}, Lcom/king/zxing/CaptureHelper;->handleZoom(ZLandroid/hardware/Camera;)V

    goto :goto_0

    :cond_3
    sub-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gez v2, :cond_4

    .line 287
    invoke-direct {p0, v1, v0}, Lcom/king/zxing/CaptureHelper;->handleZoom(ZLandroid/hardware/Camera;)V

    .line 289
    :cond_4
    :goto_0
    iput p1, p0, Lcom/king/zxing/CaptureHelper;->oldDistance:F

    :goto_1
    return v3

    :cond_5
    return v1
.end method

.method public playBeep(Z)Lcom/king/zxing/CaptureHelper;
    .locals 1

    .line 578
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->isPlayBeep:Z

    .line 579
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->beepManager:Lcom/king/zxing/BeepManager;

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {v0, p1}, Lcom/king/zxing/BeepManager;->setPlayBeep(Z)V

    :cond_0
    return-object p0
.end method

.method public restartPreviewAndDecode()V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0}, Lcom/king/zxing/CaptureHandler;->restartPreviewAndDecode()V

    :cond_0
    return-void
.end method

.method public returnBitmap(Z)Lcom/king/zxing/CaptureHelper;
    .locals 1

    .line 714
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->isReturnBitmap:Z

    .line 715
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    if-eqz v0, :cond_0

    .line 716
    invoke-virtual {v0, p1}, Lcom/king/zxing/CaptureHandler;->setReturnBitmap(Z)V

    :cond_0
    return-object p0
.end method

.method public setOnCaptureCallback(Lcom/king/zxing/OnCaptureCallback;)Lcom/king/zxing/CaptureHelper;
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/king/zxing/CaptureHelper;->onCaptureCallback:Lcom/king/zxing/OnCaptureCallback;

    return-object p0
.end method

.method public supportAutoZoom(Z)Lcom/king/zxing/CaptureHelper;
    .locals 1

    .line 728
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->isSupportAutoZoom:Z

    .line 729
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {v0, p1}, Lcom/king/zxing/CaptureHandler;->setSupportAutoZoom(Z)V

    :cond_0
    return-object p0
.end method

.method public supportLuminanceInvert(Z)Lcom/king/zxing/CaptureHelper;
    .locals 1

    .line 741
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->isSupportLuminanceInvert:Z

    .line 742
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {v0, p1}, Lcom/king/zxing/CaptureHandler;->setSupportLuminanceInvert(Z)V

    :cond_0
    return-object p0
.end method

.method public supportVerticalCode(Z)Lcom/king/zxing/CaptureHelper;
    .locals 1

    .line 658
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->isSupportVerticalCode:Z

    .line 659
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->captureHandler:Lcom/king/zxing/CaptureHandler;

    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {v0, p1}, Lcom/king/zxing/CaptureHandler;->setSupportVerticalCode(Z)V

    :cond_0
    return-object p0
.end method

.method public supportZoom(Z)Lcom/king/zxing/CaptureHelper;
    .locals 0

    .line 604
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->isSupportZoom:Z

    return-object p0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    if-nez p1, :cond_0

    .line 363
    const-string v0, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    .line 365
    :cond_0
    iget-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->hasSurface:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 366
    iput-boolean v0, p0, Lcom/king/zxing/CaptureHelper;->hasSurface:Z

    .line 367
    invoke-direct {p0, p1}, Lcom/king/zxing/CaptureHelper;->initCamera(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 378
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->hasSurface:Z

    return-void
.end method

.method public tooDarkLux(F)Lcom/king/zxing/CaptureHelper;
    .locals 1

    .line 688
    iput p1, p0, Lcom/king/zxing/CaptureHelper;->tooDarkLux:F

    .line 689
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->ambientLightManager:Lcom/king/zxing/AmbientLightManager;

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {v0, p1}, Lcom/king/zxing/AmbientLightManager;->setTooDarkLux(F)V

    :cond_0
    return-object p0
.end method

.method public vibrate(Z)Lcom/king/zxing/CaptureHelper;
    .locals 1

    .line 590
    iput-boolean p1, p0, Lcom/king/zxing/CaptureHelper;->isVibrate:Z

    .line 591
    iget-object v0, p0, Lcom/king/zxing/CaptureHelper;->beepManager:Lcom/king/zxing/BeepManager;

    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {v0, p1}, Lcom/king/zxing/BeepManager;->setVibrate(Z)V

    :cond_0
    return-object p0
.end method
