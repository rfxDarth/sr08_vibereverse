.class Lcom/jaga/ibraceletplus/jyring/camera/Preview$1MyFaceDetectionListener;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/camera/Preview;->openCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyFaceDetectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 862
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1MyFaceDetectionListener;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 2

    .line 865
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1MyFaceDetectionListener;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    array-length v0, p1

    new-array v0, v0, [Landroid/hardware/Camera$Face;

    invoke-static {p2, v0}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$402(Lcom/jaga/ibraceletplus/jyring/camera/Preview;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;

    .line 866
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/camera/Preview$1MyFaceDetectionListener;->this$0:Lcom/jaga/ibraceletplus/jyring/camera/Preview;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/camera/Preview;->access$400(Lcom/jaga/ibraceletplus/jyring/camera/Preview;)[Landroid/hardware/Camera$Face;

    move-result-object p2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
