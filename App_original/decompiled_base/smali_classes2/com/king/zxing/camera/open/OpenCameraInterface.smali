.class public final Lcom/king/zxing/camera/open/OpenCameraInterface;
.super Ljava/lang/Object;
.source "OpenCameraInterface.java"


# static fields
.field public static final NO_REQUESTED_CAMERA:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open(I)Lcom/king/zxing/camera/open/OpenCamera;
    .locals 5

    .line 48
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 50
    const-string p0, "No cameras!"

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    return-object v1

    :cond_0
    if-lt p0, v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Requested camera does not exist: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 v2, -0x1

    if-gt p0, v2, :cond_5

    const/4 p0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 61
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 62
    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 63
    invoke-static {}, Lcom/king/zxing/camera/open/CameraFacing;->values()[Lcom/king/zxing/camera/open/CameraFacing;

    move-result-object v4

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    aget-object v3, v4, v3

    sget-object v4, Lcom/king/zxing/camera/open/CameraFacing;->BACK:Lcom/king/zxing/camera/open/CameraFacing;

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ne v2, v0, :cond_4

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No camera facing "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/king/zxing/camera/open/CameraFacing;->BACK:Lcom/king/zxing/camera/open/CameraFacing;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; returning camera #0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move p0, v2

    .line 74
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Opening camera #"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    .line 75
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 76
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 77
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_6

    return-object v1

    .line 81
    :cond_6
    new-instance v1, Lcom/king/zxing/camera/open/OpenCamera;

    .line 83
    invoke-static {}, Lcom/king/zxing/camera/open/CameraFacing;->values()[Lcom/king/zxing/camera/open/CameraFacing;

    move-result-object v3

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    aget-object v3, v3, v4

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/king/zxing/camera/open/OpenCamera;-><init>(ILandroid/hardware/Camera;Lcom/king/zxing/camera/open/CameraFacing;I)V

    return-object v1
.end method
