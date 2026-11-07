.class public final Lcom/king/zxing/camera/open/OpenCamera;
.super Ljava/lang/Object;
.source "OpenCamera.java"


# instance fields
.field private final camera:Landroid/hardware/Camera;

.field private final facing:Lcom/king/zxing/camera/open/CameraFacing;

.field private final index:I

.field private final orientation:I


# direct methods
.method public constructor <init>(ILandroid/hardware/Camera;Lcom/king/zxing/camera/open/CameraFacing;I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/king/zxing/camera/open/OpenCamera;->index:I

    .line 35
    iput-object p2, p0, Lcom/king/zxing/camera/open/OpenCamera;->camera:Landroid/hardware/Camera;

    .line 36
    iput-object p3, p0, Lcom/king/zxing/camera/open/OpenCamera;->facing:Lcom/king/zxing/camera/open/CameraFacing;

    .line 37
    iput p4, p0, Lcom/king/zxing/camera/open/OpenCamera;->orientation:I

    return-void
.end method


# virtual methods
.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/king/zxing/camera/open/OpenCamera;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getFacing()Lcom/king/zxing/camera/open/CameraFacing;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/king/zxing/camera/open/OpenCamera;->facing:Lcom/king/zxing/camera/open/CameraFacing;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/king/zxing/camera/open/OpenCamera;->orientation:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/king/zxing/camera/open/OpenCamera;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/king/zxing/camera/open/OpenCamera;->facing:Lcom/king/zxing/camera/open/CameraFacing;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/king/zxing/camera/open/OpenCamera;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
